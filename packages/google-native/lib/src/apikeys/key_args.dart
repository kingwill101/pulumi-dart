// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_restrictions.dart';

/// {@template pulumi_apikeys_v2_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_apikeys_v2_key_args_doc}
class KeyArgs {
  /// Annotations is an unstructured key-value map stored with a policy that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Human-readable display name of this key that you can modify. The maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  /// User specified key id (optional). If specified, it will become the final component of the key resource name. The id must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the id must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`. The id must NOT be a UUID-like string.
  final pulumi.Input<String>? keyId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Key restrictions.
  final pulumi.Input<V2Restrictions>? restrictions;

  /// Creates a new [KeyArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a policy that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [displayName] Human-readable display name of this key that you can modify. The maximum length is 63 characters.
  /// [keyId] User specified key id (optional). If specified, it will become the final component of the key resource name. The id must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the id must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`. The id must NOT be a UUID-like string.
  /// [location] Optional.
  /// [project] Optional.
  /// [restrictions] Key restrictions.
  KeyArgs({
    Map<String, String>? annotations,
    String? displayName,
    String? keyId,
    String? location,
    String? project,
    V2Restrictions? restrictions,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      restrictions = pulumi.Input.asOptionalInput<V2Restrictions>(restrictions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'displayName': ?displayName,
      'keyId': ?keyId,
      'location': ?location,
      'project': ?project,
      'restrictions': ?pulumi.Input.mapOptionalInputValue<V2Restrictions, Map<String, dynamic>>(restrictions, (value) => value.toMap()),
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      restrictions: map['restrictions'] == null ? null : V2Restrictions.fromMap((map['restrictions'] as Map).cast<String, dynamic>()),
    );
  }
}

