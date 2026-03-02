// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_permission_timeouts.dart';

/// {@template pulumi_ec2_network_interface_permission_network_interface_permission_args_doc}
/// The set of arguments for NetworkInterfacePermission.
/// {@endtemplate}
/// {@macro pulumi_ec2_network_interface_permission_network_interface_permission_args_doc}
class NetworkInterfacePermissionArgs {
  /// The Amazon Web Services account ID.
  final pulumi.Input<String> awsAccountId;
  /// The ID of the network interface.
  final pulumi.Input<String> networkInterfaceId;
  /// The type of permission to grant. Valid values are `INSTANCE-ATTACH` or `EIP-ASSOCIATE`.
  final pulumi.Input<String> permission;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<NetworkInterfacePermissionTimeouts>? timeouts;

  /// Creates a new [NetworkInterfacePermissionArgs].
  /// [awsAccountId] The Amazon Web Services account ID.
  /// [networkInterfaceId] The ID of the network interface.
  /// [permission] The type of permission to grant. Valid values are `INSTANCE-ATTACH` or `EIP-ASSOCIATE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  NetworkInterfacePermissionArgs({
    required this.awsAccountId,
    required this.networkInterfaceId,
    required this.permission,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': awsAccountId,
      'networkInterfaceId': networkInterfaceId,
      'permission': permission,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NetworkInterfacePermissionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NetworkInterfacePermissionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfacePermissionArgs(
      awsAccountId: (map['awsAccountId'] as String).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
      permission: (map['permission'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((NetworkInterfacePermissionTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

