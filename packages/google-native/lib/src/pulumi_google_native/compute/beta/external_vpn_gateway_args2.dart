// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'external_vpn_gateway_interface2.dart';
import 'external_vpn_gateway_redundancy_type2.dart';

/// The set of arguments for ExternalVpnGateway.
class ExternalVpnGatewayArgs2 {
  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// A list of interfaces for this external VPN gateway. If your peer-side gateway is an on-premises gateway and non-AWS cloud providers' gateway, at most two interfaces can be provided for an external VPN gateway. If your peer side is an AWS virtual private gateway, four interfaces should be provided for an external VPN gateway.
  final Input<List<ExternalVpnGatewayInterface2>>? interfaces;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;

  /// Indicates the user-supplied redundancy type of this external VPN gateway.
  final Input<ExternalVpnGatewayRedundancyType2>? redundancyType;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  ExternalVpnGatewayArgs2({
    this.description,
    this.interfaces,
    this.labels,
    this.name,
    this.project,
    this.redundancyType,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final interfacesValue = interfaces;
    if (interfacesValue != null) {
      map['interfaces'] = Input.mapOptionalInputValue<
              List<ExternalVpnGatewayInterface2>, List<Map<String, dynamic>>>(
          interfacesValue,
          (value) => Input.encodeList<ExternalVpnGatewayInterface2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
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
    final redundancyTypeValue = redundancyType;
    if (redundancyTypeValue != null) {
      map['redundancyType'] = Input.mapOptionalInputValue<
          ExternalVpnGatewayRedundancyType2,
          String>(redundancyTypeValue, (value) => value.value);
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory ExternalVpnGatewayArgs2.fromMap(Map<String, dynamic> map) {
    return ExternalVpnGatewayArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      interfaces: Input.asOptionalInput<List<ExternalVpnGatewayInterface2>>(
          map['interfaces']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      redundancyType: Input.asOptionalInput<ExternalVpnGatewayRedundancyType2>(
          map['redundancyType']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
