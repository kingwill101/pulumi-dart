import 'package:pulumi/pulumi.dart';
import '../endpoint_policy_endpoint_matcher/endpoint_policy_endpoint_matcher.dart';
import '../endpoint_policy_traffic_port_selector/endpoint_policy_traffic_port_selector.dart';
import 'endpoint_policy_args.dart';

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
/// ### Network Services Endpoint Policy Empty Match
///
///
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
class EndpointPolicy extends CustomResource {
  /// This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints.
  late final Output<String?> authorizationPolicy;

  /// A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints.
  late final Output<String?> clientTlsPolicy;

  /// Time the TcpRoute was created in UTC.
  late final Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Required. A matcher that selects endpoints to which the policies should be applied.
  /// Structure is documented below.
  late final Output<EndpointPolicyEndpointMatcher> endpointMatcher;

  /// Set of label tags associated with the TcpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the EndpointPolicy resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends.
  late final Output<String?> serverTlsPolicy;

  /// Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  /// Structure is documented below.
  late final Output<EndpointPolicyTrafficPortSelector?> trafficPortSelector;

  /// The type of endpoint policy. This is primarily used to validate the configuration.
  /// Possible values are: `SIDECAR_PROXY`, `GRPC_SERVER`.
  late final Output<String> type;

  /// Time the TcpRoute was updated in UTC.
  late final Output<String> updateTime;

  EndpointPolicy(
    String name, {
    EndpointPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/endpointPolicy:EndpointPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authorizationPolicy = registerOutput<String?>('authorizationPolicy');
    this.clientTlsPolicy = registerOutput<String?>('clientTlsPolicy');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.endpointMatcher =
        registerOutput<EndpointPolicyEndpointMatcher>('endpointMatcher');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serverTlsPolicy = registerOutput<String?>('serverTlsPolicy');
    this.trafficPortSelector =
        registerOutput<EndpointPolicyTrafficPortSelector?>(
            'trafficPortSelector');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
