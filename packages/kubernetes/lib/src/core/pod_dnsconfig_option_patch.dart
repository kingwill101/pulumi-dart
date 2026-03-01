// ignore_for_file: unused_element, unnecessary_cast


/// PodDNSConfigOption defines DNS resolver options of a pod.
class PodDNSConfigOptionPatch {
  /// Name is this DNS resolver option's name. Required.
  final String? name;
  /// Value is this DNS resolver option's value.
  final String? value;

  /// Creates a new [PodDNSConfigOptionPatch].
  /// [name] Name is this DNS resolver option's name. Required.
  /// [value] Value is this DNS resolver option's value.
  PodDNSConfigOptionPatch({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory PodDNSConfigOptionPatch.fromMap(Map<String, dynamic> map) {
    return PodDNSConfigOptionPatch(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

