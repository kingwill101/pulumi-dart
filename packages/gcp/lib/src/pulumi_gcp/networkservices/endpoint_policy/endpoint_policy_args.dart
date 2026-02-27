// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_policy_endpoint_matcher/endpoint_policy_endpoint_matcher.dart';
import '../endpoint_policy_traffic_port_selector/endpoint_policy_traffic_port_selector.dart';

/// The set of arguments for EndpointPolicy.
class EndpointPolicyArgs {
  /// This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints.
  final Input<String>? authorizationPolicy;

  /// A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints.
  final Input<String>? clientTlsPolicy;

  /// A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// Required. A matcher that selects endpoints to which the policies should be applied.
  /// Structure is documented below.
  final Input<EndpointPolicyEndpointMatcher> endpointMatcher;

  /// Set of label tags associated with the TcpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Name of the EndpointPolicy resource.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends.
  final Input<String>? serverTlsPolicy;

  /// Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  /// Structure is documented below.
  final Input<EndpointPolicyTrafficPortSelector>? trafficPortSelector;

  /// The type of endpoint policy. This is primarily used to validate the configuration.
  /// Possible values are: `SIDECAR_PROXY`, `GRPC_SERVER`.
  final Input<String> type;

  EndpointPolicyArgs({
    this.authorizationPolicy,
    this.clientTlsPolicy,
    this.description,
    required this.endpointMatcher,
    this.labels,
    this.name,
    this.project,
    this.serverTlsPolicy,
    this.trafficPortSelector,
    required this.type,
  });

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
    map['endpointMatcher'] = Input.mapInputValue<EndpointPolicyEndpointMatcher,
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
      map['trafficPortSelector'] = Input.mapOptionalInputValue<
              EndpointPolicyTrafficPortSelector, Map<String, dynamic>>(
          trafficPortSelectorValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory EndpointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EndpointPolicyArgs(
      authorizationPolicy:
          Input.asOptionalInput<String>(map['authorizationPolicy']),
      clientTlsPolicy: Input.asOptionalInput<String>(map['clientTlsPolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      endpointMatcher:
          Input.asInput<EndpointPolicyEndpointMatcher>(map['endpointMatcher']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serverTlsPolicy: Input.asOptionalInput<String>(map['serverTlsPolicy']),
      trafficPortSelector:
          Input.asOptionalInput<EndpointPolicyTrafficPortSelector>(
              map['trafficPortSelector']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
