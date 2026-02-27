// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getManagedFolderIamPolicy.
class GetManagedFolderIamPolicyArgs {
  final Input<String> bucket;
  final Input<String> managedFolder;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? userProject;

  GetManagedFolderIamPolicyArgs({
    required this.bucket,
    required this.managedFolder,
    this.optionsRequestedPolicyVersion,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['managedFolder'] = managedFolder;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory GetManagedFolderIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedFolderIamPolicyArgs(
      bucket: Input.asInput<String>(map['bucket']),
      managedFolder: Input.asInput<String>(map['managedFolder']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
