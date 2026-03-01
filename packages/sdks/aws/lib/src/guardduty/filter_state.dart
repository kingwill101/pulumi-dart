// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_finding_criteria.dart';

/// Input properties used for looking up and filtering Filter resources.
class FilterState {
  /// Specifies the action that is to be applied to the findings that match the filter. Can be one of `ARCHIVE` or `NOOP`.
  final pulumi.Input<String>? action;
  /// The ARN of the GuardDuty filter.
  final pulumi.Input<String>? arn;
  /// Description of the filter.
  final pulumi.Input<String>? description;
  /// ID of a GuardDuty detector, attached to your account.
  final pulumi.Input<String>? detectorId;
  /// Represents the criteria to be used in the filter for querying findings. Contains one or more `criterion` blocks, documented below.
  final pulumi.Input<FilterFindingCriteria>? findingCriteria;
  /// The name of your filter.
  final pulumi.Input<String>? name;
  /// Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
  final pulumi.Input<int>? rank;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The tags that you want to add to the Filter resource. A tag consists of a key and a value. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [FilterState].
  /// [action] Specifies the action that is to be applied to the findings that match the filter. Can be one of `ARCHIVE` or `NOOP`.
  /// [arn] The ARN of the GuardDuty filter.
  /// [description] Description of the filter.
  /// [detectorId] ID of a GuardDuty detector, attached to your account.
  /// [findingCriteria] Represents the criteria to be used in the filter for querying findings. Contains one or more `criterion` blocks, documented below.
  /// [name] The name of your filter.
  /// [rank] Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] The tags that you want to add to the Filter resource. A tag consists of a key and a value. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  FilterState({
    pulumi.Output<String>? action,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? detectorId,
    pulumi.Output<FilterFindingCriteria>? findingCriteria,
    pulumi.Output<String>? name,
    pulumi.Output<int>? rank,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      detectorId = pulumi.Input.asOptionalInput<String>(detectorId),
      findingCriteria = pulumi.Input.asOptionalInput<FilterFindingCriteria>(findingCriteria),
      name = pulumi.Input.asOptionalInput<String>(name),
      rank = pulumi.Input.asOptionalInput<int>(rank),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'arn': ?arn,
      'description': ?description,
      'detectorId': ?detectorId,
      'findingCriteria': ?pulumi.Input.mapOptionalInputValue<FilterFindingCriteria, Map<String, dynamic>>(findingCriteria, (value) => value.toMap()),
      'name': ?name,
      'rank': ?rank,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory FilterState.fromMap(Map<String, dynamic> map) {
    return FilterState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      detectorId: map['detectorId'] == null ? null : pulumi.Output.create<String>(map['detectorId'] as String),
      findingCriteria: map['findingCriteria'] == null ? null : pulumi.Output.create<FilterFindingCriteria>(FilterFindingCriteria.fromMap((map['findingCriteria'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      rank: map['rank'] == null ? null : pulumi.Output.create<int>(map['rank'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

