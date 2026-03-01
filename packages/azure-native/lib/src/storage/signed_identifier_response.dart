// ignore_for_file: unused_element, unnecessary_cast

import 'access_policy_response.dart';

class SignedIdentifierResponse {
  /// Access policy
  final AccessPolicyResponse? accessPolicy;
  /// An unique identifier of the stored access policy.
  final String? id;

  /// Creates a new [SignedIdentifierResponse].
  /// [accessPolicy] Access policy
  /// [id] An unique identifier of the stored access policy.
  SignedIdentifierResponse({
    this.accessPolicy,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': ?accessPolicy == null ? null : accessPolicy!.toMap(),
      'id': ?id,
    };
  }

  factory SignedIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return SignedIdentifierResponse(
      accessPolicy: map['accessPolicy'] == null ? null : AccessPolicyResponse.fromMap((map['accessPolicy'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

