// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationExclusion.
class OrganizationExclusionArgs {
  /// A human-readable description.
  final Input<String>? description;

  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final Input<bool>? disabled;

  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final Input<String> filter;

  /// The name of the logging exclusion.
  final Input<String>? name;

  /// The organization to create the exclusion in.
  final Input<String> orgId;

  OrganizationExclusionArgs({
    this.description,
    this.disabled,
    required this.filter,
    this.name,
    required this.orgId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['filter'] = filter;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['orgId'] = orgId;
    return map;
  }

  factory OrganizationExclusionArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationExclusionArgs(
      description: Input.asOptionalInput<String>(map['description']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      filter: Input.asInput<String>(map['filter']),
      name: Input.asOptionalInput<String>(map['name']),
      orgId: Input.asInput<String>(map['orgId']),
    );
  }
}
