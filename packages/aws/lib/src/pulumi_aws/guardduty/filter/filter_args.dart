// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../filter_finding_criteria/filter_finding_criteria.dart';

/// The set of arguments for Filter.
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

  FilterArgs({
    required this.action,
    this.description,
    required this.detectorId,
    required this.findingCriteria,
    this.name,
    required this.rank,
    this.region,
    this.tags,
  });

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
      action: pulumi.Input.asInput<String>(map['action']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      detectorId: pulumi.Input.asInput<String>(map['detectorId']),
      findingCriteria:
          pulumi.Input.asInput<FilterFindingCriteria>(map['findingCriteria']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      rank: pulumi.Input.asInput<int>(map['rank']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
