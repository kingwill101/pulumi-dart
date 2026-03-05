// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryConnectSettings {
  final pulumi.Input<List<String>>? availabilityZones;
  /// The IP addresses of the AD Connector servers.
  final pulumi.Input<List<String>>? connectIps;
  /// The DNS IP addresses of the domain to connect to.
  final pulumi.Input<List<String>> customerDnsIps;
  /// The username corresponding to the password provided.
  final pulumi.Input<String> customerUsername;
  /// The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs).
  final pulumi.Input<List<String>> subnetIds;
  /// The identifier of the VPC that the directory is in.
  final pulumi.Input<String> vpcId;

  /// Creates a new [DirectoryConnectSettings].
  /// [availabilityZones] Optional.
  /// [connectIps] The IP addresses of the AD Connector servers.
  /// [customerDnsIps] The DNS IP addresses of the domain to connect to.
  /// [customerUsername] The username corresponding to the password provided.
  /// [subnetIds] The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs).
  /// [vpcId] The identifier of the VPC that the directory is in.
  DirectoryConnectSettings({
    this.availabilityZones,
    this.connectIps,
    required this.customerDnsIps,
    required this.customerUsername,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'connectIps': ?connectIps,
      'customerDnsIps': customerDnsIps,
      'customerUsername': customerUsername,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory DirectoryConnectSettings.fromMap(Map<String, dynamic> map) {
    return DirectoryConnectSettings(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectIps: (() { final guardedValue = map['connectIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      customerDnsIps: pulumi.Input.fromValue((map['customerDnsIps'] as List).cast<String>()),
      customerUsername: pulumi.Input.fromValue(map['customerUsername'] as String),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

