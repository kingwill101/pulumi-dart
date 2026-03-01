// ignore_for_file: unused_element, unnecessary_cast

import 'access_policy.dart';

class SignedIdentifier {
  /// Access policy
  final AccessPolicy? accessPolicy;
  /// An unique identifier of the stored access policy.
  final String? id;

  /// Creates a new [SignedIdentifier].
  /// [accessPolicy] Access policy
  /// [id] An unique identifier of the stored access policy.
  SignedIdentifier({
    this.accessPolicy,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': ?accessPolicy == null ? null : accessPolicy!.toMap(),
      'id': ?id,
    };
  }

  factory SignedIdentifier.fromMap(Map<String, dynamic> map) {
    return SignedIdentifier(
      accessPolicy: map['accessPolicy'] == null ? null : AccessPolicy.fromMap((map['accessPolicy'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

