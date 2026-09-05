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
  final pulumi.Input<String?>? region;
  final pulumi.Input<NetworkInterfacePermissionTimeouts?>? timeouts;

  /// Creates a new [NetworkInterfacePermissionArgs].
  /// [awsAccountId] The Amazon Web Services account ID.
  /// [networkInterfaceId] The ID of the network interface.
  /// [permission] The type of permission to grant. Valid values are `INSTANCE-ATTACH` or `EIP-ASSOCIATE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const NetworkInterfacePermissionArgs({
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
      awsAccountId: pulumi.Input.fromValue(map['awsAccountId'] as String),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      permission: pulumi.Input.fromValue(map['permission'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfacePermissionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
