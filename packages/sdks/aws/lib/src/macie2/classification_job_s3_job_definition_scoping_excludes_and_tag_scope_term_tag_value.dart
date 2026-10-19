// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue {
  /// Tag key.
  final pulumi.Input<String?>? key;
  /// Tag value.
  final pulumi.Input<String?>? value;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue].
  /// [key] Tag key.
  /// [value] Tag value.
  const ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValue(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
