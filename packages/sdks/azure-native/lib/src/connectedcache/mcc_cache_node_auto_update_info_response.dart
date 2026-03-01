// ignore_for_file: unused_element, unnecessary_cast


/// Mcc cache node resource auto update properties.
class MccCacheNodeAutoUpdateInfoResponse {
  /// Auto update last applied status.
  final int autoUpdateLastAppliedStatus;
  /// Auto update last applied detailed status text.
  final String autoUpdateLastAppliedStatusDetailedText;
  /// Auto update last applied status text.
  final String autoUpdateLastAppliedStatusText;
  /// Auto update Ring Type.
  final int autoUpdateRingType;
  /// Auto update entity created datetime.
  final String createdDateTimeUtc;
  /// Auto update image uri before update.
  final String imageUriBeforeUpdate;
  /// Auto update image uri targetted to update.
  final String imageUriTargeted;
  /// Auto update image uri at Terminal.
  final String imageUriTerminal;
  /// Auto update image uri after update.
  final String movedToTerminalStateDateTime;
  /// This text describing the purpose of the plan of auto update.
  final String planChangeLogText;
  /// Auto update planId.
  final double planId;
  /// Auto update image uri after update.
  final int ruleRequestedDay;
  /// Auto update rule requested hour.
  final String ruleRequestedHour;
  /// Auto update rule requested minute.
  final String ruleRequestedMinute;
  /// Auto update image uri before update.
  final int ruleRequestedWeek;
  /// Auto update time to go live date time.
  final String timeToGoLiveDateTime;
  /// Auto update entity last updated datetime.
  final String updatedRegistryDateTimeUtc;

  /// Creates a new [MccCacheNodeAutoUpdateInfoResponse].
  /// [autoUpdateLastAppliedStatus] Auto update last applied status.
  /// [autoUpdateLastAppliedStatusDetailedText] Auto update last applied detailed status text.
  /// [autoUpdateLastAppliedStatusText] Auto update last applied status text.
  /// [autoUpdateRingType] Auto update Ring Type.
  /// [createdDateTimeUtc] Auto update entity created datetime.
  /// [imageUriBeforeUpdate] Auto update image uri before update.
  /// [imageUriTargeted] Auto update image uri targetted to update.
  /// [imageUriTerminal] Auto update image uri at Terminal.
  /// [movedToTerminalStateDateTime] Auto update image uri after update.
  /// [planChangeLogText] This text describing the purpose of the plan of auto update.
  /// [planId] Auto update planId.
  /// [ruleRequestedDay] Auto update image uri after update.
  /// [ruleRequestedHour] Auto update rule requested hour.
  /// [ruleRequestedMinute] Auto update rule requested minute.
  /// [ruleRequestedWeek] Auto update image uri before update.
  /// [timeToGoLiveDateTime] Auto update time to go live date time.
  /// [updatedRegistryDateTimeUtc] Auto update entity last updated datetime.
  MccCacheNodeAutoUpdateInfoResponse({
    required this.autoUpdateLastAppliedStatus,
    required this.autoUpdateLastAppliedStatusDetailedText,
    required this.autoUpdateLastAppliedStatusText,
    required this.autoUpdateRingType,
    required this.createdDateTimeUtc,
    required this.imageUriBeforeUpdate,
    required this.imageUriTargeted,
    required this.imageUriTerminal,
    required this.movedToTerminalStateDateTime,
    required this.planChangeLogText,
    required this.planId,
    required this.ruleRequestedDay,
    required this.ruleRequestedHour,
    required this.ruleRequestedMinute,
    required this.ruleRequestedWeek,
    required this.timeToGoLiveDateTime,
    required this.updatedRegistryDateTimeUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpdateLastAppliedStatus': autoUpdateLastAppliedStatus,
      'autoUpdateLastAppliedStatusDetailedText': autoUpdateLastAppliedStatusDetailedText,
      'autoUpdateLastAppliedStatusText': autoUpdateLastAppliedStatusText,
      'autoUpdateRingType': autoUpdateRingType,
      'createdDateTimeUtc': createdDateTimeUtc,
      'imageUriBeforeUpdate': imageUriBeforeUpdate,
      'imageUriTargeted': imageUriTargeted,
      'imageUriTerminal': imageUriTerminal,
      'movedToTerminalStateDateTime': movedToTerminalStateDateTime,
      'planChangeLogText': planChangeLogText,
      'planId': planId,
      'ruleRequestedDay': ruleRequestedDay,
      'ruleRequestedHour': ruleRequestedHour,
      'ruleRequestedMinute': ruleRequestedMinute,
      'ruleRequestedWeek': ruleRequestedWeek,
      'timeToGoLiveDateTime': timeToGoLiveDateTime,
      'updatedRegistryDateTimeUtc': updatedRegistryDateTimeUtc,
    };
  }

  factory MccCacheNodeAutoUpdateInfoResponse.fromMap(Map<String, dynamic> map) {
    return MccCacheNodeAutoUpdateInfoResponse(
      autoUpdateLastAppliedStatus: map['autoUpdateLastAppliedStatus'] as int,
      autoUpdateLastAppliedStatusDetailedText: map['autoUpdateLastAppliedStatusDetailedText'] as String,
      autoUpdateLastAppliedStatusText: map['autoUpdateLastAppliedStatusText'] as String,
      autoUpdateRingType: map['autoUpdateRingType'] as int,
      createdDateTimeUtc: map['createdDateTimeUtc'] as String,
      imageUriBeforeUpdate: map['imageUriBeforeUpdate'] as String,
      imageUriTargeted: map['imageUriTargeted'] as String,
      imageUriTerminal: map['imageUriTerminal'] as String,
      movedToTerminalStateDateTime: map['movedToTerminalStateDateTime'] as String,
      planChangeLogText: map['planChangeLogText'] as String,
      planId: map['planId'] as double,
      ruleRequestedDay: map['ruleRequestedDay'] as int,
      ruleRequestedHour: map['ruleRequestedHour'] as String,
      ruleRequestedMinute: map['ruleRequestedMinute'] as String,
      ruleRequestedWeek: map['ruleRequestedWeek'] as int,
      timeToGoLiveDateTime: map['timeToGoLiveDateTime'] as String,
      updatedRegistryDateTimeUtc: map['updatedRegistryDateTimeUtc'] as String,
    );
  }
}

