// ignore_for_file: unused_element, unnecessary_cast

import 'v2_restrictions_response.dart';

/// Result data returned by getKey.
class GetKeyResult {
  /// Annotations is an unstructured key-value map stored with a policy that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  final Map<String, String> annotations;

  /// A timestamp identifying the time this key was originally created.
  final String createTime;

  /// A timestamp when this key was deleted. If the resource is not deleted, this must be empty.
  final String deleteTime;

  /// Human-readable display name of this key that you can modify. The maximum length is 63 characters.
  final String displayName;

  /// A checksum computed by the server based on the current value of the Key resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. See https://google.aip.dev/154.
  final String etag;

  /// An encrypted and signed value held by this key. This field can be accessed only through the `GetKeyString` method.
  final String keyString;

  /// The resource name of the key. The `name` has the form: `projects//locations/global/keys/`. For example: `projects/123456867718/locations/global/keys/b7ff1f9f-8275-410a-94dd-3855ee9b5dd2` NOTE: Key is a global resource; hence the only supported value for location is `global`.
  final String name;

  /// Key restrictions.
  final V2RestrictionsResponse restrictions;

  /// Unique id in UUID4 format.
  final String uid;

  /// A timestamp identifying the time this key was last updated.
  final String updateTime;

  GetKeyResult({
    required this.annotations,
    required this.createTime,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.keyString,
    required this.name,
    required this.restrictions,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['keyString'] = keyString;
    map['name'] = name;
    map['restrictions'] = restrictions.toMap();
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      keyString: map['keyString'] as String,
      name: map['name'] as String,
      restrictions: V2RestrictionsResponse.fromMap(
          (map['restrictions'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
