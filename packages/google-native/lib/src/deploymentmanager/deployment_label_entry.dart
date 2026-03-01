// ignore_for_file: unused_element, unnecessary_cast

/// Label object for Deployments
class DeploymentLabelEntry {
  /// Key of the label
  final String? key;

  /// Value of the label
  final String? value;

  /// Creates a new [DeploymentLabelEntry].
  /// [key] Key of the label
  /// [value] Value of the label
  DeploymentLabelEntry({this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory DeploymentLabelEntry.fromMap(Map<String, dynamic> map) {
    return DeploymentLabelEntry(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
