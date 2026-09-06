// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'predefined_url_category_response.dart';

/// Result data returned by listGlobalRulestackPredefinedUrlCategories.
class ListGlobalRulestackPredefinedUrlCategoriesResult {
  /// next link
  final String? nextLink;
  /// predefined url categories
  final List<PredefinedUrlCategoryResponse>? value;

  /// Creates a new [ListGlobalRulestackPredefinedUrlCategoriesResult].
  /// [nextLink] next link
  /// [value] predefined url categories
  const ListGlobalRulestackPredefinedUrlCategoriesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<PredefinedUrlCategoryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListGlobalRulestackPredefinedUrlCategoriesResult.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackPredefinedUrlCategoriesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PredefinedUrlCategoryResponse>(guardedValue, (value) => PredefinedUrlCategoryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
