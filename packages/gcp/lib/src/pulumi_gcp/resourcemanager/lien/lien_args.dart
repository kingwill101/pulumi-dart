// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Lien.
class LienArgs {
  /// A stable, user-visible/meaningful string identifying the origin
  /// of the Lien, intended to be inspected programmatically. Maximum length of
  /// 200 characters.
  final Input<String> origin;

  /// A reference to the resource this Lien is attached to.
  /// The server will validate the parent against those for which Liens are supported.
  /// Since a variety of objects can have Liens against them, you must provide the type
  /// prefix (e.g. "projects/my-project-name").
  final Input<String> parent;

  /// Concise user-visible strings indicating why an action cannot be performed
  /// on a resource. Maximum length of 200 characters.
  final Input<String> reason;

  /// The types of operations which should be blocked as a result of this Lien.
  /// Each value should correspond to an IAM permission. The server will validate
  /// the permissions against those for which Liens are supported.  An empty
  /// list is meaningless and will be rejected.
  /// e.g. ['resourcemanager.projects.delete']
  final Input<List<String>> restrictions;

  LienArgs({
    required this.origin,
    required this.parent,
    required this.reason,
    required this.restrictions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['origin'] = origin;
    map['parent'] = parent;
    map['reason'] = reason;
    map['restrictions'] = restrictions;
    return map;
  }

  factory LienArgs.fromMap(Map<String, dynamic> map) {
    return LienArgs(
      origin: Input.asInput<String>(map['origin']),
      parent: Input.asInput<String>(map['parent']),
      reason: Input.asInput<String>(map['reason']),
      restrictions: Input.asInput<List<String>>(map['restrictions']),
    );
  }
}
