// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTemplateApplicationsApplicationDimension {
  /// Quota dimension Key.
  final pulumi.Input<String> key;

  /// Quota dimension Value.
  final pulumi.Input<String> value;

  /// Creates a new [GetTemplateApplicationsApplicationDimension].
  /// [key] Quota dimension Key.
  /// [value] Quota dimension Value.
  GetTemplateApplicationsApplicationDimension({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory GetTemplateApplicationsApplicationDimension.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTemplateApplicationsApplicationDimension(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
