// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'predefined_url_category_response.dart';

/// Result data returned by listGlobalRulestackPredefinedUrlCategories.
class ListGlobalRulestackPredefinedUrlCategoriesResult {
  /// next link
  final String? nextLink;
  /// predefined url categories
  final List<PredefinedUrlCategoryResponse> value;

  /// Creates a new [ListGlobalRulestackPredefinedUrlCategoriesResult].
  /// [nextLink] next link
  /// [value] predefined url categories
  ListGlobalRulestackPredefinedUrlCategoriesResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<PredefinedUrlCategoryResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListGlobalRulestackPredefinedUrlCategoriesResult.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackPredefinedUrlCategoriesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: pulumi.Input.decodeList<PredefinedUrlCategoryResponse>(map['value']!, (value) => PredefinedUrlCategoryResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

