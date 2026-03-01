// ignore_for_file: unused_element, unnecessary_cast


/// Synapse spark job reference type.
class SynapseSparkJobReference {
  /// Reference spark job name. Expression with resultType string.
  final dynamic referenceName;
  /// Synapse spark job reference type.
  final String type;

  /// Creates a new [SynapseSparkJobReference].
  /// [referenceName] Reference spark job name. Expression with resultType string.
  /// [type] Synapse spark job reference type.
  SynapseSparkJobReference({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory SynapseSparkJobReference.fromMap(Map<String, dynamic> map) {
    return SynapseSparkJobReference(
      referenceName: map['referenceName'],
      type: map['type'] as String,
    );
  }
}

