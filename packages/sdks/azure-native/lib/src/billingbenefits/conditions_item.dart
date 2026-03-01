// ignore_for_file: unused_element, unnecessary_cast


/// Condition for a discount.
class ConditionsItem {
  final String? conditionName;
  final String? type;
  /// These items are open-ended strings.
  final List<String>? value;

  /// Creates a new [ConditionsItem].
  /// [conditionName] Optional.
  /// [type] Optional.
  /// [value] These items are open-ended strings.
  ConditionsItem({
    this.conditionName,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionName': ?conditionName,
      'type': ?type,
      'value': ?value,
    };
  }

  factory ConditionsItem.fromMap(Map<String, dynamic> map) {
    return ConditionsItem(
      conditionName: map['conditionName'] == null ? null : map['conditionName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : (map['value'] as List).cast<String>(),
    );
  }
}

