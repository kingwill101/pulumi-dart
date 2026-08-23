// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RepoUpgradeOnBootEnumValue
class RepoUpgradeOnBootEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [RepoUpgradeOnBootEnumValueResponse].
  /// [value] Property value
  const RepoUpgradeOnBootEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RepoUpgradeOnBootEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return RepoUpgradeOnBootEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
