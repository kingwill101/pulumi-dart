// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getServiceAccount.
class GetServiceAccountArgs {
  final Input<String>? project;
  final Input<String> serviceAccountId;

  GetServiceAccountArgs({
    this.project,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory GetServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountArgs(
      project: Input.asOptionalInput<String>(map['project']),
      serviceAccountId: Input.asInput<String>(map['serviceAccountId']),
    );
  }
}
