// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The container instance state.
class ContainerStateResponse {
  /// The human-readable status of the container instance state.
  final pulumi.Input<String> detailStatus;
  /// The container instance exit codes correspond to those from the `docker run` command.
  final pulumi.Input<int> exitCode;
  /// The date-time when the container instance state finished.
  final pulumi.Input<String> finishTime;
  /// The date-time when the container instance state started.
  final pulumi.Input<String> startTime;
  /// The state of the container instance.
  final pulumi.Input<String> state;

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
      detailStatus: (map['detailStatus'] as String).input(),
      exitCode: (map['exitCode'] as int).input(),
      finishTime: (map['finishTime'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

