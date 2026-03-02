// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefenseRuleConfigCondition {
  /// Match field. Valid values: URL, URLPath, IP, Referer, User-Agent, Params, Cookie, Content-Type, Content-Length, X-Forwarded-For, Post-Body, Http-Method, Header, Host, HttpCode, and SensitiveInfo.
  ///
  /// > **NOTE:**  Support for matching fields is based on the display in the WAF console. HttpCode and SensitiveInfo are the matching fields supported by the information leakage prevention rule (dlp).
  final pulumi.Input<String>? key;
  /// Logical character. Value:
  /// - not-contain: does not contain.
  /// - contain: Indicates to contain.
  /// - none: It does not exist.
  /// - ne: means not equal.
  /// - eq: means equal.
  /// - lt: indicates that the value is less.
  /// - gt: indicates that the value is greater.
  /// - len-lt: indicates that the length is less.
  /// - len-eq: indicates that the length is equal.
  /// - len-gt: indicates that the length is greater.
  /// - not-match: indicates a mismatch.
  /// - match-one: means equal to one of the multiple values.
  /// - all-not-match: means not equal to any value.
  /// - all-not-contain: does not contain any value.
  /// - contain-one: Indicates that one of the multiple values is contained.
  /// - not-regex: Indicates a regular mismatch.
  /// - regex: Indicates a regular match.
  /// - all-not-regex: indicates that the regular expressions do not match.
  /// - regex-one: Represents a regular match for one of them.
  /// - prefix-match: Indicates a prefix match.
  /// - suffix-match: indicates a suffix match.
  /// - mpty: Indicates that the content is empty.
  /// - exists: Indicates that the field exists.
  /// - inl: indicates in the list.
  ///
  /// > **NOTE:**  Not all logical characters (opvalues) can be configured for the match field (key) of each custom rule. For the logical characters supported by different matching fields, please refer to the association relationship between the matching fields and the logical characters in the custom rules of the WAF console.
  final pulumi.Input<String>? opValue;
  /// The characteristics of the statistical object. When the Target parameter is set to cookie, header, or queryarg, you must specify the corresponding information in the Subkey parameter.
  final pulumi.Input<String>? subKey;
  /// Match the content and fill in the corresponding content as needed.
  ///
  /// > **NOTE:**  The value range of the logical (opValue) and matching content (values) parameters in the matching condition parameter is related to the specified matching field (key).
  final pulumi.Input<String>? values;

  /// Creates a new [DefenseRuleConfigCondition].
  /// [key] Match field. Valid values: URL, URLPath, IP, Referer, User-Agent, Params, Cookie, Content-Type, Content-Length, X-Forwarded-For, Post-Body, Http-Method, Header, Host, HttpCode, and SensitiveInfo.
  /// [opValue] Logical character. Value:
  /// [subKey] The characteristics of the statistical object. When the Target parameter is set to cookie, header, or queryarg, you must specify the corresponding information in the Subkey parameter.
  /// [values] Match the content and fill in the corresponding content as needed.
  DefenseRuleConfigCondition({
    this.key,
    this.opValue,
    this.subKey,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'opValue': ?opValue,
      'subKey': ?subKey,
      'values': ?values,
    };
  }

  factory DefenseRuleConfigCondition.fromMap(Map<String, dynamic> map) {
    return DefenseRuleConfigCondition(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      opValue: map['opValue'] == null ? null : (map['opValue']! as String).input(),
      subKey: map['subKey'] == null ? null : (map['subKey']! as String).input(),
      values: map['values'] == null ? null : (map['values']! as String).input(),
    );
  }
}

