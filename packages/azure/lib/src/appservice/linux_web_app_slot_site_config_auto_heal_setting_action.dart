// ignore_for_file: unused_element, unnecessary_cast


class LinuxWebAppSlotSiteConfigAutoHealSettingAction {
  /// Predefined action to be taken to an Auto Heal trigger. Possible values include: `Recycle`.
  final String actionType;
  /// The minimum amount of time in `hh:mm:ss` the Linux Web App must have been running before the defined action will be run in the event of a trigger.
  final String? minimumProcessExecutionTime;

  /// Creates a new [LinuxWebAppSlotSiteConfigAutoHealSettingAction].
  /// [actionType] Predefined action to be taken to an Auto Heal trigger. Possible values include: `Recycle`.
  /// [minimumProcessExecutionTime] The minimum amount of time in `hh:mm:ss` the Linux Web App must have been running before the defined action will be run in the event of a trigger.
  LinuxWebAppSlotSiteConfigAutoHealSettingAction({
    required this.actionType,
    this.minimumProcessExecutionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'minimumProcessExecutionTime': ?minimumProcessExecutionTime,
    };
  }

  factory LinuxWebAppSlotSiteConfigAutoHealSettingAction.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotSiteConfigAutoHealSettingAction(
      actionType: map['actionType'] as String,
      minimumProcessExecutionTime: map['minimumProcessExecutionTime'] == null ? null : map['minimumProcessExecutionTime'] as String,
    );
  }
}

