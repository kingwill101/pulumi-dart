// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mcc cache node resource auto update properties.
class MccCacheNodeAutoUpdateInfoResponse {
  /// Auto update last applied status.
  final pulumi.Input<int> autoUpdateLastAppliedStatus;
  /// Auto update last applied detailed status text.
  final pulumi.Input<String> autoUpdateLastAppliedStatusDetailedText;
  /// Auto update last applied status text.
  final pulumi.Input<String> autoUpdateLastAppliedStatusText;
  /// Auto update Ring Type.
  final pulumi.Input<int> autoUpdateRingType;
  /// Auto update entity created datetime.
  final pulumi.Input<String> createdDateTimeUtc;
  /// Auto update image uri before update.
  final pulumi.Input<String> imageUriBeforeUpdate;
  /// Auto update image uri targetted to update.
  final pulumi.Input<String> imageUriTargeted;
  /// Auto update image uri at Terminal.
  final pulumi.Input<String> imageUriTerminal;
  /// Auto update image uri after update.
  final pulumi.Input<String> movedToTerminalStateDateTime;
  /// This text describing the purpose of the plan of auto update.
  final pulumi.Input<String> planChangeLogText;
  /// Auto update planId.
  final pulumi.Input<double> planId;
  /// Auto update image uri after update.
  final pulumi.Input<int> ruleRequestedDay;
  /// Auto update rule requested hour.
  final pulumi.Input<String> ruleRequestedHour;
  /// Auto update rule requested minute.
  final pulumi.Input<String> ruleRequestedMinute;
  /// Auto update image uri before update.
  final pulumi.Input<int> ruleRequestedWeek;
  /// Auto update time to go live date time.
  final pulumi.Input<String> timeToGoLiveDateTime;
  /// Auto update entity last updated datetime.
  final pulumi.Input<String> updatedRegistryDateTimeUtc;

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
  const MccCacheNodeAutoUpdateInfoResponse({
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
      autoUpdateLastAppliedStatus: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['autoUpdateLastAppliedStatus'])),
      autoUpdateLastAppliedStatusDetailedText: pulumi.Input.fromValue(map['autoUpdateLastAppliedStatusDetailedText'] as String),
      autoUpdateLastAppliedStatusText: pulumi.Input.fromValue(map['autoUpdateLastAppliedStatusText'] as String),
      autoUpdateRingType: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['autoUpdateRingType'])),
      createdDateTimeUtc: pulumi.Input.fromValue(map['createdDateTimeUtc'] as String),
      imageUriBeforeUpdate: pulumi.Input.fromValue(map['imageUriBeforeUpdate'] as String),
      imageUriTargeted: pulumi.Input.fromValue(map['imageUriTargeted'] as String),
      imageUriTerminal: pulumi.Input.fromValue(map['imageUriTerminal'] as String),
      movedToTerminalStateDateTime: pulumi.Input.fromValue(map['movedToTerminalStateDateTime'] as String),
      planChangeLogText: pulumi.Input.fromValue(map['planChangeLogText'] as String),
      planId: pulumi.Input.fromValue((map['planId'] as num).toDouble()),
      ruleRequestedDay: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['ruleRequestedDay'])),
      ruleRequestedHour: pulumi.Input.fromValue(map['ruleRequestedHour'] as String),
      ruleRequestedMinute: pulumi.Input.fromValue(map['ruleRequestedMinute'] as String),
      ruleRequestedWeek: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['ruleRequestedWeek'])),
      timeToGoLiveDateTime: pulumi.Input.fromValue(map['timeToGoLiveDateTime'] as String),
      updatedRegistryDateTimeUtc: pulumi.Input.fromValue(map['updatedRegistryDateTimeUtc'] as String),
    );
  }
}
