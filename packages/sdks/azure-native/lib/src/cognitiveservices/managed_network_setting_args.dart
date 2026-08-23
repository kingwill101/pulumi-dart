// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_settings_properties.dart';

/// {@template pulumi_cognitiveservices_managed_network_setting_args_doc}
/// The set of arguments for ManagedNetworkSetting.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_managed_network_setting_args_doc}
class ManagedNetworkSettingArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Name of the managedNetwork associated with the cognitive services account. Only 'default' is supported.
  final pulumi.Input<String>? managedNetworkName;
  /// The properties of the managed network settings of a cognitive services account.
  final pulumi.Input<ManagedNetworkSettingsProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagedNetworkSettingArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [managedNetworkName] Name of the managedNetwork associated with the cognitive services account. Only 'default' is supported.
  /// [properties] The properties of the managed network settings of a cognitive services account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ManagedNetworkSettingArgs({
    required this.accountName,
    this.managedNetworkName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'managedNetworkName': ?managedNetworkName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagedNetworkSettingsProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagedNetworkSettingArgs.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkSettingArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      managedNetworkName: (() { final guardedValue = map['managedNetworkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedNetworkSettingsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
