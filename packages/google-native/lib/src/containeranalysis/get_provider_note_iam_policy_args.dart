// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1alpha1_get_provider_note_iam_policy_args_doc}
/// Arguments for getProviderNoteIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1alpha1_get_provider_note_iam_policy_args_doc}
class GetProviderNoteIamPolicyArgs {
  final pulumi.Input<String> noteId;
  final pulumi.Input<String> providerId;

  /// Creates a new [GetProviderNoteIamPolicyArgs].
  /// [noteId] Required.
  /// [providerId] Required.
  GetProviderNoteIamPolicyArgs({
    required String noteId,
    required String providerId,
  }) : noteId = pulumi.Input.asInput<String>(noteId),
       providerId = pulumi.Input.asInput<String>(providerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'noteId': noteId, 'providerId': providerId};
  }

  factory GetProviderNoteIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderNoteIamPolicyArgs(
      noteId: map['noteId'] as String,
      providerId: map['providerId'] as String,
    );
  }
}
