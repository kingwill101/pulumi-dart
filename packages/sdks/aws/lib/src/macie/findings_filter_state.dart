// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_filter_finding_criteria.dart';

/// Input properties used for looking up and filtering FindingsFilter resources.
class FindingsFilterState {
  /// The action to perform on findings that meet the filter criteria (`finding_criteria`). Valid values are: `ARCHIVE`, suppress (automatically archive) the findings; and, `NOOP`, don't perform any action on the findings.
  final pulumi.Input<String>? action;
  /// The Amazon Resource Name (ARN) of the Findings Filter.
  final pulumi.Input<String>? arn;
  /// A custom description of the filter. The description can contain as many as 512 characters.
  final pulumi.Input<String>? description;
  /// The criteria to use to filter findings.
  final pulumi.Input<FindingsFilterFindingCriteria>? findingCriteria;
  /// A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.
  final pulumi.Input<int>? position;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [FindingsFilterState].
  /// [action] The action to perform on findings that meet the filter criteria (`finding_criteria`). Valid values are: `ARCHIVE`, suppress (automatically archive) the findings; and, `NOOP`, don't perform any action on the findings.
  /// [arn] The Amazon Resource Name (ARN) of the Findings Filter.
  /// [description] A custom description of the filter. The description can contain as many as 512 characters.
  /// [findingCriteria] The criteria to use to filter findings.
  /// [name] A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [position] The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  FindingsFilterState({
    pulumi.Output<String>? action,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<FindingsFilterFindingCriteria>? findingCriteria,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<int>? position,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      findingCriteria = pulumi.Input.asOptionalInput<FindingsFilterFindingCriteria>(findingCriteria),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      position = pulumi.Input.asOptionalInput<int>(position),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'arn': ?arn,
      'description': ?description,
      'findingCriteria': ?pulumi.Input.mapOptionalInputValue<FindingsFilterFindingCriteria, Map<String, dynamic>>(findingCriteria, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'position': ?position,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory FindingsFilterState.fromMap(Map<String, dynamic> map) {
    return FindingsFilterState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      findingCriteria: map['findingCriteria'] == null ? null : pulumi.Output.create<FindingsFilterFindingCriteria>(FindingsFilterFindingCriteria.fromMap((map['findingCriteria'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      position: map['position'] == null ? null : pulumi.Output.create<int>(map['position'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

