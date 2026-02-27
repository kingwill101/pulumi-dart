// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../insight_filters/insight_filters.dart';

/// The set of arguments for Insight.
class InsightArgs {
  /// A configuration block including one or more (up to 10 distinct) attributes used to filter the findings included in the insight. The insight only includes findings that match criteria defined in the filters. See filters below for more details.
  final pulumi.Input<InsightFilters> filters;

  /// The attribute used to group the findings for the insight e.g., if an insight is grouped by `ResourceId`, then the insight produces a list of resource identifiers.
  final pulumi.Input<String> groupByAttribute;

  /// The name of the custom insight.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  InsightArgs({
    required this.filters,
    required this.groupByAttribute,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filters'] =
        pulumi.Input.mapInputValue<InsightFilters, Map<String, dynamic>>(
            filters, (value) => value.toMap());
    map['groupByAttribute'] = groupByAttribute;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InsightArgs.fromMap(Map<String, dynamic> map) {
    return InsightArgs(
      filters: pulumi.Input.asInput<InsightFilters>(map['filters']),
      groupByAttribute: pulumi.Input.asInput<String>(map['groupByAttribute']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
