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
    pulumi.Output<String>? addonName,
    required pulumi.Output<String> deviceName,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceLocation,
    required pulumi.Output<String> resourceName,
    required pulumi.Output<String> roleName,
    required pulumi.Output<String> subscriptionId,
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
      addonName: map['addonName'] == null ? null : pulumi.Output.create<String>(map['addonName'] as String),
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceLocation: pulumi.Output.create<String>(map['resourceLocation'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      roleName: pulumi.Output.create<String>(map['roleName'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

