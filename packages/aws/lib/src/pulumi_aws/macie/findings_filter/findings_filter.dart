import 'package:pulumi/pulumi.dart';
import '../findings_filter_finding_criteria/findings_filter_finding_criteria.dart';
import 'findings_filter_args.dart';

/// Provides a resource to manage an [Amazon Macie Findings Filter](https://docs.aws.amazon.com/macie/latest/APIReference/findingsfilters-id.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie.FindingsFilter` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:macie/findingsFilter:FindingsFilter example abcd1
/// ```
class FindingsFilter extends CustomResource {
  /// The action to perform on findings that meet the filter criteria (`finding_criteria`). Valid values are: `ARCHIVE`, suppress (automatically archive) the findings; and, `NOOP`, don't perform any action on the findings.
  late final Output<String> action;

  /// The Amazon Resource Name (ARN) of the Findings Filter.
  late final Output<String> arn;

  /// A custom description of the filter. The description can contain as many as 512 characters.
  late final Output<String?> description;

  /// The criteria to use to filter findings.
  late final Output<FindingsFilterFindingCriteria> findingCriteria;

  /// A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.
  late final Output<int> position;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  FindingsFilter(
    String name, {
    FindingsFilterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:macie/findingsFilter:FindingsFilter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.findingCriteria =
        registerOutput<FindingsFilterFindingCriteria>('findingCriteria');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.position = registerOutput<int>('position');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
