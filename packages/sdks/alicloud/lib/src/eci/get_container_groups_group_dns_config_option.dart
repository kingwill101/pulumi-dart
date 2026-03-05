// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerGroupsGroupDnsConfigOption {
  /// The name of the object variable.
  final pulumi.Input<String> name;
  /// The value of the object variable.
  final pulumi.Input<String> value;

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
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

