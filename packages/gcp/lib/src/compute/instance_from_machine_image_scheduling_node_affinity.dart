// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromMachineImageSchedulingNodeAffinity {
  final String key;
  final String operator;
  final List<String> values;

  /// Creates a new [InstanceFromMachineImageSchedulingNodeAffinity].
  /// [key] Required.
  /// [operator] Required.
  /// [values] Required.
  InstanceFromMachineImageSchedulingNodeAffinity({
    required this.key,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['operator'] = operator;
    map['values'] = values;
    return map;
  }

  factory InstanceFromMachineImageSchedulingNodeAffinity.fromMap(
      Map<String, dynamic> map) {
    return InstanceFromMachineImageSchedulingNodeAffinity(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
