// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getArchiveDeployment.
class GetArchiveDeploymentArgs {
  final pulumi.Input<String> archiveDeploymentId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;

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
      archiveDeploymentId:
          pulumi.Input.asInput<String>(map['archiveDeploymentId']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
