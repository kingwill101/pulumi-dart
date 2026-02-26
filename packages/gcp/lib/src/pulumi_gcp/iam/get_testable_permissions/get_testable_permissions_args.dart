// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTestablePermissions.
class GetTestablePermissionsArgs {
  /// The level of support for custom roles. Can be one of `"NOT_SUPPORTED"`, `"SUPPORTED"`, `"TESTING"`. Default is `"SUPPORTED"`
  final Input<String>? customSupportLevel;

  /// See [full resource name documentation](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more detail.
  final Input<String> fullResourceName;

  /// The acceptable release stages of the permission in the output. Note that `BETA` does not include permissions in `GA`, but you can specify both with `["GA", "BETA"]` for example. Can be a list of `"ALPHA"`, `"BETA"`, `"GA"`, `"DEPRECATED"`. Default is `["GA"]`.
  final Input<List<String>>? stages;

  GetTestablePermissionsArgs({
    this.customSupportLevel,
    required this.fullResourceName,
    this.stages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customSupportLevelValue = customSupportLevel;
    if (customSupportLevelValue != null) {
      map['customSupportLevel'] = customSupportLevelValue;
    }
    map['fullResourceName'] = fullResourceName;
    final stagesValue = stages;
    if (stagesValue != null) {
      map['stages'] = stagesValue;
    }
    return map;
  }

  factory GetTestablePermissionsArgs.fromMap(Map<String, dynamic> map) {
    return GetTestablePermissionsArgs(
      customSupportLevel:
          Input.asOptionalInput<String>(map['customSupportLevel']),
      fullResourceName: Input.asInput<String>(map['fullResourceName']),
      stages: Input.asOptionalInput<List<String>>(map['stages']),
    );
  }
}
