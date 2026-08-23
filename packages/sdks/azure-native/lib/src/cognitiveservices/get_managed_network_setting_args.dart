// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_managed_network_setting_args_doc}
/// Arguments for getManagedNetworkSetting.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_managed_network_setting_args_doc}
class GetManagedNetworkSettingArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Name of the managedNetwork associated with the cognitive services account. Only 'default' is supported.
  final pulumi.Input<String> managedNetworkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedNetworkSettingArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [managedNetworkName] Name of the managedNetwork associated with the cognitive services account. Only 'default' is supported.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetManagedNetworkSettingArgs({
    required this.accountName,
    required this.managedNetworkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'managedNetworkName': managedNetworkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedNetworkSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedNetworkSettingArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      managedNetworkName: pulumi.Input.fromValue(map['managedNetworkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
