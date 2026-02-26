// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_interface_permission_timeouts/network_interface_permission_timeouts.dart';

/// The set of arguments for NetworkInterfacePermission.
class NetworkInterfacePermissionArgs {
  /// The Amazon Web Services account ID.
  final Input<String> awsAccountId;

  /// The ID of the network interface.
  final Input<String> networkInterfaceId;

  /// The type of permission to grant. Valid values are `INSTANCE-ATTACH` or `EIP-ASSOCIATE`.
  final Input<String> permission;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<NetworkInterfacePermissionTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<
          NetworkInterfacePermissionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkInterfacePermissionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfacePermissionArgs(
      awsAccountId: Input.asInput<String>(map['awsAccountId']),
      networkInterfaceId: Input.asInput<String>(map['networkInterfaceId']),
      permission: Input.asInput<String>(map['permission']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts: Input.asOptionalInput<NetworkInterfacePermissionTimeouts>(
          map['timeouts']),
    );
  }
}
