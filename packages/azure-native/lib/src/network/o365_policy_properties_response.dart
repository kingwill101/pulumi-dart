// ignore_for_file: unused_element, unnecessary_cast

import 'o365_break_out_category_policies_response.dart';

/// The Office365 breakout policy.
class O365PolicyPropertiesResponse {
  /// Office365 breakout categories.
  final O365BreakOutCategoryPoliciesResponse? breakOutCategories;

  /// Creates a new [O365PolicyPropertiesResponse].
  /// [breakOutCategories] Office365 breakout categories.
  O365PolicyPropertiesResponse({
    this.breakOutCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakOutCategories': ?breakOutCategories == null ? null : breakOutCategories!.toMap(),
    };
  }

  factory O365PolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return O365PolicyPropertiesResponse(
      breakOutCategories: map['breakOutCategories'] == null ? null : O365BreakOutCategoryPoliciesResponse.fromMap((map['breakOutCategories'] as Map).cast<String, dynamic>()),
    );
  }
}

