import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrollment_args.dart';

/// The Eventarc Enrollment resource
///
///
/// To get more information about Enrollment, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations.enrollments)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/advanced/docs/receive-events/create-enrollment)
///
/// ## Example Usage
///
/// ### Eventarc Enrollment With Pipeline Destination
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pipeline = new gcp.eventarc.Pipeline("pipeline", {
///     location: "us-central1",
///     pipelineId: "some-pipeline",
///     destinations: [{
///         httpEndpoint: {
///             uri: "https://10.77.0.0:80/route",
///         },
///         networkConfig: {
///             networkAttachment: "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
///         },
///     }],
/// });
/// const primary = new gcp.eventarc.Enrollment("primary", {
///     location: "us-central1",
///     enrollmentId: "some-enrollment",
///     messageBus: primaryGoogleEventarcMessageBus.id,
///     destination: pipeline.id,
///     celMatch: "message.type == 'google.cloud.dataflow.job.v1beta3.statusChanged'",
/// });
/// const messageBus = new gcp.eventarc.MessageBus("message_bus", {
///     location: "us-central1",
///     messageBusId: "some-message-bus",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pipeline = gcp.eventarc.Pipeline("pipeline",
///     location="us-central1",
///     pipeline_id="some-pipeline",
///     destinations=[{
///         "http_endpoint": {
///             "uri": "https://10.77.0.0:80/route",
///         },
///         "network_config": {
///             "network_attachment": "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
///         },
///     }])
/// primary = gcp.eventarc.Enrollment("primary",
///     location="us-central1",
///     enrollment_id="some-enrollment",
///     message_bus=primary_google_eventarc_message_bus["id"],
///     destination=pipeline.id,
///     cel_match="message.type == 'google.cloud.dataflow.job.v1beta3.statusChanged'")
/// message_bus = gcp.eventarc.MessageBus("message_bus",
///     location="us-central1",
///     message_bus_id="some-message-bus")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pipeline = new Gcp.Eventarc.Pipeline("pipeline", new()
///     {
///         Location = "us-central1",
///         PipelineId = "some-pipeline",
///         Destinations = new[]
///         {
///             new Gcp.Eventarc.Inputs.PipelineDestinationArgs
///             {
///                 HttpEndpoint = new Gcp.Eventarc.Inputs.PipelineDestinationHttpEndpointArgs
///                 {
///                     Uri = "https://10.77.0.0:80/route",
///                 },
///                 NetworkConfig = new Gcp.Eventarc.Inputs.PipelineDestinationNetworkConfigArgs
///                 {
///                     NetworkAttachment = "projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment",
///                 },
///             },
///         },
///     });
///
///     var primary = new Gcp.Eventarc.Enrollment("primary", new()
///     {
///         Location = "us-central1",
///         EnrollmentId = "some-enrollment",
///         MessageBus = primaryGoogleEventarcMessageBus.Id,
///         Destination = pipeline.Id,
///         CelMatch = "message.type == 'google.cloud.dataflow.job.v1beta3.statusChanged'",
///     });
///
///     var messageBus = new Gcp.Eventarc.MessageBus("message_bus", new()
///     {
///         Location = "us-central1",
///         MessageBusId = "some-message-bus",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/eventarc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pipeline, err := eventarc.NewPipeline(ctx, "pipeline", &eventarc.PipelineArgs{
/// 			Location:   pulumi.String("us-central1"),
/// 			PipelineId: pulumi.String("some-pipeline"),
/// 			Destinations: eventarc.PipelineDestinationArray{
/// 				&eventarc.PipelineDestinationArgs{
/// 					HttpEndpoint: &eventarc.PipelineDestinationHttpEndpointArgs{
/// 						Uri: pulumi.String("https://10.77.0.0:80/route"),
/// 					},
/// 					NetworkConfig: &eventarc.PipelineDestinationNetworkConfigArgs{
/// 						NetworkAttachment: pulumi.String("projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventarc.NewEnrollment(ctx, "primary", &eventarc.EnrollmentArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			EnrollmentId: pulumi.String("some-enrollment"),
/// 			MessageBus:   pulumi.Any(primaryGoogleEventarcMessageBus.Id),
/// 			Destination:  pipeline.ID(),
/// 			CelMatch:     pulumi.String("message.type == 'google.cloud.dataflow.job.v1beta3.statusChanged'"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventarc.NewMessageBus(ctx, "message_bus", &eventarc.MessageBusArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			MessageBusId: pulumi.String("some-message-bus"),
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
/// import com.pulumi.gcp.eventarc.Pipeline;
/// import com.pulumi.gcp.eventarc.PipelineArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationHttpEndpointArgs;
/// import com.pulumi.gcp.eventarc.inputs.PipelineDestinationNetworkConfigArgs;
/// import com.pulumi.gcp.eventarc.Enrollment;
/// import com.pulumi.gcp.eventarc.EnrollmentArgs;
/// import com.pulumi.gcp.eventarc.MessageBus;
/// import com.pulumi.gcp.eventarc.MessageBusArgs;
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
///         var pipeline = new Pipeline("pipeline", PipelineArgs.builder()
///             .location("us-central1")
///             .pipelineId("some-pipeline")
///             .destinations(PipelineDestinationArgs.builder()
///                 .httpEndpoint(PipelineDestinationHttpEndpointArgs.builder()
///                     .uri("https://10.77.0.0:80/route")
///                     .build())
///                 .networkConfig(PipelineDestinationNetworkConfigArgs.builder()
///                     .networkAttachment("projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment")
///                     .build())
///                 .build())
///             .build());
///
///         var primary = new Enrollment("primary", EnrollmentArgs.builder()
///             .location("us-central1")
///             .enrollmentId("some-enrollment")
///             .messageBus(primaryGoogleEventarcMessageBus.id())
///             .destination(pipeline.id())
///             .celMatch("message.type == 'google.cloud.dataflow.job.v1beta3.statusChanged'")
///             .build());
///
///         var messageBus = new MessageBus("messageBus", MessageBusArgs.builder()
///             .location("us-central1")
///             .messageBusId("some-message-bus")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:eventarc:Enrollment
///     properties:
///       location: us-central1
///       enrollmentId: some-enrollment
///       messageBus: ${primaryGoogleEventarcMessageBus.id}
///       destination: ${pipeline.id}
///       celMatch: message.type == 'google.cloud.dataflow.job.v1beta3.statusChanged'
///   pipeline:
///     type: gcp:eventarc:Pipeline
///     properties:
///       location: us-central1
///       pipelineId: some-pipeline
///       destinations:
///         - httpEndpoint:
///             uri: https://10.77.0.0:80/route
///           networkConfig:
///             networkAttachment: projects/my-project-name/regions/us-central1/networkAttachments/some-network-attachment
///   messageBus:
///     type: gcp:eventarc:MessageBus
///     name: message_bus
///     properties:
///       location: us-central1
///       messageBusId: some-message-bus
/// ```
///
///
/// ## Import
///
/// Enrollment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/enrollments/{{enrollment_id}}`
///
/// * `{{project}}/{{location}}/{{enrollment_id}}`
///
/// * `{{location}}/{{enrollment_id}}`
///
/// When using the `pulumi import` command, Enrollment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/enrollment:Enrollment default projects/{{project}}/locations/{{location}}/enrollments/{{enrollment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/enrollment:Enrollment default {{project}}/{{location}}/{{enrollment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/enrollment:Enrollment default {{location}}/{{enrollment_id}}
/// ```
class Enrollment extends pulumi.CustomResource {
  /// Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// A CEL expression identifying which messages this enrollment applies to.
  late final pulumi.Output<String> celMatch;
  /// The creation time.
  late final pulumi.Output<String> createTime;
  /// Destination is the Pipeline that the Enrollment is delivering to. It must
  /// point to the full resource name of a Pipeline. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/pipelines/{PIPELINE_ID)"
  late final pulumi.Output<String> destination;
  /// Resource display name.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The user-provided ID to be assigned to the Enrollment. It should match the
  /// format `^a-z?$`.
  late final pulumi.Output<String> enrollmentId;
  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure that
  /// the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Resource name of the message bus identifying the source of the messages. It
  /// matches the form
  /// projects/{project}/locations/{location}/messageBuses/{messageBus}.
  late final pulumi.Output<String> messageBus;
  /// Resource name of the form
  /// projects/{project}/locations/{location}/enrollments/{enrollment}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Server assigned unique identifier for the channel. The value is a UUID4
  /// string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;
  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Enrollment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Enrollment]. {@macro pulumi_eventarc_enrollment_enrollment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Enrollment(
    String name, {
    EnrollmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/enrollment:Enrollment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.celMatch = registerOutput<String>('celMatch');
    this.createTime = registerOutput<String>('createTime');
    this.destination = registerOutput<String>('destination');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.enrollmentId = registerOutput<String>('enrollmentId');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.messageBus = registerOutput<String>('messageBus');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
