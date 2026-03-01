// ignore_for_file: unused_element, unnecessary_cast

import 'group_subject_patch.dart';
import 'service_account_subject_patch.dart';
import 'user_subject_patch.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
class SubjectPatch {
  /// `group` matches based on user group name.
  final GroupSubjectPatch? group;
  /// `kind` indicates which one of the other fields is non-empty. Required
  final String? kind;
  /// `serviceAccount` matches ServiceAccounts.
  final ServiceAccountSubjectPatch? serviceAccount;
  /// `user` matches based on username.
  final UserSubjectPatch? user;

  /// Creates a new [SubjectPatch].
  /// [group] `group` matches based on user group name.
  /// [kind] `kind` indicates which one of the other fields is non-empty. Required
  /// [serviceAccount] `serviceAccount` matches ServiceAccounts.
  /// [user] `user` matches based on username.
  SubjectPatch({
    this.group,
    this.kind,
    this.serviceAccount,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group == null ? null : group!.toMap(),
      'kind': ?kind,
      'serviceAccount': ?serviceAccount == null ? null : serviceAccount!.toMap(),
      'user': ?user == null ? null : user!.toMap(),
    };
  }

  factory SubjectPatch.fromMap(Map<String, dynamic> map) {
    return SubjectPatch(
      group: map['group'] == null ? null : GroupSubjectPatch.fromMap((map['group'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      serviceAccount: map['serviceAccount'] == null ? null : ServiceAccountSubjectPatch.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>()),
      user: map['user'] == null ? null : UserSubjectPatch.fromMap((map['user'] as Map).cast<String, dynamic>()),
    );
  }
}

