// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insight_filters.dart';

/// Input properties used for looking up and filtering Insight resources.
class InsightState {
  /// ARN of the insight.
  final pulumi.Input<String>? arn;
  /// A configuration block including one or more (up to 10 distinct) attributes used to filter the findings included in the insight. The insight only includes findings that match criteria defined in the filters. See filters below for more details.
  final pulumi.Input<InsightFilters>? filters;
  /// The attribute used to group the findings for the insight e.g., if an insight is grouped by `ResourceId`, then the insight produces a list of resource identifiers.
  final pulumi.Input<String>? groupByAttribute;
  /// The name of the custom insight.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InsightState].
  /// [arn] ARN of the insight.
  /// [filters] A configuration block including one or more (up to 10 distinct) attributes used to filter the findings included in the insight. The insight only includes findings that match criteria defined in the filters. See filters below for more details.
  /// [groupByAttribute] The attribute used to group the findings for the insight e.g., if an insight is grouped by `ResourceId`, then the insight produces a list of resource identifiers.
  /// [name] The name of the custom insight.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const InsightState({
    this.arn,
    this.filters,
    this.groupByAttribute,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'filters': ?pulumi.Input.mapOptionalInputValue<InsightFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'groupByAttribute': ?groupByAttribute,
      'name': ?name,
      'region': ?region,
    };
  }

  factory InsightState.fromMap(Map<String, dynamic> map) {
    return InsightState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightFilters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      groupByAttribute: (() { final guardedValue = map['groupByAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
