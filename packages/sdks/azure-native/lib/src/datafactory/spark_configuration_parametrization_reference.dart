// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Spark configuration reference.
class SparkConfigurationParametrizationReference {
  /// Reference spark configuration name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> referenceName;
  /// Spark configuration reference type.
  final pulumi.Input<String> type;

  /// Creates a new [SparkConfigurationParametrizationReference].
  /// [referenceName] Reference spark configuration name. Type: string (or Expression with resultType string).
  /// [type] Spark configuration reference type.
  const SparkConfigurationParametrizationReference({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory SparkConfigurationParametrizationReference.fromMap(Map<String, dynamic> map) {
    return SparkConfigurationParametrizationReference(
      referenceName: pulumi.Input.fromValue(map['referenceName']),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
