// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessComputeSettingsResponse {
  /// The resource ID of an existing virtual network subnet in which serverless compute nodes should be deployed
  final pulumi.Input<String>? serverlessComputeCustomSubnet;
  /// The flag to signal if serverless compute nodes deployed in custom vNet would have no public IP addresses for a workspace with private endpoint
  final pulumi.Input<bool>? serverlessComputeNoPublicIP;

  /// Creates a new [ServerlessComputeSettingsResponse].
  /// [serverlessComputeCustomSubnet] The resource ID of an existing virtual network subnet in which serverless compute nodes should be deployed
  /// [serverlessComputeNoPublicIP] The flag to signal if serverless compute nodes deployed in custom vNet would have no public IP addresses for a workspace with private endpoint
  ServerlessComputeSettingsResponse({
    this.serverlessComputeCustomSubnet,
    this.serverlessComputeNoPublicIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverlessComputeCustomSubnet': ?serverlessComputeCustomSubnet,
      'serverlessComputeNoPublicIP': ?serverlessComputeNoPublicIP,
    };
  }

  factory ServerlessComputeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ServerlessComputeSettingsResponse(
      serverlessComputeCustomSubnet: (() { final guardedValue = map['serverlessComputeCustomSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverlessComputeNoPublicIP: (() { final guardedValue = map['serverlessComputeNoPublicIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

