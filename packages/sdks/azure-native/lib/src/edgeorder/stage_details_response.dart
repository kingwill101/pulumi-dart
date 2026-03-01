// ignore_for_file: unused_element, unnecessary_cast


/// Resource stage details.
class StageDetailsResponse {
  /// Display name of the resource stage.
  final String displayName;
  /// Stage name.
  final String stageName;
  /// Stage status.
  final String stageStatus;
  /// Stage start time.
  final String startTime;

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
      displayName: map['displayName'] as String,
      stageName: map['stageName'] as String,
      stageStatus: map['stageStatus'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

