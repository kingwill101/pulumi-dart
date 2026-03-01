// ignore_for_file: unused_element, unnecessary_cast

import 'management_policy_base_blob_response.dart';
import 'management_policy_snap_shot_response.dart';
import 'management_policy_version_response.dart';

/// Actions are applied to the filtered blobs when the execution condition is met.
class ManagementPolicyActionResponse {
  /// The management policy action for base blob
  final ManagementPolicyBaseBlobResponse? baseBlob;
  /// The management policy action for snapshot
  final ManagementPolicySnapShotResponse? snapshot;
  /// The management policy action for version
  final ManagementPolicyVersionResponse? version;

  /// Creates a new [ManagementPolicyActionResponse].
  /// [baseBlob] The management policy action for base blob
  /// [snapshot] The management policy action for snapshot
  /// [version] The management policy action for version
  ManagementPolicyActionResponse({
    this.baseBlob,
    this.snapshot,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseBlob': ?baseBlob == null ? null : baseBlob!.toMap(),
      'snapshot': ?snapshot == null ? null : snapshot!.toMap(),
      'version': ?version == null ? null : version!.toMap(),
    };
  }

  factory ManagementPolicyActionResponse.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyActionResponse(
      baseBlob: map['baseBlob'] == null ? null : ManagementPolicyBaseBlobResponse.fromMap((map['baseBlob'] as Map).cast<String, dynamic>()),
      snapshot: map['snapshot'] == null ? null : ManagementPolicySnapShotResponse.fromMap((map['snapshot'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : ManagementPolicyVersionResponse.fromMap((map['version'] as Map).cast<String, dynamic>()),
    );
  }
}

