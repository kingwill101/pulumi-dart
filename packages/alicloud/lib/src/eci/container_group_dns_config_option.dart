// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupDnsConfigOption {
  final String? name;
  final String? value;

  /// Creates a new [ContainerGroupDnsConfigOption].
  /// [name] Optional.
  /// [value] Optional.
  ContainerGroupDnsConfigOption({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ContainerGroupDnsConfigOption.fromMap(Map<String, dynamic> map) {
    return ContainerGroupDnsConfigOption(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

