// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDefaultServiceAccount.
class GetDefaultServiceAccountBigqueryArgs {
  /// The project the unique service account was created for. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetDefaultServiceAccountBigqueryArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDefaultServiceAccountBigqueryArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDefaultServiceAccountBigqueryArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
