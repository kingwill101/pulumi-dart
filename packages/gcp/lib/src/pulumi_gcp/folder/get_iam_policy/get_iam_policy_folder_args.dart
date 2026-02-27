// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIamPolicy.
class GetIamPolicyFolderArgs {
  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final pulumi.Input<String> folder;

  GetIamPolicyFolderArgs({
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folder'] = folder;
    return map;
  }

  factory GetIamPolicyFolderArgs.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyFolderArgs(
      folder: pulumi.Input.asInput<String>(map['folder']),
    );
  }
}
