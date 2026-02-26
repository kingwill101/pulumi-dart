// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Lien.
class LienArgs2 {
  /// The creation time of this Lien.
  final Input<String>? createTime;

  /// A system-generated unique identifier for this Lien. Example: `liens/1234abcd`
  final Input<String>? name;

  /// A stable, user-visible/meaningful string identifying the origin of the Lien, intended to be inspected programmatically. Maximum length of 200 characters. Example: 'compute.googleapis.com'
  final Input<String>? origin;

  /// A reference to the resource this Lien is attached to. The server will validate the parent against those for which Liens are supported. Example: `projects/1234`
  final Input<String>? parent;

  /// Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum length of 200 characters. Example: 'Holds production API key'
  final Input<String>? reason;

  /// The types of operations which should be blocked as a result of this Lien. Each value should correspond to an IAM permission. The server will validate the permissions against those for which Liens are supported. An empty list is meaningless and will be rejected. Example: ['resourcemanager.projects.delete']
  final Input<List<String>>? restrictions;

  LienArgs2({
    this.createTime,
    this.name,
    this.origin,
    this.parent,
    this.reason,
    this.restrictions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final originValue = origin;
    if (originValue != null) {
      map['origin'] = originValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final reasonValue = reason;
    if (reasonValue != null) {
      map['reason'] = reasonValue;
    }
    final restrictionsValue = restrictions;
    if (restrictionsValue != null) {
      map['restrictions'] = restrictionsValue;
    }
    return map;
  }

  factory LienArgs2.fromMap(Map<String, dynamic> map) {
    return LienArgs2(
      createTime: Input.asOptionalInput<String>(map['createTime']),
      name: Input.asOptionalInput<String>(map['name']),
      origin: Input.asOptionalInput<String>(map['origin']),
      parent: Input.asOptionalInput<String>(map['parent']),
      reason: Input.asOptionalInput<String>(map['reason']),
      restrictions: Input.asOptionalInput<List<String>>(map['restrictions']),
    );
  }
}
