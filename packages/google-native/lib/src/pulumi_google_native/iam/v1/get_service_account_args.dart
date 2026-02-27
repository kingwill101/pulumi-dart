// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceAccount.
class GetServiceAccountArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceAccountId;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAccountId: pulumi.Input.asInput<String>(map['serviceAccountId']),
    );
  }
}
