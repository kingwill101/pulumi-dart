// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebFunctionRevisionWeight {
  /// ID of a published revision of the endpoint's function.
  final pulumi.Input<String> revisionId;
  /// Integer percentage of traffic to send to this revision.
  ///
  /// Default - 100 for a single revision. Required for each entry when splitting traffic.
  final pulumi.Input<double?>? weight;

  /// Creates a new [WebFunctionRevisionWeight].
  /// [revisionId] ID of a published revision of the endpoint's function.
  /// [weight] Integer percentage of traffic to send to this revision.
  const WebFunctionRevisionWeight({
    required this.revisionId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionId': revisionId,
      'weight': ?weight,
    };
  }

  factory WebFunctionRevisionWeight.fromMap(Map<String, dynamic> map) {
    return WebFunctionRevisionWeight(
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
