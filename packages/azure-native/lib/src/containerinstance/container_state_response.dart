// ignore_for_file: unused_element, unnecessary_cast


/// The container instance state.
class ContainerStateResponse {
  /// The human-readable status of the container instance state.
  final String detailStatus;
  /// The container instance exit codes correspond to those from the `docker run` command.
  final int exitCode;
  /// The date-time when the container instance state finished.
  final String finishTime;
  /// The date-time when the container instance state started.
  final String startTime;
  /// The state of the container instance.
  final String state;

  /// Creates a new [ContainerStateResponse].
  /// [detailStatus] The human-readable status of the container instance state.
  /// [exitCode] The container instance exit codes correspond to those from the `docker run` command.
  /// [finishTime] The date-time when the container instance state finished.
  /// [startTime] The date-time when the container instance state started.
  /// [state] The state of the container instance.
  ContainerStateResponse({
    required this.detailStatus,
    required this.exitCode,
    required this.finishTime,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailStatus': detailStatus,
      'exitCode': exitCode,
      'finishTime': finishTime,
      'startTime': startTime,
      'state': state,
    };
  }

  factory ContainerStateResponse.fromMap(Map<String, dynamic> map) {
    return ContainerStateResponse(
      detailStatus: map['detailStatus'] as String,
      exitCode: map['exitCode'] as int,
      finishTime: map['finishTime'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
    );
  }
}

