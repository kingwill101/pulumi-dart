// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v1_lien_args_doc}
/// The set of arguments for Lien.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v1_lien_args_doc}
class LienArgs {
  /// The creation time of this Lien.
  final pulumi.Input<String>? createTime;
  /// A system-generated unique identifier for this Lien. Example: `liens/1234abcd`
  final pulumi.Input<String>? name;
  /// A stable, user-visible/meaningful string identifying the origin of the Lien, intended to be inspected programmatically. Maximum length of 200 characters. Example: 'compute.googleapis.com'
  final pulumi.Input<String>? origin;
  /// A reference to the resource this Lien is attached to. The server will validate the parent against those for which Liens are supported. Example: `projects/1234`
  final pulumi.Input<String>? parent;
  /// Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum length of 200 characters. Example: 'Holds production API key'
  final pulumi.Input<String>? reason;
  /// The types of operations which should be blocked as a result of this Lien. Each value should correspond to an IAM permission. The server will validate the permissions against those for which Liens are supported. An empty list is meaningless and will be rejected. Example: ['resourcemanager.projects.delete']
  final pulumi.Input<List<String>>? restrictions;

  /// Creates a new [LienArgs].
  /// [createTime] The creation time of this Lien.
  /// [name] A system-generated unique identifier for this Lien. Example: `liens/1234abcd`
  /// [origin] A stable, user-visible/meaningful string identifying the origin of the Lien, intended to be inspected programmatically. Maximum length of 200 characters. Example: 'compute.googleapis.com'
  /// [parent] A reference to the resource this Lien is attached to. The server will validate the parent against those for which Liens are supported. Example: `projects/1234`
  /// [reason] Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum length of 200 characters. Example: 'Holds production API key'
  /// [restrictions] The types of operations which should be blocked as a result of this Lien. Each value should correspond to an IAM permission. The server will validate the permissions against those for which Liens are supported. An empty list is meaningless and will be rejected. Example: ['resourcemanager.projects.delete']
  LienArgs({
    String? createTime,
    String? name,
    String? origin,
    String? parent,
    String? reason,
    List<String>? restrictions,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      origin = pulumi.Input.asOptionalInput<String>(origin),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      reason = pulumi.Input.asOptionalInput<String>(reason),
      restrictions = pulumi.Input.asOptionalInput<List<String>>(restrictions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'name': ?name,
      'origin': ?origin,
      'parent': ?parent,
      'reason': ?reason,
      'restrictions': ?restrictions,
    };
  }

  factory LienArgs.fromMap(Map<String, dynamic> map) {
    return LienArgs(
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      origin: map['origin'] == null ? null : map['origin'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      restrictions: map['restrictions'] == null ? null : (map['restrictions'] as List).cast<String>(),
    );
  }
}

