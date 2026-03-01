// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppSiteConfigAutoHealSettingAction {
  /// The predefined action to be taken to an Auto Heal trigger.
  final String actionType;
  /// The minimum amount of time in `hh:mm:ss` the Linux Web App must have been running before the defined action will be run in the event of a trigger.
  final String minimumProcessExecutionTime;

  /// Creates a new [GetLinuxWebAppSiteConfigAutoHealSettingAction].
  /// [actionType] The predefined action to be taken to an Auto Heal trigger.
  /// [minimumProcessExecutionTime] The minimum amount of time in `hh:mm:ss` the Linux Web App must have been running before the defined action will be run in the event of a trigger.
  GetLinuxWebAppSiteConfigAutoHealSettingAction({
    required this.actionType,
    required this.minimumProcessExecutionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'minimumProcessExecutionTime': minimumProcessExecutionTime,
    };
  }

  factory GetLinuxWebAppSiteConfigAutoHealSettingAction.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigAutoHealSettingAction(
      actionType: map['actionType'] as String,
      minimumProcessExecutionTime: map['minimumProcessExecutionTime'] as String,
    );
  }
}

