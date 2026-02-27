// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for search.
class SearchArgs {
  /// String that includes keywords and filters that specify the resources that you want to include in the results. For the complete syntax supported by the QueryString parameter, see Search query syntax reference for [Resource Explorer](https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html). The search is completely case insensitive. You can specify an empty string to return all results up to the limit of 1,000 total results. The operation can return only the first 1,000 results. If the resource you want is not included, then use a different value for QueryString to refine the results.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> queryString;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the Amazon resource name (ARN) of the view to use for the query. If you don't specify a value for this parameter, then the operation automatically uses the default view for the AWS Region in which you called this operation. If the Region either doesn't have a default view or if you don't have permission to use the default view, then the operation fails with a `401 Unauthorized` exception.
  final pulumi.Input<String>? viewArn;

  SearchArgs({
    required this.queryString,
    this.region,
    this.viewArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queryString'] = queryString;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final viewArnValue = viewArn;
    if (viewArnValue != null) {
      map['viewArn'] = viewArnValue;
    }
    return map;
  }

  factory SearchArgs.fromMap(Map<String, dynamic> map) {
    return SearchArgs(
      queryString: pulumi.Input.asInput<String>(map['queryString']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      viewArn: pulumi.Input.asOptionalInput<String>(map['viewArn']),
    );
  }
}
