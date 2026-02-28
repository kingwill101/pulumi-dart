// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_policy_endpoint_matcher.dart';
import 'endpoint_policy_traffic_port_selector.dart';

/// {@template pulumi_networkservices_endpoint_policy_endpoint_policy_args_doc}
/// The set of arguments for EndpointPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_endpoint_policy_endpoint_policy_args_doc}
class EndpointPolicyArgs {
  /// This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints.
  final pulumi.Input<String>? authorizationPolicy;

  /// A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints.
  final pulumi.Input<String>? clientTlsPolicy;

  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Required. A matcher that selects endpoints to which the policies should be applied.
  /// Structure is documented below.
  final pulumi.Input<EndpointPolicyEndpointMatcher> endpointMatcher;

  /// Set of label tags associated with the TcpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the EndpointPolicy resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends.
  final pulumi.Input<String>? serverTlsPolicy;

  /// Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  /// Structure is documented below.
  final pulumi.Input<EndpointPolicyTrafficPortSelector>? trafficPortSelector;

  /// The type of endpoint policy. This is primarily used to validate the configuration.
  /// Possible values are: `SIDECAR_PROXY`, `GRPC_SERVER`.
  final pulumi.Input<String> type;

  /// Creates a new [EndpointPolicyArgs].
  /// [authorizationPolicy] This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints.
  /// [clientTlsPolicy] A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [endpointMatcher] Required. A matcher that selects endpoints to which the policies should be applied.
  /// [labels] Set of label tags associated with the TcpRoute resource.
  /// [name] Name of the EndpointPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [serverTlsPolicy] A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends.
  /// [trafficPortSelector] Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  /// [type] The type of endpoint policy. This is primarily used to validate the configuration.
  EndpointPolicyArgs({
    String? authorizationPolicy,
    String? clientTlsPolicy,
    String? description,
    required EndpointPolicyEndpointMatcher endpointMatcher,
    Map<String, String>? labels,
    String? name,
    String? project,
    String? serverTlsPolicy,
    EndpointPolicyTrafficPortSelector? trafficPortSelector,
    required String type,
  })  : authorizationPolicy =
            pulumi.Input.asOptionalInput<String>(authorizationPolicy),
        clientTlsPolicy = pulumi.Input.asOptionalInput<String>(clientTlsPolicy),
        description = pulumi.Input.asOptionalInput<String>(description),
        endpointMatcher = pulumi.Input.asInput<EndpointPolicyEndpointMatcher>(
            endpointMatcher),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        serverTlsPolicy = pulumi.Input.asOptionalInput<String>(serverTlsPolicy),
        trafficPortSelector =
            pulumi.Input.asOptionalInput<EndpointPolicyTrafficPortSelector>(
                trafficPortSelector),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizationPolicyValue = authorizationPolicy;
    if (authorizationPolicyValue != null) {
      map['authorizationPolicy'] = authorizationPolicyValue;
    }
    final clientTlsPolicyValue = clientTlsPolicy;
    if (clientTlsPolicyValue != null) {
      map['clientTlsPolicy'] = clientTlsPolicyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['endpointMatcher'] = pulumi.Input.mapInputValue<
        EndpointPolicyEndpointMatcher,
        Map<String, dynamic>>(endpointMatcher, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serverTlsPolicyValue = serverTlsPolicy;
    if (serverTlsPolicyValue != null) {
      map['serverTlsPolicy'] = serverTlsPolicyValue;
    }
    final trafficPortSelectorValue = trafficPortSelector;
    if (trafficPortSelectorValue != null) {
      map['trafficPortSelector'] = pulumi.Input.mapOptionalInputValue<
              EndpointPolicyTrafficPortSelector, Map<String, dynamic>>(
          trafficPortSelectorValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory EndpointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EndpointPolicyArgs(
      authorizationPolicy: map['authorizationPolicy'] == null
          ? null
          : map['authorizationPolicy'] as String,
      clientTlsPolicy: map['clientTlsPolicy'] == null
          ? null
          : map['clientTlsPolicy'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      endpointMatcher: EndpointPolicyEndpointMatcher.fromMap(
          (map['endpointMatcher'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serverTlsPolicy: map['serverTlsPolicy'] == null
          ? null
          : map['serverTlsPolicy'] as String,
      trafficPortSelector: map['trafficPortSelector'] == null
          ? null
          : EndpointPolicyTrafficPortSelector.fromMap(
              (map['trafficPortSelector'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
