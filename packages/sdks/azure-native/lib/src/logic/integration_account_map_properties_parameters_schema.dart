// ignore_for_file: unused_element, unnecessary_cast


/// The parameters schema of integration account map.
class IntegrationAccountMapPropertiesParametersSchema {
  /// The reference name.
  final String? ref;

  /// Creates a new [IntegrationAccountMapPropertiesParametersSchema].
  /// [ref] The reference name.
  IntegrationAccountMapPropertiesParametersSchema({
    this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ref': ?ref,
    };
  }

  factory IntegrationAccountMapPropertiesParametersSchema.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountMapPropertiesParametersSchema(
      ref: map['ref'] == null ? null : map['ref'] as String,
    );
  }
}

