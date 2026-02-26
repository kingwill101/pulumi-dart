// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDefaultServiceAccount.
class GetDefaultServiceAccountArgs2 {
  /// The project the unique service account was created for. If it is not provided, the provider project is used.
  final Input<String>? project;

  GetDefaultServiceAccountArgs2({
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

  factory GetDefaultServiceAccountArgs2.fromMap(Map<String, dynamic> map) {
    return GetDefaultServiceAccountArgs2(
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
