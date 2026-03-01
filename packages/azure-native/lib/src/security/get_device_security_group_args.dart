// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_device_security_group_args_doc}
/// Arguments for getDeviceSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_security_get_device_security_group_args_doc}
class GetDeviceSecurityGroupArgs {
  /// The name of the device security group. Note that the name of the device security group is case insensitive.
  final pulumi.Input<String> deviceSecurityGroupName;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;

  /// Creates a new [GetDeviceSecurityGroupArgs].
  /// [deviceSecurityGroupName] The name of the device security group. Note that the name of the device security group is case insensitive.
  /// [resourceId] The identifier of the resource.
  GetDeviceSecurityGroupArgs({
    required String deviceSecurityGroupName,
    required String resourceId,
  }) :
      deviceSecurityGroupName = pulumi.Input.asInput<String>(deviceSecurityGroupName),
      resourceId = pulumi.Input.asInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceSecurityGroupName': deviceSecurityGroupName,
      'resourceId': resourceId,
    };
  }

  factory GetDeviceSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceSecurityGroupArgs(
      deviceSecurityGroupName: map['deviceSecurityGroupName'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

