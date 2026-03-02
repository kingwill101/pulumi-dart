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
    required this.accountName,
    required this.resourceGroupName,
    required this.shareName,
    required this.synchronizationSettingName,
  });

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
      accountName: (map['accountName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareName: (map['shareName'] as String).input(),
      synchronizationSettingName: (map['synchronizationSettingName'] as String).input(),
    );
  }
}

