// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_key_handles_key_handle/get_key_handles_key_handle.dart';

/// Result data returned by getKeyHandles.
class GetKeyHandlesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetKeyHandlesKeyHandle> keyHandles;

  /// The location of the KMS Key and KeyHandle.
  final String location;

  /// The identifier of the project where KMS KeyHandle is created.
  final String? project;

  /// Indicates the resource type that the resulting CryptoKey is meant to protect, e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  final String resourceTypeSelector;

  GetKeyHandlesResult({
    required this.id,
    required this.keyHandles,
    required this.location,
    this.project,
    required this.resourceTypeSelector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['keyHandles'] =
        pulumi.Input.encodeList<GetKeyHandlesKeyHandle, Map<String, dynamic>>(
            keyHandles, (value) => value.toMap());
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resourceTypeSelector'] = resourceTypeSelector;
    return map;
  }

  factory GetKeyHandlesResult.fromMap(Map<String, dynamic> map) {
    return GetKeyHandlesResult(
      id: map['id'] as String,
      keyHandles: pulumi.Input.decodeList<GetKeyHandlesKeyHandle>(
          map['keyHandles'],
          (value) => GetKeyHandlesKeyHandle.fromMap(
              (value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resourceTypeSelector: map['resourceTypeSelector'] as String,
    );
  }
}
