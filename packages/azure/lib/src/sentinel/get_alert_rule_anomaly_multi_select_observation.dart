// ignore_for_file: unused_element, unnecessary_cast


class GetAlertRuleAnomalyMultiSelectObservation {
  /// The description of the threshold observation.
  final String description;
  /// The guid of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  final String name;
  /// A list of supported values of the single select observation.
  final List<String> supportedValues;
  /// A list of values of the single select observation.
  final List<String> values;

  /// Creates a new [GetAlertRuleAnomalyMultiSelectObservation].
  /// [description] The description of the threshold observation.
  /// [name] The guid of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  /// [supportedValues] A list of supported values of the single select observation.
  /// [values] A list of values of the single select observation.
  GetAlertRuleAnomalyMultiSelectObservation({
    required this.description,
    required this.name,
    required this.supportedValues,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'supportedValues': supportedValues,
      'values': values,
    };
  }

  factory GetAlertRuleAnomalyMultiSelectObservation.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleAnomalyMultiSelectObservation(
      description: map['description'] as String,
      name: map['name'] as String,
      supportedValues: (map['supportedValues'] as List).cast<String>(),
      values: (map['values'] as List).cast<String>(),
    );
  }
}

