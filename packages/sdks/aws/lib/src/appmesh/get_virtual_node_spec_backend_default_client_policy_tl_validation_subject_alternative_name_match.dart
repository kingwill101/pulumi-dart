// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch {
  /// Values sent must match the specified values exactly.
  final pulumi.Input<List<String>> exacts;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch].
  /// [exacts] Values sent must match the specified values exactly.
  const GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exacts': exacts,
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationSubjectAlternativeNameMatch(
      exacts: pulumi.Input.fromValue((map['exacts'] as List).cast<String>()),
    );
  }
}
