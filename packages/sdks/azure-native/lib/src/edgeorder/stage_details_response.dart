// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource stage details.
class StageDetailsResponse {
  /// Display name of the resource stage.
  final pulumi.Input<String> displayName;

  /// Stage name.
  final pulumi.Input<String> stageName;

  /// Stage status.
  final pulumi.Input<String> stageStatus;

  /// Stage start time.
  final pulumi.Input<String> startTime;

  /// Creates a new [StageDetailsResponse].
  /// [displayName] Display name of the resource stage.
  /// [stageName] Stage name.
  /// [stageStatus] Stage status.
  /// [startTime] Stage start time.
  StageDetailsResponse({
    required this.displayName,
    required this.stageName,
    required this.stageStatus,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'stageName': stageName,
      'stageStatus': stageStatus,
      'startTime': startTime,
    };
  }

  factory StageDetailsResponse.fromMap(Map<String, dynamic> map) {
    return StageDetailsResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      stageName: pulumi.Input.fromValue(map['stageName'] as String),
      stageStatus: pulumi.Input.fromValue(map['stageStatus'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
