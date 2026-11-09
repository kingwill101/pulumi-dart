// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionEndpointRevisionWeight {
  /// ID of the revision traffic is routed to.
  final pulumi.Input<String> revisionId;
  /// Percentage of traffic served by that revision.
  final pulumi.Input<int> weight;

  /// Creates a new [GetFunctionEndpointRevisionWeight].
  /// [revisionId] ID of the revision traffic is routed to.
  /// [weight] Percentage of traffic served by that revision.
  const GetFunctionEndpointRevisionWeight({
    required this.revisionId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionId': revisionId,
      'weight': weight,
    };
  }

  factory GetFunctionEndpointRevisionWeight.fromMap(Map<String, dynamic> map) {
    return GetFunctionEndpointRevisionWeight(
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
      weight: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['weight'])),
    );
  }
}
