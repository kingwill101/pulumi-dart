// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectoryConnectSetting {
  final pulumi.Input<List<String>> availabilityZones;

  /// IP addresses of the AD Connector servers.
  final pulumi.Input<List<String>> connectIps;

  /// DNS IP addresses of the domain to connect to.
  final pulumi.Input<List<String>> customerDnsIps;

  /// Username corresponding to the password provided.
  final pulumi.Input<String> customerUsername;

  /// Identifiers of the subnets for the connector servers (2 subnets in 2 different AZs).
  final pulumi.Input<List<String>> subnetIds;

  /// ID of the VPC that the connector is in.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetDirectoryConnectSetting].
  /// [availabilityZones] Required.
  /// [connectIps] IP addresses of the AD Connector servers.
  /// [customerDnsIps] DNS IP addresses of the domain to connect to.
  /// [customerUsername] Username corresponding to the password provided.
  /// [subnetIds] Identifiers of the subnets for the connector servers (2 subnets in 2 different AZs).
  /// [vpcId] ID of the VPC that the connector is in.
  GetDirectoryConnectSetting({
    required this.availabilityZones,
    required this.connectIps,
    required this.customerDnsIps,
    required this.customerUsername,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': availabilityZones,
      'connectIps': connectIps,
      'customerDnsIps': customerDnsIps,
      'customerUsername': customerUsername,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory GetDirectoryConnectSetting.fromMap(Map<String, dynamic> map) {
    return GetDirectoryConnectSetting(
      availabilityZones: pulumi.Input.fromValue(
        (map['availabilityZones'] as List).cast<String>(),
      ),
      connectIps: pulumi.Input.fromValue(
        (map['connectIps'] as List).cast<String>(),
      ),
      customerDnsIps: pulumi.Input.fromValue(
        (map['customerDnsIps'] as List).cast<String>(),
      ),
      customerUsername: pulumi.Input.fromValue(
        map['customerUsername'] as String,
      ),
      subnetIds: pulumi.Input.fromValue(
        (map['subnetIds'] as List).cast<String>(),
      ),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
