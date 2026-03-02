// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclDataProtectionConfigDataProtectionField {
  /// Array of strings to specify the keys to protect for the specified field type. If you don't specify any key, then all keys for the field type are protected.
  final pulumi.Input<List<String>>? fieldKeys;
  /// Specifies the web request component type to protect. Valid Values are `SINGLE_HEADER`, `SINGLE_COOKIE`, `SINGLE_QUERY_ARGUMENT`, `QUERY_STRING`, `BODY`.
  final pulumi.Input<String> fieldType;

  /// Creates a new [WebAclDataProtectionConfigDataProtectionField].
  /// [fieldKeys] Array of strings to specify the keys to protect for the specified field type. If you don't specify any key, then all keys for the field type are protected.
  /// [fieldType] Specifies the web request component type to protect. Valid Values are `SINGLE_HEADER`, `SINGLE_COOKIE`, `SINGLE_QUERY_ARGUMENT`, `QUERY_STRING`, `BODY`.
  WebAclDataProtectionConfigDataProtectionField({
    this.fieldKeys,
    required this.fieldType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldKeys': ?fieldKeys,
      'fieldType': fieldType,
    };
  }

  factory WebAclDataProtectionConfigDataProtectionField.fromMap(Map<String, dynamic> map) {
    return WebAclDataProtectionConfigDataProtectionField(
      fieldKeys: map['fieldKeys'] == null ? null : ((map['fieldKeys'] as List).cast<String>()).input(),
      fieldType: (map['fieldType'] as String).input(),
    );
  }
}

