// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_share_args_doc}
/// Arguments for getShare.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_share_args_doc}
class GetShareArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The share name.
  final pulumi.Input<String> name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetShareArgs].
  /// [deviceName] The device name.
  /// [name] The share name.
  /// [resourceGroupName] The resource group name.
  GetShareArgs({
    required String deviceName,
    required String name,
    required String resourceGroupName,
  }) :
      deviceName = pulumi.Input.asInput<String>(deviceName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetShareArgs.fromMap(Map<String, dynamic> map) {
    return GetShareArgs(
      deviceName: map['deviceName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

