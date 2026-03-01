// ignore_for_file: unused_element, unnecessary_cast


class GetContainerGroupsGroupDnsConfigOption {
  /// The name of the object variable.
  final String name;
  /// The value of the object variable.
  final String value;

  /// Creates a new [GetContainerGroupsGroupDnsConfigOption].
  /// [name] The name of the object variable.
  /// [value] The value of the object variable.
  GetContainerGroupsGroupDnsConfigOption({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetContainerGroupsGroupDnsConfigOption.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupDnsConfigOption(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

