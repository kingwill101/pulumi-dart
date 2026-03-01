// ignore_for_file: unused_element, unnecessary_cast


/// The container state.
class ContainerStateResponse {
  /// Human-readable status of this state.
  final String? detailStatus;
  /// The container exit code.
  final String? exitCode;
  /// Date/time when the container state finished.
  final String? finishTime;
  /// Date/time when the container state started.
  final String? startTime;
  /// The state of this container
  final String? state;

  /// Creates a new [ContainerStateResponse].
  /// [detailStatus] Human-readable status of this state.
  /// [exitCode] The container exit code.
  /// [finishTime] Date/time when the container state finished.
  /// [startTime] Date/time when the container state started.
  /// [state] The state of this container
  ContainerStateResponse({
    this.detailStatus,
    this.exitCode,
    this.finishTime,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailStatus': ?detailStatus,
      'exitCode': ?exitCode,
      'finishTime': ?finishTime,
      'startTime': ?startTime,
      'state': ?state,
    };
  }

  factory ContainerStateResponse.fromMap(Map<String, dynamic> map) {
    return ContainerStateResponse(
      detailStatus: map['detailStatus'] == null ? null : map['detailStatus'] as String,
      exitCode: map['exitCode'] == null ? null : map['exitCode'] as String,
      finishTime: map['finishTime'] == null ? null : map['finishTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

