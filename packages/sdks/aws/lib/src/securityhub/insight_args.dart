// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insight_filters.dart';

/// {@template pulumi_securityhub_insight_insight_args_doc}
/// The set of arguments for Insight.
/// {@endtemplate}
/// {@macro pulumi_securityhub_insight_insight_args_doc}
class InsightArgs {
  /// A configuration block including one or more (up to 10 distinct) attributes used to filter the findings included in the insight. The insight only includes findings that match criteria defined in the filters. See filters below for more details.
  final pulumi.Input<InsightFilters> filters;
  /// The attribute used to group the findings for the insight e.g., if an insight is grouped by `ResourceId`, then the insight produces a list of resource identifiers.
  final pulumi.Input<String> groupByAttribute;
  /// The name of the custom insight.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InsightArgs].
  /// [filters] A configuration block including one or more (up to 10 distinct) attributes used to filter the findings included in the insight. The insight only includes findings that match criteria defined in the filters. See filters below for more details.
  /// [groupByAttribute] The attribute used to group the findings for the insight e.g., if an insight is grouped by `ResourceId`, then the insight produces a list of resource identifiers.
  /// [name] The name of the custom insight.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InsightArgs({
    required this.filters,
    required this.groupByAttribute,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': pulumi.Input.mapInputValue<InsightFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'groupByAttribute': groupByAttribute,
      'name': ?name,
      'region': ?region,
    };
  }

  factory InsightArgs.fromMap(Map<String, dynamic> map) {
    return InsightArgs(
      filters: pulumi.Input.fromValue(InsightFilters.fromMap((map['filters']! as Map).cast<String, dynamic>())),
      groupByAttribute: pulumi.Input.fromValue(map['groupByAttribute'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

