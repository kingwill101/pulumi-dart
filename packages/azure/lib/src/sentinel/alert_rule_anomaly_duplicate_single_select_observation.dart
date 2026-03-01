// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleAnomalyDuplicateSingleSelectObservation {
  /// The description of the single select observation.
  final String? description;
  /// The name of the single select observation.
  final String name;
  /// A list of supported values of the single select observation.
  final List<String>? supportedValues;
  /// The value of the multi select observation.
  final String value;

  /// Creates a new [AlertRuleAnomalyDuplicateSingleSelectObservation].
  /// [description] The description of the single select observation.
  /// [name] The name of the single select observation.
  /// [supportedValues] A list of supported values of the single select observation.
  /// [value] The value of the multi select observation.
  AlertRuleAnomalyDuplicateSingleSelectObservation({
    this.description,
    required this.name,
    this.supportedValues,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'supportedValues': ?supportedValues,
      'value': value,
    };
  }

  factory AlertRuleAnomalyDuplicateSingleSelectObservation.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyDuplicateSingleSelectObservation(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      supportedValues: map['supportedValues'] == null ? null : (map['supportedValues'] as List).cast<String>(),
      value: map['value'] as String,
    );
  }
}

