// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_finding_criteria.dart';

/// {@template pulumi_guardduty_filter_filter_args_doc}
/// The set of arguments for Filter.
/// {@endtemplate}
/// {@macro pulumi_guardduty_filter_filter_args_doc}
class FilterArgs {
  /// Action that is to be applied to the findings that match the filter. Can be one of `ARCHIVE` or `NOOP`.
  final pulumi.Input<String> action;
  /// Description of the filter.
  final pulumi.Input<String?>? description;
  /// ID of a GuardDuty detector, attached to your account.
  final pulumi.Input<String> detectorId;
  /// Criteria to be used in the filter for querying findings. Contains one or more `criterion` blocks, documented below.
  final pulumi.Input<FilterFindingCriteria> findingCriteria;
  /// Name of your filter.
  final pulumi.Input<String?>? name;
  /// Position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
  final pulumi.Input<int> rank;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Tags that you want to add to the Filter resource. A tag consists of a key and a value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FilterArgs].
  /// [action] Action that is to be applied to the findings that match the filter. Can be one of `ARCHIVE` or `NOOP`.
  /// [description] Description of the filter.
  /// [detectorId] ID of a GuardDuty detector, attached to your account.
  /// [findingCriteria] Criteria to be used in the filter for querying findings. Contains one or more `criterion` blocks, documented below.
  /// [name] Name of your filter.
  /// [rank] Position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags that you want to add to the Filter resource. A tag consists of a key and a value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const FilterArgs({
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
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'detectorId': detectorId,
      'findingCriteria': pulumi.Input.mapInputValue<FilterFindingCriteria, Map<String, dynamic>>(findingCriteria, (value) => value.toMap()),
      'name': ?name,
      'rank': rank,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory FilterArgs.fromMap(Map<String, dynamic> map) {
    return FilterArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detectorId: pulumi.Input.fromValue(map['detectorId'] as String),
      findingCriteria: pulumi.Input.fromValue(FilterFindingCriteria.fromMap((map['findingCriteria']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rank: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['rank'])),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
