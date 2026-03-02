// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessComputeSettings {
  /// The resource ID of an existing virtual network subnet in which serverless compute nodes should be deployed
  final pulumi.Input<String>? serverlessComputeCustomSubnet;
  /// The flag to signal if serverless compute nodes deployed in custom vNet would have no public IP addresses for a workspace with private endpoint
  final pulumi.Input<bool>? serverlessComputeNoPublicIP;

  /// Creates a new [ServerlessComputeSettings].
  /// [serverlessComputeCustomSubnet] The resource ID of an existing virtual network subnet in which serverless compute nodes should be deployed
  /// [serverlessComputeNoPublicIP] The flag to signal if serverless compute nodes deployed in custom vNet would have no public IP addresses for a workspace with private endpoint
  ServerlessComputeSettings({
    this.serverlessComputeCustomSubnet,
    this.serverlessComputeNoPublicIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverlessComputeCustomSubnet': ?serverlessComputeCustomSubnet,
      'serverlessComputeNoPublicIP': ?serverlessComputeNoPublicIP,
    };
  }

  factory ServerlessComputeSettings.fromMap(Map<String, dynamic> map) {
    return ServerlessComputeSettings(
      serverlessComputeCustomSubnet: map['serverlessComputeCustomSubnet'] == null ? null : (map['serverlessComputeCustomSubnet'] as String).input(),
      serverlessComputeNoPublicIP: map['serverlessComputeNoPublicIP'] == null ? null : (map['serverlessComputeNoPublicIP'] as bool).input(),
    );
  }
}

