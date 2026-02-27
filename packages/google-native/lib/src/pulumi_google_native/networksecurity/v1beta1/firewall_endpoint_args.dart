// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for FirewallEndpoint.
class FirewallEndpointArgs {
  /// Optional. Project to bill on endpoint uptime usage.
  final pulumi.Input<String>? billingProjectId;

  /// Optional. Description of the firewall endpoint. Max length 2048 characters.
  final pulumi.Input<String>? description;

  /// Required. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_id from the method_signature of Create RPC.
  final pulumi.Input<String> firewallEndpointId;

  /// Optional. Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> organizationId;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  FirewallEndpointArgs({
    this.billingProjectId,
    this.description,
    required this.firewallEndpointId,
    this.labels,
    this.location,
    required this.organizationId,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final billingProjectIdValue = billingProjectId;
    if (billingProjectIdValue != null) {
      map['billingProjectId'] = billingProjectIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['firewallEndpointId'] = firewallEndpointId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['organizationId'] = organizationId;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory FirewallEndpointArgs.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointArgs(
      billingProjectId:
          pulumi.Input.asOptionalInput<String>(map['billingProjectId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      firewallEndpointId:
          pulumi.Input.asInput<String>(map['firewallEndpointId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
