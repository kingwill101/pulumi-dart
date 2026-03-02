// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterSetting {
  final pulumi.Input<String> name;
  final pulumi.Input<String> value;

  /// Creates a new [GetClusterSetting].
  /// [name] Required.
  /// [value] Required.
  GetClusterSetting({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetClusterSetting.fromMap(Map<String, dynamic> map) {
    return GetClusterSetting(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

