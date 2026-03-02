// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleActionJwtValidationAdditionalClaim {
  /// Format of the claim value.
  final pulumi.Input<String> format;
  /// Name of the claim to validate.
  final pulumi.Input<String> name;
  /// Set of `key`-`value` pairs indicating the query string parameters to match.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetListenerRuleActionJwtValidationAdditionalClaim].
  /// [format] Format of the claim value.
  /// [name] Name of the claim to validate.
  /// [values] Set of `key`-`value` pairs indicating the query string parameters to match.
  GetListenerRuleActionJwtValidationAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'name': name,
      'values': values,
    };
  }

  factory GetListenerRuleActionJwtValidationAdditionalClaim.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleActionJwtValidationAdditionalClaim(
      format: (map['format'] as String).input(),
      name: (map['name'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

