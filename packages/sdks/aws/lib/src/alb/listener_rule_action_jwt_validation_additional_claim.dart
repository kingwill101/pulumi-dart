// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleActionJwtValidationAdditionalClaim {
  /// Format of the claim value. Valid values are `single-string`, `string-array` and `space-separated-values`.
  final pulumi.Input<String> format;
  /// Name of the claim to validate. `exp`, `iss`, `nbf`, or `iat` cannot be specified because they are validated by default.
  final pulumi.Input<String> name;
  /// List of expected values of the claim.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ListenerRuleActionJwtValidationAdditionalClaim].
  /// [format] Format of the claim value. Valid values are `single-string`, `string-array` and `space-separated-values`.
  /// [name] Name of the claim to validate. `exp`, `iss`, `nbf`, or `iat` cannot be specified because they are validated by default.
  /// [values] List of expected values of the claim.
  ListenerRuleActionJwtValidationAdditionalClaim({
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

  factory ListenerRuleActionJwtValidationAdditionalClaim.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionJwtValidationAdditionalClaim(
      format: (map['format'] as String).input(),
      name: (map['name'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

