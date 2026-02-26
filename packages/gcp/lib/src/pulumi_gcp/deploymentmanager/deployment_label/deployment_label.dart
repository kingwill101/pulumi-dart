// ignore_for_file: unused_element, unnecessary_cast

class DeploymentLabel {
  /// Key for label.
  final String? key;

  /// Value of label.
  final String? value;

  DeploymentLabel({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory DeploymentLabel.fromMap(Map<String, dynamic> map) {
    return DeploymentLabel(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
