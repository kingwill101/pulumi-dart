// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_arc_addon_args_doc}
/// The set of arguments for ArcAddon.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_arc_addon_args_doc}
class ArcAddonArgs {
  /// The addon name.
  final pulumi.Input<String>? addonName;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// Addon type.
  /// Expected value is 'ArcForKubernetes'.
  final pulumi.Input<String> kind;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Arc resource location
  final pulumi.Input<String> resourceLocation;
  /// Arc resource Name
  final pulumi.Input<String> resourceName;
  /// The role name.
  final pulumi.Input<String> roleName;
  /// Arc resource subscription Id
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [ArcAddonArgs].
  /// [addonName] The addon name.
  /// [deviceName] The device name.
  /// [kind] Addon type.
  /// [resourceGroupName] The resource group name.
  /// [resourceLocation] Arc resource location
  /// [resourceName] Arc resource Name
  /// [roleName] The role name.
  /// [subscriptionId] Arc resource subscription Id
  ArcAddonArgs({
    String? addonName,
    required String deviceName,
    required String kind,
    required String resourceGroupName,
    required String resourceLocation,
    required String resourceName,
    required String roleName,
    required String subscriptionId,
  }) :
      addonName = pulumi.Input.asOptionalInput<String>(addonName),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceLocation = pulumi.Input.asInput<String>(resourceLocation),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      roleName = pulumi.Input.asInput<String>(roleName),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': ?addonName,
      'deviceName': deviceName,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'resourceLocation': resourceLocation,
      'resourceName': resourceName,
      'roleName': roleName,
      'subscriptionId': subscriptionId,
    };
  }

  factory ArcAddonArgs.fromMap(Map<String, dynamic> map) {
    return ArcAddonArgs(
      addonName: map['addonName'] == null ? null : map['addonName'] as String,
      deviceName: map['deviceName'] as String,
      kind: map['kind'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceLocation: map['resourceLocation'] as String,
      resourceName: map['resourceName'] as String,
      roleName: map['roleName'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}

