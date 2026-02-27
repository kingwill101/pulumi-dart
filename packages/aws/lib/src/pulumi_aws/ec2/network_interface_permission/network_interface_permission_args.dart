// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_interface_permission_timeouts/network_interface_permission_timeouts.dart';

/// The set of arguments for NetworkInterfacePermission.
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

  NetworkInterfacePermissionArgs({
    required this.awsAccountId,
    required this.networkInterfaceId,
    required this.permission,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsAccountId'] = awsAccountId;
    map['networkInterfaceId'] = networkInterfaceId;
    map['permission'] = permission;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          NetworkInterfacePermissionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkInterfacePermissionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfacePermissionArgs(
      awsAccountId: pulumi.Input.asInput<String>(map['awsAccountId']),
      networkInterfaceId:
          pulumi.Input.asInput<String>(map['networkInterfaceId']),
      permission: pulumi.Input.asInput<String>(map['permission']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts:
          pulumi.Input.asOptionalInput<NetworkInterfacePermissionTimeouts>(
              map['timeouts']),
    );
  }
}
