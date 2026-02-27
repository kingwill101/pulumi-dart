// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_restrictions.dart';

/// The set of arguments for Key.
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

  KeyArgs({
    this.annotations,
    this.displayName,
    this.keyId,
    this.location,
    this.project,
    this.restrictions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final keyIdValue = keyId;
    if (keyIdValue != null) {
      map['keyId'] = keyIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final restrictionsValue = restrictions;
    if (restrictionsValue != null) {
      map['restrictions'] = pulumi.Input.mapOptionalInputValue<V2Restrictions,
          Map<String, dynamic>>(restrictionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      keyId: pulumi.Input.asOptionalInput<String>(map['keyId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      restrictions:
          pulumi.Input.asOptionalInput<V2Restrictions>(map['restrictions']),
    );
  }
}
