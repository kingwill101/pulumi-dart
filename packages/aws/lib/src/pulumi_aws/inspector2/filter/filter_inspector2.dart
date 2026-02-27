import 'package:pulumi/pulumi.dart' as pulumi;
import '../filter_filter_criteria/filter_filter_criteria.dart';
import 'filter_inspector2_args.dart';

/// Resource for managing an AWS Inspector Filter.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Inspector Filter using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:inspector2/filter:Filter example "arn:aws:inspector2:us-east-1:111222333444:owner/111222333444/filter/abcdefgh12345678"
/// ```
class FilterInspector2 extends pulumi.CustomResource {
  /// Action to be applied to the findings that maatch the filter. Possible values are `NONE` and `SUPPRESS`
  late final pulumi.Output<String> action;

  /// ARN of the Filter.
  late final pulumi.Output<String> arn;

  /// Description
  late final pulumi.Output<String?> description;

  /// Details on the filter criteria. Documented below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<FilterFilterCriteria>> filterCriterias;

  /// Name of the filter.
  late final pulumi.Output<String> name;

  /// Reason for creating the filter
  late final pulumi.Output<String?> reason;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  FilterInspector2(
    String name, {
    FilterInspector2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/filter:Filter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.filterCriterias =
        registerOutput<List<FilterFilterCriteria>>('filterCriterias');
    this.name = registerOutput<String>('name');
    this.reason = registerOutput<String?>('reason');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
