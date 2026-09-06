// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_status_response.dart';

/// The status of the wait duration.
class WaitStatusResponse {
  /// The status of the wait duration.
  final pulumi.Input<UpdateStatusResponse> status;
  /// The wait duration configured in seconds.
  final pulumi.Input<int> waitDurationInSeconds;

  /// Creates a new [WaitStatusResponse].
  /// [status] The status of the wait duration.
  /// [waitDurationInSeconds] The wait duration configured in seconds.
  const WaitStatusResponse({
    required this.status,
    required this.waitDurationInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': pulumi.Input.mapInputValue<UpdateStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'waitDurationInSeconds': waitDurationInSeconds,
    };
  }

  factory WaitStatusResponse.fromMap(Map<String, dynamic> map) {
    return WaitStatusResponse(
      status: pulumi.Input.fromValue(UpdateStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
      waitDurationInSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['waitDurationInSeconds'])),
    );
  }
}
