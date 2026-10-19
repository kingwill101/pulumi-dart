// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_filter_finding_criteria.dart';

/// {@template pulumi_macie_findings_filter_findings_filter_args_doc}
/// The set of arguments for FindingsFilter.
/// {@endtemplate}
/// {@macro pulumi_macie_findings_filter_findings_filter_args_doc}
class FindingsFilterArgs {
  /// Action to perform on findings that meet the filter criteria (`findingCriteria`). Valid values are `ARCHIVE`, to suppress (automatically archive) the findings, and `NOOP`, to not perform any action on the findings.
  final pulumi.Input<String> action;
  /// Custom description of the filter. Can contain as many as 512 characters.
  final pulumi.Input<String?>? description;
  /// Criteria to use to filter findings. See `findingCriteria` Block for details.
  final pulumi.Input<FindingsFilterFindingCriteria> findingCriteria;
  /// Custom name for the filter. Must contain at least 3 characters and can contain as many as 64 characters. If omitted, Terraform assigns a random, unique name. Conflicts with `namePrefix`.
  final pulumi.Input<String?>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String?>? namePrefix;
  /// Position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.
  final pulumi.Input<int?>? position;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FindingsFilterArgs].
  /// [action] Action to perform on findings that meet the filter criteria (`findingCriteria`). Valid values are `ARCHIVE`, to suppress (automatically archive) the findings, and `NOOP`, to not perform any action on the findings.
  /// [description] Custom description of the filter. Can contain as many as 512 characters.
  /// [findingCriteria] Criteria to use to filter findings. See `findingCriteria` Block for details.
  /// [name] Custom name for the filter. Must contain at least 3 characters and can contain as many as 64 characters. If omitted, Terraform assigns a random, unique name. Conflicts with `namePrefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [position] Position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const FindingsFilterArgs({
    required this.action,
    this.description,
    required this.findingCriteria,
    this.name,
    this.namePrefix,
    this.position,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'findingCriteria': pulumi.Input.mapInputValue<FindingsFilterFindingCriteria, Map<String, dynamic>>(findingCriteria, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'position': ?position,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory FindingsFilterArgs.fromMap(Map<String, dynamic> map) {
    return FindingsFilterArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      findingCriteria: pulumi.Input.fromValue(FindingsFilterFindingCriteria.fromMap((map['findingCriteria']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
