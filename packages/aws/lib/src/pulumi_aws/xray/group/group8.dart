import 'package:pulumi/pulumi.dart';
import '../group_insights_configuration/group_insights_configuration.dart';
import 'group_args8.dart';

/// Creates and manages an AWS XRay Group.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the X-Ray group.
///
///
/// Using `pulumi import`, import XRay Groups using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:xray/group:Group example arn:aws:xray:us-west-2:1234567890:group/example-group/TNGX7SW5U6QY36T4ZMOUA3HVLBYCZTWDIOOXY3CJAXTHSS3YCWUA
/// ```
class Group8 extends CustomResource {
  /// The ARN of the Group.
  late final Output<String> arn;

  /// The filter expression defining criteria by which to group traces. more info can be found in official [docs](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html).
  late final Output<String> filterExpression;

  /// The name of the group.
  late final Output<String> groupName;

  /// Configuration options for enabling insights.
  late final Output<GroupInsightsConfiguration> insightsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Group8(
    String name, {
    GroupArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:xray/group:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.filterExpression = registerOutput<String>('filterExpression');
    this.groupName = registerOutput<String>('groupName');
    this.insightsConfiguration =
        registerOutput<GroupInsightsConfiguration>('insightsConfiguration');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
