// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_response_header_rule_filters.dart';
import 'bucket_response_header_rule_hide_headers.dart';

class BucketResponseHeaderRule {
  /// The container that holds the operations that need to be apply rules. See `filters` below.
  final pulumi.Input<BucketResponseHeaderRuleFilters>? filters;
  /// The container that holds the response headers that need to be hidden. See `hide_headers` below.
  final pulumi.Input<BucketResponseHeaderRuleHideHeaders>? hideHeaders;
  /// The response header rule name.
  final pulumi.Input<String>? name;

  /// Creates a new [BucketResponseHeaderRule].
  /// [filters] The container that holds the operations that need to be apply rules. See `filters` below.
  /// [hideHeaders] The container that holds the response headers that need to be hidden. See `hide_headers` below.
  /// [name] The response header rule name.
  BucketResponseHeaderRule({
    this.filters,
    this.hideHeaders,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<BucketResponseHeaderRuleFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'hideHeaders': ?pulumi.Input.mapOptionalInputValue<BucketResponseHeaderRuleHideHeaders, Map<String, dynamic>>(hideHeaders, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory BucketResponseHeaderRule.fromMap(Map<String, dynamic> map) {
    return BucketResponseHeaderRule(
      filters: map['filters'] == null ? null : (BucketResponseHeaderRuleFilters.fromMap((map['filters'] as Map).cast<String, dynamic>())).input(),
      hideHeaders: map['hideHeaders'] == null ? null : (BucketResponseHeaderRuleHideHeaders.fromMap((map['hideHeaders'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

