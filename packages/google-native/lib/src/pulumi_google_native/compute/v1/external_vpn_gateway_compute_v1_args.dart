// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_vpn_gateway_interface_compute_v1.dart';
import 'external_vpn_gateway_redundancy_type_compute_v1.dart';

/// The set of arguments for ExternalVpnGateway.
class ExternalVpnGatewayComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// A list of interfaces for this external VPN gateway. If your peer-side gateway is an on-premises gateway and non-AWS cloud providers' gateway, at most two interfaces can be provided for an external VPN gateway. If your peer side is an AWS virtual private gateway, four interfaces should be provided for an external VPN gateway.
  final pulumi.Input<List<ExternalVpnGatewayInterfaceComputeV1>>? interfaces;

  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Indicates the user-supplied redundancy type of this external VPN gateway.
  final pulumi.Input<ExternalVpnGatewayRedundancyTypeComputeV1>? redundancyType;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  ExternalVpnGatewayComputeV1Args({
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
      map['interfaces'] = pulumi.Input.mapOptionalInputValue<
              List<ExternalVpnGatewayInterfaceComputeV1>,
              List<Map<String, dynamic>>>(
          interfacesValue,
          (value) => pulumi.Input.encodeList<
              ExternalVpnGatewayInterfaceComputeV1,
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
      map['redundancyType'] = pulumi.Input.mapOptionalInputValue<
          ExternalVpnGatewayRedundancyTypeComputeV1,
          String>(redundancyTypeValue, (value) => value.value);
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory ExternalVpnGatewayComputeV1Args.fromMap(Map<String, dynamic> map) {
    return ExternalVpnGatewayComputeV1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      interfaces: pulumi.Input.asOptionalInput<
          List<ExternalVpnGatewayInterfaceComputeV1>>(map['interfaces']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      redundancyType: pulumi.Input.asOptionalInput<
          ExternalVpnGatewayRedundancyTypeComputeV1>(map['redundancyType']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
