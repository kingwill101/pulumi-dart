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
  InsightState({
    pulumi.Output<String>? arn,
    pulumi.Output<InsightFilters>? filters,
    pulumi.Output<String>? groupByAttribute,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      filters = pulumi.Input.asOptionalInput<InsightFilters>(filters),
      groupByAttribute = pulumi.Input.asOptionalInput<String>(groupByAttribute),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      filters: map['filters'] == null ? null : pulumi.Output.create<InsightFilters>(InsightFilters.fromMap((map['filters'] as Map).cast<String, dynamic>())),
      groupByAttribute: map['groupByAttribute'] == null ? null : pulumi.Output.create<String>(map['groupByAttribute'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

