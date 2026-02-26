// ignore_for_file: unused_element, unnecessary_cast

class TriggerMatchingCriteria {
  /// Required. The name of a CloudEvents attribute. Currently, only a subset of attributes are supported for filtering. All triggers MUST provide a filter for the 'type' attribute.
  final String attribute;

  /// Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`.
  final String? operator;

  /// Required. The value for the attribute. See https://cloud.google.com/eventarc/docs/creating-triggers#trigger-gcloud for available values.
  final String value;

  TriggerMatchingCriteria({
    required this.attribute,
    this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attribute'] = attribute;
    final operatorValue = operator;
    if (operatorValue != null) {
      map['operator'] = operatorValue;
    }
    map['value'] = value;
    return map;
  }

  factory TriggerMatchingCriteria.fromMap(Map<String, dynamic> map) {
    return TriggerMatchingCriteria(
      attribute: map['attribute'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      value: map['value'] as String,
    );
  }
}
