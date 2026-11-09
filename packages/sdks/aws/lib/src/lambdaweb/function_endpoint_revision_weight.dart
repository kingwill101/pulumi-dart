// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionEndpointRevisionWeight {
  /// ID of the revision to route traffic to.
  final pulumi.Input<String> revisionId;
  /// Percentage of traffic for this revision (1-100). With one entry the weight must be 100; with two entries the weights must sum to 100.
  final pulumi.Input<int> weight;

  /// Creates a new [FunctionEndpointRevisionWeight].
  /// [revisionId] ID of the revision to route traffic to.
  /// [weight] Percentage of traffic for this revision (1-100). With one entry the weight must be 100; with two entries the weights must sum to 100.
  const FunctionEndpointRevisionWeight({
    required this.revisionId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionId': revisionId,
      'weight': weight,
    };
  }

  factory FunctionEndpointRevisionWeight.fromMap(Map<String, dynamic> map) {
    return FunctionEndpointRevisionWeight(
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
      weight: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['weight'])),
    );
  }
}
