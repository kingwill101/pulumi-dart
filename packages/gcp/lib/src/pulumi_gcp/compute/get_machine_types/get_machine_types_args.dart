// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMachineTypes.
class GetMachineTypesArgs {
  /// A filter expression that filters machine types listed in the response.
  final Input<String>? filter;

  /// Project from which to list available zones. Defaults to project declared in the provider.
  final Input<String>? project;

  /// Zone from which to list machine types.
  final Input<String>? zone;

  GetMachineTypesArgs({
    this.filter,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetMachineTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineTypesArgs(
      filter: Input.asOptionalInput<String>(map['filter']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
