// ignore_for_file: unused_element, unnecessary_cast


class AlertConfigurationGroupConfiguration {
  /// The field used for grouping evaluation. When type is set to custom, fields must be set.
  final List<String>? fields;
  final String? type;

  /// Creates a new [AlertConfigurationGroupConfiguration].
  /// [fields] The field used for grouping evaluation. When type is set to custom, fields must be set.
  /// [type] Optional.
  AlertConfigurationGroupConfiguration({
    this.fields,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?fields,
      'type': ?type,
    };
  }

  factory AlertConfigurationGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationGroupConfiguration(
      fields: map['fields'] == null ? null : (map['fields'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

