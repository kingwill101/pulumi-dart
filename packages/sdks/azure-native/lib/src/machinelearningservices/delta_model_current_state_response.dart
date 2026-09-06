// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contract for DeltaModelCurrentState.
class DeltaModelCurrentStateResponse {
  /// Gets or sets Count of instances with model.
  final pulumi.Input<int?>? count;
  /// Gets or sets sample of instances with model.
  final pulumi.Input<String?>? sampleInstanceID;
  /// Gets or sets status.
  final pulumi.Input<String?>? status;

  /// Creates a new [DeltaModelCurrentStateResponse].
  /// [count] Gets or sets Count of instances with model.
  /// [sampleInstanceID] Gets or sets sample of instances with model.
  /// [status] Gets or sets status.
  DeltaModelCurrentStateResponse({
    pulumi.Input<int?>? count,
    this.sampleInstanceID,
    this.status,
  }) : count = count ?? pulumi.Input.fromValue(0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'sampleInstanceID': ?sampleInstanceID,
      'status': ?status,
    };
  }

  factory DeltaModelCurrentStateResponse.fromMap(Map<String, dynamic> map) {
    return DeltaModelCurrentStateResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sampleInstanceID: (() { final guardedValue = map['sampleInstanceID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
