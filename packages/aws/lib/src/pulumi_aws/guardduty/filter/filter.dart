import 'package:pulumi/pulumi.dart' as pulumi;
import '../filter_finding_criteria/filter_finding_criteria.dart';
import 'filter_args.dart';

/// Provides a resource to manage a GuardDuty filter.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty filters using the detector ID and filter's name separated by a colon. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/filter:Filter MyFilter 00b00fd5aecc0ab60a708659477e9617:MyFilter
/// ```
class Filter extends pulumi.CustomResource {
  /// Specifies the action that is to be applied to the findings that match the filter. Can be one of `ARCHIVE` or `NOOP`.
  late final pulumi.Output<String> action;

  /// The ARN of the GuardDuty filter.
  late final pulumi.Output<String> arn;

  /// Description of the filter.
  late final pulumi.Output<String?> description;

  /// ID of a GuardDuty detector, attached to your account.
  late final pulumi.Output<String> detectorId;

  /// Represents the criteria to be used in the filter for querying findings. Contains one or more `criterion` blocks, documented below.
  late final pulumi.Output<FilterFindingCriteria> findingCriteria;

  /// The name of your filter.
  late final pulumi.Output<String> name;

  /// Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
  late final pulumi.Output<int> rank;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The tags that you want to add to the Filter resource. A tag consists of a key and a value. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Filter(
    String name, {
    FilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/filter:Filter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.detectorId = registerOutput<String>('detectorId');
    this.findingCriteria =
        registerOutput<FilterFindingCriteria>('findingCriteria');
    this.name = registerOutput<String>('name');
    this.rank = registerOutput<int>('rank');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
