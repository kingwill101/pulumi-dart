// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_matcher_networkservices_v1beta1.dart';
import 'endpoint_policy_type_networkservices_v1beta1.dart';
import 'traffic_port_selector_networkservices_v1beta1.dart';

/// The set of arguments for EndpointPolicy.
class EndpointPolicyNetworkservicesV1beta1Args {
  /// Optional. This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. Refer to Authorization. If this field is not specified, authorization is disabled(no authz checks) for this endpoint.
  final pulumi.Input<String>? authorizationPolicy;

  /// Optional. A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. More specifically, it is applied to the outgoing traffic from the proxy to the endpoint. This is typically used for sidecar model where the proxy identifies itself as endpoint to the control plane, with the connection between sidecar and endpoint requiring authentication. If this field is not set, authentication is disabled(open). Applicable only when EndpointPolicyType is SIDECAR_PROXY.
  final pulumi.Input<String>? clientTlsPolicy;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// A matcher that selects endpoints to which the policies should be applied.
  final pulumi.Input<EndpointMatcherNetworkservicesV1beta1> endpointMatcher;

  /// Required. Short name of the EndpointPolicy resource to be created. E.g. "CustomECS".
  final pulumi.Input<String> endpointPolicyId;

  /// Optional. Set of label tags associated with the EndpointPolicy resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. If this field is not set, authentication is disabled(open) for this endpoint.
  final pulumi.Input<String>? serverTlsPolicy;

  /// Optional. Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.
  final pulumi.Input<TrafficPortSelectorNetworkservicesV1beta1>?
      trafficPortSelector;

  /// The type of endpoint policy. This is primarily used to validate the configuration.
  final pulumi.Input<EndpointPolicyTypeNetworkservicesV1beta1> type;

  EndpointPolicyNetworkservicesV1beta1Args({
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
    map['endpointMatcher'] = pulumi.Input.mapInputValue<
        EndpointMatcherNetworkservicesV1beta1,
        Map<String, dynamic>>(endpointMatcher, (value) => value.toMap());
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
      map['trafficPortSelector'] = pulumi.Input.mapOptionalInputValue<
              TrafficPortSelectorNetworkservicesV1beta1, Map<String, dynamic>>(
          trafficPortSelectorValue, (value) => value.toMap());
    }
    map['type'] = pulumi.Input.mapInputValue<
        EndpointPolicyTypeNetworkservicesV1beta1,
        String>(type, (value) => value.value);
    return map;
  }

  factory EndpointPolicyNetworkservicesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return EndpointPolicyNetworkservicesV1beta1Args(
      authorizationPolicy:
          pulumi.Input.asOptionalInput<String>(map['authorizationPolicy']),
      clientTlsPolicy:
          pulumi.Input.asOptionalInput<String>(map['clientTlsPolicy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      endpointMatcher:
          pulumi.Input.asInput<EndpointMatcherNetworkservicesV1beta1>(
              map['endpointMatcher']),
      endpointPolicyId: pulumi.Input.asInput<String>(map['endpointPolicyId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serverTlsPolicy:
          pulumi.Input.asOptionalInput<String>(map['serverTlsPolicy']),
      trafficPortSelector: pulumi.Input.asOptionalInput<
              TrafficPortSelectorNetworkservicesV1beta1>(
          map['trafficPortSelector']),
      type: pulumi.Input.asInput<EndpointPolicyTypeNetworkservicesV1beta1>(
          map['type']),
    );
  }
}
