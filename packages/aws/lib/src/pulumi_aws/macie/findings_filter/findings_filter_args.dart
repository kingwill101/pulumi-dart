// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../findings_filter_finding_criteria/findings_filter_finding_criteria.dart';

/// The set of arguments for FindingsFilter.
class FindingsFilterArgs {
  /// The action to perform on findings that meet the filter criteria (`finding_criteria`). Valid values are: `ARCHIVE`, suppress (automatically archive) the findings; and, `NOOP`, don't perform any action on the findings.
  final Input<String> action;

  /// A custom description of the filter. The description can contain as many as 512 characters.
  final Input<String>? description;

  /// The criteria to use to filter findings.
  final Input<FindingsFilterFindingCriteria> findingCriteria;

  /// A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final Input<String>? namePrefix;

  /// The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.
  final Input<int>? position;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  FindingsFilterArgs({
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
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['findingCriteria'] = Input.mapInputValue<FindingsFilterFindingCriteria,
        Map<String, dynamic>>(findingCriteria, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final positionValue = position;
    if (positionValue != null) {
      map['position'] = positionValue;
    }
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

  factory FindingsFilterArgs.fromMap(Map<String, dynamic> map) {
    return FindingsFilterArgs(
      action: Input.asInput<String>(map['action']),
      description: Input.asOptionalInput<String>(map['description']),
      findingCriteria:
          Input.asInput<FindingsFilterFindingCriteria>(map['findingCriteria']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      position: Input.asOptionalInput<int>(map['position']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
