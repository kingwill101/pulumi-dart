// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Synapse spark job reference type.
class SynapseSparkJobReferenceResponse {
  /// Reference spark job name. Expression with resultType string.
  final pulumi.Input<dynamic> referenceName;
  /// Synapse spark job reference type.
  final pulumi.Input<String> type;

  /// Creates a new [SynapseSparkJobReferenceResponse].
  /// [referenceName] Reference spark job name. Expression with resultType string.
  /// [type] Synapse spark job reference type.
  SynapseSparkJobReferenceResponse({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory SynapseSparkJobReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SynapseSparkJobReferenceResponse(
      referenceName: pulumi.Input.fromValue(map['referenceName']),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

