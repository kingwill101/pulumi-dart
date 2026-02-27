// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'endpoint_matcher.dart';
import 'endpoint_policy_type.dart';
import 'traffic_port_selector.dart';

/// The set of arguments for EndpointPolicy.
class EndpointPolicyArgs {
  /// Optional. This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. Refer to Authorization. If this field is not specified, authorization is disabled(no authz checks) for this endpoint.
  final Input<String>? authorizationPolicy;

  /// Optional. A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. More specifically, it is applied to the outgoing traffic from the proxy to the endpoint. This is typically used for sidecar model where the proxy identifies itself as endpoint to the control plane, with the connection between sidecar and endpoint requiring authentication. If this field is not set, authentication is disabled(open). Applicable only when EndpointPolicyType is SIDECAR_PROXY.
  final Input<String>? clientTlsPolicy;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// A matcher that selects endpoints to which the policies should be applied.
  final Input<EndpointMatcher> endpointMatcher;

  /// Required. Short name of the EndpointPolicy resource to be created. E.g. "CustomECS".
  final Input<String> endpointPolicyId;

  /// Optional. Set of label tags associated with the EndpointPolicy resource.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. If this field is not set, authentication is disabled(open) for this endpoint.
  final Input<String>? serverTlsPolicy;

  /// Optional. Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  final Input<TrafficPortSelector>? trafficPortSelector;

  /// The type of endpoint policy. This is primarily used to validate the configuration.
  final Input<EndpointPolicyType> type;

  EndpointPolicyArgs({
    this.authorizationPolicy,
    this.clientTlsPolicy,
    this.description,
    required this.endpointMatcher,
    required this.endpointPolicyId,
    this.labels,
    this.location,
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
    map['endpointMatcher'] =
        Input.mapInputValue<EndpointMatcher, Map<String, dynamic>>(
            endpointMatcher, (value) => value.toMap());
    map['endpointPolicyId'] = endpointPolicyId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
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
              TrafficPortSelector, Map<String, dynamic>>(
          trafficPortSelectorValue, (value) => value.toMap());
    }
    map['type'] = Input.mapInputValue<EndpointPolicyType, String>(
        type, (value) => value.value);
    return map;
  }

  factory EndpointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EndpointPolicyArgs(
      authorizationPolicy:
          Input.asOptionalInput<String>(map['authorizationPolicy']),
      clientTlsPolicy: Input.asOptionalInput<String>(map['clientTlsPolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      endpointMatcher: Input.asInput<EndpointMatcher>(map['endpointMatcher']),
      endpointPolicyId: Input.asInput<String>(map['endpointPolicyId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serverTlsPolicy: Input.asOptionalInput<String>(map['serverTlsPolicy']),
      trafficPortSelector: Input.asOptionalInput<TrafficPortSelector>(
          map['trafficPortSelector']),
      type: Input.asInput<EndpointPolicyType>(map['type']),
    );
  }
}
