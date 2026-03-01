// ignore_for_file: unused_element, unnecessary_cast

import 'adv_security_object_model_response.dart';

/// Result data returned by listGlobalRulestackAdvancedSecurityObjects.
class ListGlobalRulestackAdvancedSecurityObjectsResult {
  /// next link
  final String? nextLink;
  /// response value
  final AdvSecurityObjectModelResponse value;

  /// Creates a new [ListGlobalRulestackAdvancedSecurityObjectsResult].
  /// [nextLink] next link
  /// [value] response value
  ListGlobalRulestackAdvancedSecurityObjectsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': value.toMap(),
    };
  }

  factory ListGlobalRulestackAdvancedSecurityObjectsResult.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackAdvancedSecurityObjectsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: AdvSecurityObjectModelResponse.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

