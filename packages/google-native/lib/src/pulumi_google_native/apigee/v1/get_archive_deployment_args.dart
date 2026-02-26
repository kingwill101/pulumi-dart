// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getArchiveDeployment.
class GetArchiveDeploymentArgs {
  final Input<String> archiveDeploymentId;
  final Input<String> environmentId;
  final Input<String> organizationId;

  GetArchiveDeploymentArgs({
    required this.archiveDeploymentId,
    required this.environmentId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['archiveDeploymentId'] = archiveDeploymentId;
    map['environmentId'] = environmentId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetArchiveDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetArchiveDeploymentArgs(
      archiveDeploymentId: Input.asInput<String>(map['archiveDeploymentId']),
      environmentId: Input.asInput<String>(map['environmentId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
