// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_permission_timeouts.dart';

/// Input properties used for looking up and filtering NetworkInterfacePermission resources.
class NetworkInterfacePermissionState {
  /// The Amazon Web Services account ID.
  final pulumi.Input<String>? awsAccountId;
  /// The ID of the network interface.
  final pulumi.Input<String>? networkInterfaceId;
  /// ENI permission ID.
  final pulumi.Input<String>? networkInterfacePermissionId;
  /// The type of permission to grant. Valid values are `INSTANCE-ATTACH` or `EIP-ASSOCIATE`.
  final pulumi.Input<String>? permission;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<NetworkInterfacePermissionTimeouts>? timeouts;

  /// Creates a new [NetworkInterfacePermissionState].
  /// [awsAccountId] The Amazon Web Services account ID.
  /// [networkInterfaceId] The ID of the network interface.
  /// [networkInterfacePermissionId] ENI permission ID.
  /// [permission] The type of permission to grant. Valid values are `INSTANCE-ATTACH` or `EIP-ASSOCIATE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const NetworkInterfacePermissionState({
    this.awsAccountId,
    this.networkInterfaceId,
    this.networkInterfacePermissionId,
    this.permission,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'networkInterfaceId': ?networkInterfaceId,
      'networkInterfacePermissionId': ?networkInterfacePermissionId,
      'permission': ?permission,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NetworkInterfacePermissionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NetworkInterfacePermissionState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfacePermissionState(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfacePermissionId: (() { final guardedValue = map['networkInterfacePermissionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permission: (() { final guardedValue = map['permission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfacePermissionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
