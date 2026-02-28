// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_file_file.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile {
  /// A a file with this content.
  /// The size of the content is limited to 32KiB.
  final String? content;

  /// A remote or local file.
  /// Structure is documented below.
  final V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFileFile?
      file;

  /// Required. The absolute path of the file within the VM.
  final String path;

  /// Consists of three octal digits which represent, in
  /// order, the permissions of the owner, group, and other users for the
  /// file (similarly to the numeric mode used in the linux chmod
  /// utility). Each digit represents a three bit number with the 4 bit
  /// corresponding to the read permissions, the 2 bit corresponds to the
  /// write bit, and the one bit corresponds to the execute permission.
  /// Default behavior is 755.
  /// Below are some examples of permissions and their associated values:
  /// read, write, and execute: 7
  /// read and execute: 5
  /// read and write: 6
  /// read only: 4
  final String? permissions;

  /// Required. Desired state of the file.
  /// Possible values:
  /// DESIRED_STATE_UNSPECIFIED
  /// PRESENT
  /// ABSENT
  /// CONTENTS_MATCH
  final String state;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile].
  /// [content] A a file with this content.
  /// [file] A remote or local file.
  /// [path] Required. The absolute path of the file within the VM.
  /// [permissions] Consists of three octal digits which represent, in
  /// [state] Required. Desired state of the file.
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile({
    this.content,
    this.file,
    required this.path,
    this.permissions,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final fileValue = file;
    if (fileValue != null) {
      map['file'] = fileValue.toMap();
    }
    map['path'] = path;
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue;
    }
    map['state'] = state;
    return map;
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFile(
      content: map['content'] == null ? null : map['content'] as String,
      file: map['file'] == null
          ? null
          : V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceFileFile
              .fromMap((map['file'] as Map).cast<String, dynamic>()),
      path: map['path'] as String,
      permissions:
          map['permissions'] == null ? null : map['permissions'] as String,
      state: map['state'] as String,
    );
  }
}
