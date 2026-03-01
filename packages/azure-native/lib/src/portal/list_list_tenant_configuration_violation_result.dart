// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'violation_response.dart';

/// Result data returned by listListTenantConfigurationViolation.
class ListListTenantConfigurationViolationResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The Violation items on this page
  final List<ViolationResponse> value;

  /// Creates a new [ListListTenantConfigurationViolationResult].
  /// [nextLink] The link to the next page of items
  /// [value] The Violation items on this page
  ListListTenantConfigurationViolationResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<ViolationResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListListTenantConfigurationViolationResult.fromMap(Map<String, dynamic> map) {
    return ListListTenantConfigurationViolationResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: pulumi.Input.decodeList<ViolationResponse>(map['value'], (value) => ViolationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

