// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIamPolicy.
class GetIamPolicyArgs2 {
  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final Input<String> folder;

  GetIamPolicyArgs2({
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folder'] = folder;
    return map;
  }

  factory GetIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyArgs2(
      folder: Input.asInput<String>(map['folder']),
    );
  }
}
