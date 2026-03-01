// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_scheduled_synchronization_setting_args_doc}
/// Arguments for getScheduledSynchronizationSetting.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_scheduled_synchronization_setting_args_doc}
class GetScheduledSynchronizationSettingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share.
  final pulumi.Input<String> shareName;
  /// The name of the synchronizationSetting.
  final pulumi.Input<String> synchronizationSettingName;

  /// Creates a new [GetScheduledSynchronizationSettingArgs].
  /// [accountName] The name of the share account.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share.
  /// [synchronizationSettingName] The name of the synchronizationSetting.
  GetScheduledSynchronizationSettingArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareName,
    required pulumi.Output<String> synchronizationSettingName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName),
      synchronizationSettingName = pulumi.Input.asInput<String>(synchronizationSettingName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'synchronizationSettingName': synchronizationSettingName,
    };
  }

  factory GetScheduledSynchronizationSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduledSynchronizationSettingArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
      synchronizationSettingName: pulumi.Output.create<String>(map['synchronizationSettingName'] as String),
    );
  }
}

