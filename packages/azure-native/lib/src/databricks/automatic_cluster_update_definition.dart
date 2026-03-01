// ignore_for_file: unused_element, unnecessary_cast


/// Status of automated cluster updates feature.
class AutomaticClusterUpdateDefinition {
  final String? value;

  /// Creates a new [AutomaticClusterUpdateDefinition].
  /// [value] Optional.
  AutomaticClusterUpdateDefinition({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AutomaticClusterUpdateDefinition.fromMap(Map<String, dynamic> map) {
    return AutomaticClusterUpdateDefinition(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

