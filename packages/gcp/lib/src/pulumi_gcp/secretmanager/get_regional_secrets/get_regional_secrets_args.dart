// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionalSecrets.
class GetRegionalSecretsArgs {
  /// Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/docs/filtering). List only secrets matching the filter. If filter is empty, all regional secrets are listed from the specified location.
  final Input<String>? filter;

  /// The location of the regional secret.
  final Input<String> location;

  /// The ID of the project.
  final Input<String>? project;

  GetRegionalSecretsArgs({
    this.filter,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetRegionalSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretsArgs(
      filter: Input.asOptionalInput<String>(map['filter']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
