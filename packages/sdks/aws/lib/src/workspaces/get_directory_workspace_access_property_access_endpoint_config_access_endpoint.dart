// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectoryWorkspaceAccessPropertyAccessEndpointConfigAccessEndpoint {
  /// Type of access endpoint.
  final pulumi.Input<String> accessEndpointType;
  /// Identifier of the VPC endpoint that the access endpoint uses.
  final pulumi.Input<String> vpcEndpointId;

  /// Creates a new [GetDirectoryWorkspaceAccessPropertyAccessEndpointConfigAccessEndpoint].
  /// [accessEndpointType] Type of access endpoint.
  /// [vpcEndpointId] Identifier of the VPC endpoint that the access endpoint uses.
  const GetDirectoryWorkspaceAccessPropertyAccessEndpointConfigAccessEndpoint({
    required this.accessEndpointType,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpointType': accessEndpointType,
      'vpcEndpointId': vpcEndpointId,
    };
  }

  factory GetDirectoryWorkspaceAccessPropertyAccessEndpointConfigAccessEndpoint.fromMap(Map<String, dynamic> map) {
    return GetDirectoryWorkspaceAccessPropertyAccessEndpointConfigAccessEndpoint(
      accessEndpointType: pulumi.Input.fromValue(map['accessEndpointType'] as String),
      vpcEndpointId: pulumi.Input.fromValue(map['vpcEndpointId'] as String),
    );
  }
}
