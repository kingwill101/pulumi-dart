// ignore_for_file: unused_element, unnecessary_cast

import 'adv_security_object_model_response.dart';

/// Result data returned by listLocalRulestackAdvancedSecurityObjects.
class ListLocalRulestackAdvancedSecurityObjectsResult {
  /// next link
  final String? nextLink;
  /// response value
  final AdvSecurityObjectModelResponse value;

  /// Creates a new [ListLocalRulestackAdvancedSecurityObjectsResult].
  /// [nextLink] next link
  /// [value] response value
  ListLocalRulestackAdvancedSecurityObjectsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': value.toMap(),
    };
  }

  factory ListLocalRulestackAdvancedSecurityObjectsResult.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackAdvancedSecurityObjectsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: AdvSecurityObjectModelResponse.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

