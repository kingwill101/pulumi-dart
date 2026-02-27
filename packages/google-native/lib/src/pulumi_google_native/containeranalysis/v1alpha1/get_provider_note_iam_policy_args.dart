// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProviderNoteIamPolicy.
class GetProviderNoteIamPolicyArgs {
  final pulumi.Input<String> noteId;
  final pulumi.Input<String> providerId;

  GetProviderNoteIamPolicyArgs({
    required this.noteId,
    required this.providerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['noteId'] = noteId;
    map['providerId'] = providerId;
    return map;
  }

  factory GetProviderNoteIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderNoteIamPolicyArgs(
      noteId: pulumi.Input.asInput<String>(map['noteId']),
      providerId: pulumi.Input.asInput<String>(map['providerId']),
    );
  }
}
