// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoint {
  /// Type of access endpoint. Valid value is `STREAMING_WSP`.
  final pulumi.Input<String> accessEndpointType;
  /// Identifier of the VPC endpoint that the access endpoint uses.
  final pulumi.Input<String> vpcEndpointId;

  /// Creates a new [DirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoint].
  /// [accessEndpointType] Type of access endpoint. Valid value is `STREAMING_WSP`.
  /// [vpcEndpointId] Identifier of the VPC endpoint that the access endpoint uses.
  const DirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoint({
    required this.accessEndpointType,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpointType': accessEndpointType,
      'vpcEndpointId': vpcEndpointId,
    };
  }

  factory DirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoint.fromMap(Map<String, dynamic> map) {
    return DirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoint(
      accessEndpointType: pulumi.Input.fromValue(map['accessEndpointType'] as String),
      vpcEndpointId: pulumi.Input.fromValue(map['vpcEndpointId'] as String),
    );
  }
}
