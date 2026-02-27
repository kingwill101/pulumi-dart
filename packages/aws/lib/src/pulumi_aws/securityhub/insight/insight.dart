import 'package:pulumi/pulumi.dart';
import '../insight_filters/insight_filters.dart';
import 'insight_args.dart';

/// Provides a Security Hub custom insight resource. See the [Managing custom insights section](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-custom-insights.html) of the AWS User Guide for more information.
///
/// ## Example Usage
///
/// ### Filter by AWS account ID
///
///
///
/// ### Filter by date range
///
///
///
/// ### Filter by destination IPv4 address
///
///
///
/// ### Filter by finding's confidence
///
///
///
/// ### Filter by resource tags
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub insights using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/insight:Insight example arn:aws:securityhub:us-west-2:1234567890:insight/1234567890/custom/91299ed7-abd0-4e44-a858-d0b15e37141a
/// ```
class Insight extends CustomResource {
  /// ARN of the insight.
  late final Output<String> arn;

  /// A configuration block including one or more (up to 10 distinct) attributes used to filter the findings included in the insight. The insight only includes findings that match criteria defined in the filters. See filters below for more details.
  late final Output<InsightFilters> filters;

  /// The attribute used to group the findings for the insight e.g., if an insight is grouped by `ResourceId`, then the insight produces a list of resource identifiers.
  late final Output<String> groupByAttribute;

  /// The name of the custom insight.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Insight(
    String name, {
    InsightArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/insight:Insight',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.filters = registerOutput<InsightFilters>('filters');
    this.groupByAttribute = registerOutput<String>('groupByAttribute');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
