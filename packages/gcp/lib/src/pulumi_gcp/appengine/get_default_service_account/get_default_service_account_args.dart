// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDefaultServiceAccount.
class GetDefaultServiceAccountArgs {
  /// The project ID. If it is not provided, the provider project is used.
  final Input<String>? project;

  GetDefaultServiceAccountArgs({
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

  factory GetDefaultServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultServiceAccountArgs(
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
