// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The desired properties of the frontend instances of the Broker
class FrontendResponse {
  /// The desired number of frontend instances (pods).
  final pulumi.Input<int> replicas;
  /// Number of logical frontend workers per instance (pod).
  final pulumi.Input<int?>? workers;

  /// Creates a new [FrontendResponse].
  /// [replicas] The desired number of frontend instances (pods).
  /// [workers] Number of logical frontend workers per instance (pod).
  FrontendResponse({
    required this.replicas,
    pulumi.Input<int?>? workers,
  }) : workers = workers ?? pulumi.Input.fromValue(2);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': replicas,
      'workers': ?workers,
    };
  }

  factory FrontendResponse.fromMap(Map<String, dynamic> map) {
    return FrontendResponse(
      replicas: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['replicas'])),
      workers: (() { final guardedValue = map['workers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
