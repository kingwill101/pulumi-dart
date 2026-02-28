// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_finding_criteria.dart';

/// {@template pulumi_guardduty_filter_filter_args_doc}
/// The set of arguments for Filter.
/// {@endtemplate}
/// {@macro pulumi_guardduty_filter_filter_args_doc}
class FilterArgs {
  /// Specifies the action that is to be applied to the findings that match the filter. Can be one of `ARCHIVE` or `NOOP`.
  final pulumi.Input<String> action;

  /// Description of the filter.
  final pulumi.Input<String>? description;

  /// ID of a GuardDuty detector, attached to your account.
  final pulumi.Input<String> detectorId;

  /// Represents the criteria to be used in the filter for querying findings. Contains one or more `criterion` blocks, documented below.
  final pulumi.Input<FilterFindingCriteria> findingCriteria;

  /// The name of your filter.
  final pulumi.Input<String>? name;

  /// Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
  final pulumi.Input<int> rank;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The tags that you want to add to the Filter resource. A tag consists of a key and a value. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FilterArgs].
  /// [action] Specifies the action that is to be applied to the findings that match the filter. Can be one of `ARCHIVE` or `NOOP`.
  /// [description] Description of the filter.
  /// [detectorId] ID of a GuardDuty detector, attached to your account.
  /// [findingCriteria] Represents the criteria to be used in the filter for querying findings. Contains one or more `criterion` blocks, documented below.
  /// [name] The name of your filter.
  /// [rank] Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] The tags that you want to add to the Filter resource. A tag consists of a key and a value. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  FilterArgs({
    required String action,
    String? description,
    required String detectorId,
    required FilterFindingCriteria findingCriteria,
    String? name,
    required int rank,
    String? region,
    Map<String, String>? tags,
  })  : action = pulumi.Input.asInput<String>(action),
        description = pulumi.Input.asOptionalInput<String>(description),
        detectorId = pulumi.Input.asInput<String>(detectorId),
        findingCriteria =
            pulumi.Input.asInput<FilterFindingCriteria>(findingCriteria),
        name = pulumi.Input.asOptionalInput<String>(name),
        rank = pulumi.Input.asInput<int>(rank),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['detectorId'] = detectorId;
    map['findingCriteria'] =
        pulumi.Input.mapInputValue<FilterFindingCriteria, Map<String, dynamic>>(
            findingCriteria, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['rank'] = rank;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FilterArgs.fromMap(Map<String, dynamic> map) {
    return FilterArgs(
      action: map['action'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      detectorId: map['detectorId'] as String,
      findingCriteria: FilterFindingCriteria.fromMap(
          (map['findingCriteria'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      rank: map['rank'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
