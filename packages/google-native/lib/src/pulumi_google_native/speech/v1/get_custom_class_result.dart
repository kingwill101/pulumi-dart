// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'class_item_response.dart';

/// Result data returned by getCustomClass.
class GetCustomClassResult {
  /// Allows users to store small amounts of arbitrary data. Both the key and the value must be 63 characters or less each. At most 100 annotations. This field is not used.
  final Map<String, String> annotations;

  /// If this custom class is a resource, the custom_class_id is the resource id of the CustomClass. Case sensitive.
  final String customClassId;

  /// The time at which this resource was requested for deletion. This field is not used.
  final String deleteTime;

  /// User-settable, human-readable name for the CustomClass. Must be 63 characters or less. This field is not used.
  final String displayName;

  /// This checksum is computed by the server based on the value of other fields. This may be sent on update, undelete, and delete requests to ensure the client has an up-to-date value before proceeding. This field is not used.
  final String etag;

  /// The time at which this resource will be purged. This field is not used.
  final String expireTime;

  /// A collection of class items.
  final List<ClassItemResponse> items;

  /// The [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which the content of the ClassItem is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final String kmsKeyName;

  /// The [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions) with which content of the ClassItem is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  final String kmsKeyVersionName;

  /// The resource name of the custom class.
  final String name;

  /// Whether or not this CustomClass is in the process of being updated. This field is not used.
  final bool reconciling;

  /// The CustomClass lifecycle state. This field is not used.
  final String state;

  /// System-assigned unique identifier for the CustomClass. This field is not used.
  final String uid;

  GetCustomClassResult({
    required this.annotations,
    required this.customClassId,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.expireTime,
    required this.items,
    required this.kmsKeyName,
    required this.kmsKeyVersionName,
    required this.name,
    required this.reconciling,
    required this.state,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['customClassId'] = customClassId;
    map['deleteTime'] = deleteTime;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['expireTime'] = expireTime;
    map['items'] = Input.encodeList<ClassItemResponse, Map<String, dynamic>>(
        items, (value) => value.toMap());
    map['kmsKeyName'] = kmsKeyName;
    map['kmsKeyVersionName'] = kmsKeyVersionName;
    map['name'] = name;
    map['reconciling'] = reconciling;
    map['state'] = state;
    map['uid'] = uid;
    return map;
  }

  factory GetCustomClassResult.fromMap(Map<String, dynamic> map) {
    return GetCustomClassResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      customClassId: map['customClassId'] as String,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      expireTime: map['expireTime'] as String,
      items: Input.decodeList<ClassItemResponse>(
          map['items'],
          (value) => ClassItemResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      kmsKeyName: map['kmsKeyName'] as String,
      kmsKeyVersionName: map['kmsKeyVersionName'] as String,
      name: map['name'] as String,
      reconciling: map['reconciling'] as bool,
      state: map['state'] as String,
      uid: map['uid'] as String,
    );
  }
}
