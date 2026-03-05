// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RepoUpgradeOnBootEnumValue
class RepoUpgradeOnBootEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [RepoUpgradeOnBootEnumValue].
  /// [value] Property value
  RepoUpgradeOnBootEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RepoUpgradeOnBootEnumValue.fromMap(Map<String, dynamic> map) {
    return RepoUpgradeOnBootEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

