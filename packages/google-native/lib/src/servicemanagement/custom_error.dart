// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_error_rule.dart';

/// Customize service error responses. For example, list any service specific protobuf types that can appear in error detail lists of error responses. Example: custom_error: types: - google.foo.v1.CustomError - google.foo.v1.AnotherError
class CustomError {
  /// The list of custom error rules that apply to individual API messages. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<CustomErrorRule>? rules;
  /// The list of custom error detail types, e.g. 'google.foo.v1.CustomError'.
  final List<String>? types;

  /// Creates a new [CustomError].
  /// [rules] The list of custom error rules that apply to individual API messages. **NOTE:** All service configuration rules follow "last one wins" order.
  /// [types] The list of custom error detail types, e.g. 'google.foo.v1.CustomError'.
  CustomError({
    this.rules,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<CustomErrorRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'types': ?types,
    };
  }

  factory CustomError.fromMap(Map<String, dynamic> map) {
    return CustomError(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<CustomErrorRule>(map['rules'], (value) => CustomErrorRule.fromMap((value as Map).cast<String, dynamic>())),
      types: map['types'] == null ? null : (map['types'] as List).cast<String>(),
    );
  }
}

