// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Desired properties of the backend instances of the broker
class BackendChainResponse {
  /// The desired number of physical backend partitions.
  final pulumi.Input<int> partitions;
  /// The desired numbers of backend replicas (pods) in a physical partition.
  final pulumi.Input<int> redundancyFactor;
  /// Number of logical backend workers per replica (pod).
  final pulumi.Input<int?>? workers;

  /// Creates a new [BackendChainResponse].
  /// [partitions] The desired number of physical backend partitions.
  /// [redundancyFactor] The desired numbers of backend replicas (pods) in a physical partition.
  /// [workers] Number of logical backend workers per replica (pod).
  BackendChainResponse({
    required this.partitions,
    required this.redundancyFactor,
    pulumi.Input<int?>? workers,
  }) : workers = workers ?? pulumi.Input.fromValue(1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitions': partitions,
      'redundancyFactor': redundancyFactor,
      'workers': ?workers,
    };
  }

  factory BackendChainResponse.fromMap(Map<String, dynamic> map) {
    return BackendChainResponse(
      partitions: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['partitions'])),
      redundancyFactor: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['redundancyFactor'])),
      workers: (() { final guardedValue = map['workers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
