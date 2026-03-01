// ignore_for_file: unused_element, unnecessary_cast


/// The parameters schema of integration account map.
class IntegrationAccountMapPropertiesResponseParametersSchema {
  /// The reference name.
  final String? ref;

  /// Creates a new [IntegrationAccountMapPropertiesResponseParametersSchema].
  /// [ref] The reference name.
  IntegrationAccountMapPropertiesResponseParametersSchema({
    this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ref': ?ref,
    };
  }

  factory IntegrationAccountMapPropertiesResponseParametersSchema.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountMapPropertiesResponseParametersSchema(
      ref: map['ref'] == null ? null : map['ref'] as String,
    );
  }
}

