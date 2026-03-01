// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupSecurityContextSysctl {
  final String? name;
  final String? value;

  /// Creates a new [ContainerGroupSecurityContextSysctl].
  /// [name] Optional.
  /// [value] Optional.
  ContainerGroupSecurityContextSysctl({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ContainerGroupSecurityContextSysctl.fromMap(Map<String, dynamic> map) {
    return ContainerGroupSecurityContextSysctl(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

