// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_filter_finding_criteria.dart';

/// Input properties used for looking up and filtering FindingsFilter resources.
class FindingsFilterState {
  /// Action to perform on findings that meet the filter criteria (`findingCriteria`). Valid values are `ARCHIVE`, to suppress (automatically archive) the findings, and `NOOP`, to not perform any action on the findings.
  final pulumi.Input<String?>? action;
  /// ARN of the Findings Filter.
  final pulumi.Input<String?>? arn;
  /// Custom description of the filter. Can contain as many as 512 characters.
  final pulumi.Input<String?>? description;
  /// Criteria to use to filter findings. See `findingCriteria` Block for details.
  final pulumi.Input<FindingsFilterFindingCriteria?>? findingCriteria;
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
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [FindingsFilterState].
  /// [action] Action to perform on findings that meet the filter criteria (`findingCriteria`). Valid values are `ARCHIVE`, to suppress (automatically archive) the findings, and `NOOP`, to not perform any action on the findings.
  /// [arn] ARN of the Findings Filter.
  /// [description] Custom description of the filter. Can contain as many as 512 characters.
  /// [findingCriteria] Criteria to use to filter findings. See `findingCriteria` Block for details.
  /// [name] Custom name for the filter. Must contain at least 3 characters and can contain as many as 64 characters. If omitted, Terraform assigns a random, unique name. Conflicts with `namePrefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [position] Position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const FindingsFilterState({
    this.action,
    this.arn,
    this.description,
    this.findingCriteria,
    this.name,
    this.namePrefix,
    this.position,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      findingCriteria: (() { final guardedValue = map['findingCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FindingsFilterFindingCriteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      position: (() { final guardedValue = map['position']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
