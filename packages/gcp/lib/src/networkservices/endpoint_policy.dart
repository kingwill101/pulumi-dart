import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_policy_args.dart';
import 'endpoint_policy_endpoint_matcher.dart';
import 'endpoint_policy_traffic_port_selector.dart';

/// EndpointPolicy is a resource that helps apply desired configuration on the endpoints that match specific criteria.
///
///
/// To get more information about EndpointPolicy, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.endpointPolicies)
///
/// ## Example Usage
///
/// ### Network Services Endpoint Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.EndpointPolicy("default", {
///     name: "my-endpoint-policy",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     type: "SIDECAR_PROXY",
///     trafficPortSelector: {
///         ports: ["8081"],
///     },
///     endpointMatcher: {
///         metadataLabelMatcher: {
///             metadataLabelMatchCriteria: "MATCH_ANY",
///             metadataLabels: [{
///                 labelName: "foo",
///                 labelValue: "bar",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.EndpointPolicy("default",
///     name="my-endpoint-policy",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     type="SIDECAR_PROXY",
///     traffic_port_selector={
///         "ports": ["8081"],
///     },
///     endpoint_matcher={
///         "metadata_label_matcher": {
///             "metadata_label_match_criteria": "MATCH_ANY",
///             "metadata_labels": [{
///                 "label_name": "foo",
///                 "label_value": "bar",
///             }],
///         },
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
///     var @default = new Gcp.NetworkServices.EndpointPolicy("default", new()
///     {
///         Name = "my-endpoint-policy",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Type = "SIDECAR_PROXY",
///         TrafficPortSelector = new Gcp.NetworkServices.Inputs.EndpointPolicyTrafficPortSelectorArgs
///         {
///             Ports = new[]
///             {
///                 "8081",
///             },
///         },
///         EndpointMatcher = new Gcp.NetworkServices.Inputs.EndpointPolicyEndpointMatcherArgs
///         {
///             MetadataLabelMatcher = new Gcp.NetworkServices.Inputs.EndpointPolicyEndpointMatcherMetadataLabelMatcherArgs
///             {
///                 MetadataLabelMatchCriteria = "MATCH_ANY",
///                 MetadataLabels = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabelArgs
///                     {
///                         LabelName = "foo",
///                         LabelValue = "bar",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewEndpointPolicy(ctx, "default", &networkservices.EndpointPolicyArgs{
/// 			Name: pulumi.String("my-endpoint-policy"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Type:        pulumi.String("SIDECAR_PROXY"),
/// 			TrafficPortSelector: &networkservices.EndpointPolicyTrafficPortSelectorArgs{
/// 				Ports: pulumi.StringArray{
/// 					pulumi.String("8081"),
/// 				},
/// 			},
/// 			EndpointMatcher: &networkservices.EndpointPolicyEndpointMatcherArgs{
/// 				MetadataLabelMatcher: &networkservices.EndpointPolicyEndpointMatcherMetadataLabelMatcherArgs{
/// 					MetadataLabelMatchCriteria: pulumi.String("MATCH_ANY"),
/// 					MetadataLabels: networkservices.EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabelArray{
/// 						&networkservices.EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabelArgs{
/// 							LabelName:  pulumi.String("foo"),
/// 							LabelValue: pulumi.String("bar"),
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.gcp.networkservices.EndpointPolicy;
/// import com.pulumi.gcp.networkservices.EndpointPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.EndpointPolicyTrafficPortSelectorArgs;
/// import com.pulumi.gcp.networkservices.inputs.EndpointPolicyEndpointMatcherArgs;
/// import com.pulumi.gcp.networkservices.inputs.EndpointPolicyEndpointMatcherMetadataLabelMatcherArgs;
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
///         var default_ = new EndpointPolicy("default", EndpointPolicyArgs.builder()
///             .name("my-endpoint-policy")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .type("SIDECAR_PROXY")
///             .trafficPortSelector(EndpointPolicyTrafficPortSelectorArgs.builder()
///                 .ports("8081")
///                 .build())
///             .endpointMatcher(EndpointPolicyEndpointMatcherArgs.builder()
///                 .metadataLabelMatcher(EndpointPolicyEndpointMatcherMetadataLabelMatcherArgs.builder()
///                     .metadataLabelMatchCriteria("MATCH_ANY")
///                     .metadataLabels(EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabelArgs.builder()
///                         .labelName("foo")
///                         .labelValue("bar")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:EndpointPolicy
///     properties:
///       name: my-endpoint-policy
///       labels:
///         foo: bar
///       description: my description
///       type: SIDECAR_PROXY
///       trafficPortSelector:
///         ports:
///           - '8081'
///       endpointMatcher:
///         metadataLabelMatcher:
///           metadataLabelMatchCriteria: MATCH_ANY
///           metadataLabels:
///             - labelName: foo
///               labelValue: bar
/// ```
///
/// ### Network Services Endpoint Policy Empty Match
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.EndpointPolicy("default", {
///     name: "my-endpoint-policy",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     type: "SIDECAR_PROXY",
///     trafficPortSelector: {
///         ports: ["8081"],
///     },
///     endpointMatcher: {
///         metadataLabelMatcher: {
///             metadataLabelMatchCriteria: "MATCH_ANY",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.EndpointPolicy("default",
///     name="my-endpoint-policy",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     type="SIDECAR_PROXY",
///     traffic_port_selector={
///         "ports": ["8081"],
///     },
///     endpoint_matcher={
///         "metadata_label_matcher": {
///             "metadata_label_match_criteria": "MATCH_ANY",
///         },
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
///     var @default = new Gcp.NetworkServices.EndpointPolicy("default", new()
///     {
///         Name = "my-endpoint-policy",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Type = "SIDECAR_PROXY",
///         TrafficPortSelector = new Gcp.NetworkServices.Inputs.EndpointPolicyTrafficPortSelectorArgs
///         {
///             Ports = new[]
///             {
///                 "8081",
///             },
///         },
///         EndpointMatcher = new Gcp.NetworkServices.Inputs.EndpointPolicyEndpointMatcherArgs
///         {
///             MetadataLabelMatcher = new Gcp.NetworkServices.Inputs.EndpointPolicyEndpointMatcherMetadataLabelMatcherArgs
///             {
///                 MetadataLabelMatchCriteria = "MATCH_ANY",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewEndpointPolicy(ctx, "default", &networkservices.EndpointPolicyArgs{
/// 			Name: pulumi.String("my-endpoint-policy"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Type:        pulumi.String("SIDECAR_PROXY"),
/// 			TrafficPortSelector: &networkservices.EndpointPolicyTrafficPortSelectorArgs{
/// 				Ports: pulumi.StringArray{
/// 					pulumi.String("8081"),
/// 				},
/// 			},
/// 			EndpointMatcher: &networkservices.EndpointPolicyEndpointMatcherArgs{
/// 				MetadataLabelMatcher: &networkservices.EndpointPolicyEndpointMatcherMetadataLabelMatcherArgs{
/// 					MetadataLabelMatchCriteria: pulumi.String("MATCH_ANY"),
/// 				},
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
/// import com.pulumi.gcp.networkservices.EndpointPolicy;
/// import com.pulumi.gcp.networkservices.EndpointPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.EndpointPolicyTrafficPortSelectorArgs;
/// import com.pulumi.gcp.networkservices.inputs.EndpointPolicyEndpointMatcherArgs;
/// import com.pulumi.gcp.networkservices.inputs.EndpointPolicyEndpointMatcherMetadataLabelMatcherArgs;
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
///         var default_ = new EndpointPolicy("default", EndpointPolicyArgs.builder()
///             .name("my-endpoint-policy")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .type("SIDECAR_PROXY")
///             .trafficPortSelector(EndpointPolicyTrafficPortSelectorArgs.builder()
///                 .ports("8081")
///                 .build())
///             .endpointMatcher(EndpointPolicyEndpointMatcherArgs.builder()
///                 .metadataLabelMatcher(EndpointPolicyEndpointMatcherMetadataLabelMatcherArgs.builder()
///                     .metadataLabelMatchCriteria("MATCH_ANY")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:EndpointPolicy
///     properties:
///       name: my-endpoint-policy
///       labels:
///         foo: bar
///       description: my description
///       type: SIDECAR_PROXY
///       trafficPortSelector:
///         ports:
///           - '8081'
///       endpointMatcher:
///         metadataLabelMatcher:
///           metadataLabelMatchCriteria: MATCH_ANY
/// ```
///
///
/// ## Import
///
/// EndpointPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/endpointPolicies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, EndpointPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/endpointPolicy:EndpointPolicy default projects/{{project}}/locations/global/endpointPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/endpointPolicy:EndpointPolicy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/endpointPolicy:EndpointPolicy default {{name}}
/// ```
class EndpointPolicy extends pulumi.CustomResource {
  /// This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints.
  late final pulumi.Output<String?> authorizationPolicy;

  /// A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints.
  late final pulumi.Output<String?> clientTlsPolicy;

  /// Time the TcpRoute was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Required. A matcher that selects endpoints to which the policies should be applied.
  /// Structure is documented below.
  late final pulumi.Output<EndpointPolicyEndpointMatcher> endpointMatcher;

  /// Set of label tags associated with the TcpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the EndpointPolicy resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends.
  late final pulumi.Output<String?> serverTlsPolicy;

  /// Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  /// Structure is documented below.
  late final pulumi.Output<EndpointPolicyTrafficPortSelector?>
  trafficPortSelector;

  /// The type of endpoint policy. This is primarily used to validate the configuration.
  /// Possible values are: `SIDECAR_PROXY`, `GRPC_SERVER`.
  late final pulumi.Output<String> type;

  /// Time the TcpRoute was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [EndpointPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointPolicy]. {@macro pulumi_networkservices_endpoint_policy_endpoint_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointPolicy(
    String name, {
    EndpointPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/endpointPolicy:EndpointPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.authorizationPolicy = registerOutput<String?>('authorizationPolicy');
    this.clientTlsPolicy = registerOutput<String?>('clientTlsPolicy');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.endpointMatcher = registerOutput<EndpointPolicyEndpointMatcher>(
      'endpointMatcher',
    );
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serverTlsPolicy = registerOutput<String?>('serverTlsPolicy');
    this.trafficPortSelector =
        registerOutput<EndpointPolicyTrafficPortSelector?>(
          'trafficPortSelector',
        );
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
