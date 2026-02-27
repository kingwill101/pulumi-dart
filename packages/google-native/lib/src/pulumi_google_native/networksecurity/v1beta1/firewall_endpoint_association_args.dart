// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for FirewallEndpointAssociation.
class FirewallEndpointAssociationArgs {
  /// The URL of the FirewallEndpoint that is being associated.
  final Input<String> firewallEndpoint;

  /// Optional. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_association_id from the method_signature of Create RPC.
  final Input<String>? firewallEndpointAssociationId;

  /// Optional. Labels as key value pairs
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The URL of the network that is being associated.
  final Input<String> network;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. The URL of the TlsInspectionPolicy that is being associated.
  final Input<String>? tlsInspectionPolicy;

  FirewallEndpointAssociationArgs({
    required this.firewallEndpoint,
    this.firewallEndpointAssociationId,
    this.labels,
    this.location,
    required this.network,
    this.project,
    this.requestId,
    this.tlsInspectionPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallEndpoint'] = firewallEndpoint;
    final firewallEndpointAssociationIdValue = firewallEndpointAssociationId;
    if (firewallEndpointAssociationIdValue != null) {
      map['firewallEndpointAssociationId'] = firewallEndpointAssociationIdValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final tlsInspectionPolicyValue = tlsInspectionPolicy;
    if (tlsInspectionPolicyValue != null) {
      map['tlsInspectionPolicy'] = tlsInspectionPolicyValue;
    }
    return map;
  }

  factory FirewallEndpointAssociationArgs.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointAssociationArgs(
      firewallEndpoint: Input.asInput<String>(map['firewallEndpoint']),
      firewallEndpointAssociationId:
          Input.asOptionalInput<String>(map['firewallEndpointAssociationId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      network: Input.asInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      tlsInspectionPolicy:
          Input.asOptionalInput<String>(map['tlsInspectionPolicy']),
    );
  }
}
