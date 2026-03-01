import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_args.dart';
import 'trigger_destination.dart';
import 'trigger_matching_criteria.dart';
import 'trigger_retry_policy.dart';
import 'trigger_transport.dart';

/// The Eventarc Trigger resource
///
///
/// To get more information about Trigger, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations.triggers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/standard/docs/overview#eventarc-triggers)
///
/// ## Example Usage
///
/// ### Eventarc Trigger With Cloud Run Destination
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = new gcp.pubsub.Topic("foo", {name: "some-topic"});
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "some-service",
///     location: "us-central1",
///     template: {
///         spec: {
///             containers: [{
///                 image: "gcr.io/cloudrun/hello",
///                 ports: [{
///                     containerPort: 8080,
///                 }],
///             }],
///             containerConcurrency: 50,
///             timeoutSeconds: 100,
///         },
///     },
///     traffics: [{
///         percent: 100,
///         latestRevision: true,
///     }],
/// });
/// const primary = new gcp.eventarc.Trigger("primary", {
///     name: "some-trigger",
///     location: "us-central1",
///     matchingCriterias: [{
///         attribute: "type",
///         value: "google.cloud.pubsub.topic.v1.messagePublished",
///     }],
///     destination: {
///         cloudRunService: {
///             service: _default.name,
///             region: "us-central1",
///         },
///     },
///     labels: {
///         foo: "bar",
///     },
///     transport: {
///         pubsub: {
///             topic: foo.id,
///         },
///     },
///     retryPolicy: {
///         maxAttempts: 1,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.pubsub.Topic("foo", name="some-topic")
/// default = gcp.cloudrun.Service("default",
///     name="some-service",
///     location="us-central1",
///     template={
///         "spec": {
///             "containers": [{
///                 "image": "gcr.io/cloudrun/hello",
///                 "ports": [{
///                     "container_port": 8080,
///                 }],
///             }],
///             "container_concurrency": 50,
///             "timeout_seconds": 100,
///         },
///     },
///     traffics=[{
///         "percent": 100,
///         "latest_revision": True,
///     }])
/// primary = gcp.eventarc.Trigger("primary",
///     name="some-trigger",
///     location="us-central1",
///     matching_criterias=[{
///         "attribute": "type",
///         "value": "google.cloud.pubsub.topic.v1.messagePublished",
///     }],
///     destination={
///         "cloud_run_service": {
///             "service": default.name,
///             "region": "us-central1",
///         },
///     },
///     labels={
///         "foo": "bar",
///     },
///     transport={
///         "pubsub": {
///             "topic": foo.id,
///         },
///     },
///     retry_policy={
///         "max_attempts": 1,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Gcp.PubSub.Topic("foo", new()
///     {
///         Name = "some-topic",
///     });
///
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "some-service",
///         Location = "us-central1",
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "gcr.io/cloudrun/hello",
///                         Ports = new[]
///                         {
///                             new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerPortArgs
///                             {
///                                 ContainerPort = 8080,
///                             },
///                         },
///                     },
///                 },
///                 ContainerConcurrency = 50,
///                 TimeoutSeconds = 100,
///             },
///         },
///         Traffics = new[]
///         {
///             new Gcp.CloudRun.Inputs.ServiceTrafficArgs
///             {
///                 Percent = 100,
///                 LatestRevision = true,
///             },
///         },
///     });
///
///     var primary = new Gcp.Eventarc.Trigger("primary", new()
///     {
///         Name = "some-trigger",
///         Location = "us-central1",
///         MatchingCriterias = new[]
///         {
///             new Gcp.Eventarc.Inputs.TriggerMatchingCriteriaArgs
///             {
///                 Attribute = "type",
///                 Value = "google.cloud.pubsub.topic.v1.messagePublished",
///             },
///         },
///         Destination = new Gcp.Eventarc.Inputs.TriggerDestinationArgs
///         {
///             CloudRunService = new Gcp.Eventarc.Inputs.TriggerDestinationCloudRunServiceArgs
///             {
///                 Service = @default.Name,
///                 Region = "us-central1",
///             },
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Transport = new Gcp.Eventarc.Inputs.TriggerTransportArgs
///         {
///             Pubsub = new Gcp.Eventarc.Inputs.TriggerTransportPubsubArgs
///             {
///                 Topic = foo.Id,
///             },
///         },
///         RetryPolicy = new Gcp.Eventarc.Inputs.TriggerRetryPolicyArgs
///         {
///             MaxAttempts = 1,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := pubsub.NewTopic(ctx, "foo", &pubsub.TopicArgs{
/// 			Name: pulumi.String("some-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("some-service"),
/// 			Location: pulumi.String("us-central1"),
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image: pulumi.String("gcr.io/cloudrun/hello"),
/// 							Ports: cloudrun.ServiceTemplateSpecContainerPortArray{
/// 								&cloudrun.ServiceTemplateSpecContainerPortArgs{
/// 									ContainerPort: pulumi.Int(8080),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					ContainerConcurrency: pulumi.Int(50),
/// 					TimeoutSeconds:       pulumi.Int(100),
/// 				},
/// 			},
/// 			Traffics: cloudrun.ServiceTrafficArray{
/// 				&cloudrun.ServiceTrafficArgs{
/// 					Percent:        pulumi.Int(100),
/// 					LatestRevision: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventarc.NewTrigger(ctx, "primary", &eventarc.TriggerArgs{
/// 			Name:     pulumi.String("some-trigger"),
/// 			Location: pulumi.String("us-central1"),
/// 			MatchingCriterias: eventarc.TriggerMatchingCriteriaArray{
/// 				&eventarc.TriggerMatchingCriteriaArgs{
/// 					Attribute: pulumi.String("type"),
/// 					Value:     pulumi.String("google.cloud.pubsub.topic.v1.messagePublished"),
/// 				},
/// 			},
/// 			Destination: &eventarc.TriggerDestinationArgs{
/// 				CloudRunService: &eventarc.TriggerDestinationCloudRunServiceArgs{
/// 					Service: _default.Name,
/// 					Region:  pulumi.String("us-central1"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Transport: &eventarc.TriggerTransportArgs{
/// 				Pubsub: &eventarc.TriggerTransportPubsubArgs{
/// 					Topic: foo.ID(),
/// 				},
/// 			},
/// 			RetryPolicy: &eventarc.TriggerRetryPolicyArgs{
/// 				MaxAttempts: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTrafficArgs;
/// import com.pulumi.gcp.eventarc.Trigger;
/// import com.pulumi.gcp.eventarc.TriggerArgs;
/// import com.pulumi.gcp.eventarc.inputs.TriggerMatchingCriteriaArgs;
/// import com.pulumi.gcp.eventarc.inputs.TriggerDestinationArgs;
/// import com.pulumi.gcp.eventarc.inputs.TriggerDestinationCloudRunServiceArgs;
/// import com.pulumi.gcp.eventarc.inputs.TriggerTransportArgs;
/// import com.pulumi.gcp.eventarc.inputs.TriggerTransportPubsubArgs;
/// import com.pulumi.gcp.eventarc.inputs.TriggerRetryPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var foo = new Topic("foo", TopicArgs.builder()
///             .name("some-topic")
///             .build());
///
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("some-service")
///             .location("us-central1")
///             .template(ServiceTemplateArgs.builder()
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("gcr.io/cloudrun/hello")
///                         .ports(ServiceTemplateSpecContainerPortArgs.builder()
///                             .containerPort(8080)
///                             .build())
///                         .build())
///                     .containerConcurrency(50)
///                     .timeoutSeconds(100)
///                     .build())
///                 .build())
///             .traffics(ServiceTrafficArgs.builder()
///                 .percent(100)
///                 .latestRevision(true)
///                 .build())
///             .build());
///
///         var primary = new Trigger("primary", TriggerArgs.builder()
///             .name("some-trigger")
///             .location("us-central1")
///             .matchingCriterias(TriggerMatchingCriteriaArgs.builder()
///                 .attribute("type")
///                 .value("google.cloud.pubsub.topic.v1.messagePublished")
///                 .build())
///             .destination(TriggerDestinationArgs.builder()
///                 .cloudRunService(TriggerDestinationCloudRunServiceArgs.builder()
///                     .service(default_.name())
///                     .region("us-central1")
///                     .build())
///                 .build())
///             .labels(Map.of("foo", "bar"))
///             .transport(TriggerTransportArgs.builder()
///                 .pubsub(TriggerTransportPubsubArgs.builder()
///                     .topic(foo.id())
///                     .build())
///                 .build())
///             .retryPolicy(TriggerRetryPolicyArgs.builder()
///                 .maxAttempts(1)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:eventarc:Trigger
///     properties:
///       name: some-trigger
///       location: us-central1
///       matchingCriterias:
///         - attribute: type
///           value: google.cloud.pubsub.topic.v1.messagePublished
///       destination:
///         cloudRunService:
///           service: ${default.name}
///           region: us-central1
///       labels:
///         foo: bar
///       transport:
///         pubsub:
///           topic: ${foo.id}
///       retryPolicy:
///         maxAttempts: 1
///   foo:
///     type: gcp:pubsub:Topic
///     properties:
///       name: some-topic
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: some-service
///       location: us-central1
///       template:
///         spec:
///           containers:
///             - image: gcr.io/cloudrun/hello
///               ports:
///                 - containerPort: 8080
///           containerConcurrency: 50
///           timeoutSeconds: 100
///       traffics:
///         - percent: 100
///           latestRevision: true
/// ```
///
///
/// ## Import
///
/// Trigger can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/triggers/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Trigger can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/trigger:Trigger default projects/{{project}}/locations/{{location}}/triggers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/trigger:Trigger default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/trigger:Trigger default {{location}}/{{name}}
/// ```
class Trigger extends pulumi.CustomResource {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  late final pulumi.Output<String?> channel;

  /// Output only. The reason(s) why a trigger is in FAILED state.
  late final pulumi.Output<Map<String, String>> conditions;

  /// Output only. The creation time.
  late final pulumi.Output<String> createTime;

  /// Required. Destination specifies where the events should be sent to.
  /// Structure is documented below.
  late final pulumi.Output<TriggerDestination> destination;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Output only. This checksum is computed by the server based on the value of other fields, and may be sent only on create requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  late final pulumi.Output<String> eventDataContentType;

  /// Optional. User labels attached to the triggers that can be used to group resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Required. null The list of filters that applies to event attributes. Only events that match all the provided filters will be sent to the destination.
  /// Structure is documented below.
  late final pulumi.Output<List<TriggerMatchingCriteria>> matchingCriterias;

  /// Required. The resource name of the trigger. Must be unique within the location on the project.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The retry policy configuration for the Trigger.
  /// Can only be set with Cloud Run destinations.
  /// Structure is documented below.
  late final pulumi.Output<TriggerRetryPolicy?> retryPolicy;

  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have `roles/eventarc.eventReceiver` IAM role.
  late final pulumi.Output<String?> serviceAccount;

  /// Optional. In order to deliver messages, Eventarc may use other GCP products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  /// Structure is documented below.
  late final pulumi.Output<TriggerTransport> transport;

  /// Output only. Server assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;

  /// Output only. The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Trigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trigger]. {@macro pulumi_eventarc_trigger_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trigger(
    String name, {
    TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:eventarc/trigger:Trigger',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.channel = registerOutput<String?>('channel');
    this.conditions = registerOutput<Map<String, String>>('conditions');
    this.createTime = registerOutput<String>('createTime');
    this.destination = registerOutput<TriggerDestination>('destination');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.etag = registerOutput<String>('etag');
    this.eventDataContentType = registerOutput<String>('eventDataContentType');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.matchingCriterias = registerOutput<List<TriggerMatchingCriteria>>(
      'matchingCriterias',
    );
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.retryPolicy = registerOutput<TriggerRetryPolicy?>('retryPolicy');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
    this.transport = registerOutput<TriggerTransport>('transport');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
