// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_control_plane_encryption_kms_status/cluster_control_plane_encryption_kms_status.dart';

class ClusterControlPlaneEncryption {
  /// The Cloud KMS CryptoKey e.g.
  /// projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
  /// to use for protecting control plane disks. If not specified, a
  /// Google-managed key will be used instead.
  final String? kmsKey;

  /// (Output)
  /// The Cloud KMS CryptoKeyVersion currently in use for protecting control
  /// plane disks. Only applicable if kms_key is set.
  final String? kmsKeyActiveVersion;

  /// (Output)
  /// Availability of the Cloud KMS CryptoKey. If not `KEY_AVAILABLE`, then
  /// nodes may go offline as they cannot access their local data. This can be
  /// caused by a lack of permissions to use the key, or if the key is disabled
  /// or deleted.
  final String? kmsKeyState;

  /// (Output)
  /// Error status returned by Cloud KMS when using this key. This field may be
  /// populated only if `kms_key_state` is not `KMS_KEY_STATE_KEY_AVAILABLE`.
  /// If populated, this field contains the error status reported by Cloud KMS.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_control_plane_encryption_kms_status"></a>The `kms_status` block contains:
  final List<ClusterControlPlaneEncryptionKmsStatus>? kmsStatuses;

  ClusterControlPlaneEncryption({
    this.kmsKey,
    this.kmsKeyActiveVersion,
    this.kmsKeyState,
    this.kmsStatuses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final kmsKeyActiveVersionValue = kmsKeyActiveVersion;
    if (kmsKeyActiveVersionValue != null) {
      map['kmsKeyActiveVersion'] = kmsKeyActiveVersionValue;
    }
    final kmsKeyStateValue = kmsKeyState;
    if (kmsKeyStateValue != null) {
      map['kmsKeyState'] = kmsKeyStateValue;
    }
    final kmsStatusesValue = kmsStatuses;
    if (kmsStatusesValue != null) {
      map['kmsStatuses'] = Input.encodeList<
          ClusterControlPlaneEncryptionKmsStatus,
          Map<String, dynamic>>(kmsStatusesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterControlPlaneEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneEncryption(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      kmsKeyActiveVersion: map['kmsKeyActiveVersion'] == null
          ? null
          : map['kmsKeyActiveVersion'] as String,
      kmsKeyState:
          map['kmsKeyState'] == null ? null : map['kmsKeyState'] as String,
      kmsStatuses: map['kmsStatuses'] == null
          ? null
          : Input.decodeList<ClusterControlPlaneEncryptionKmsStatus>(
              map['kmsStatuses'],
              (value) => ClusterControlPlaneEncryptionKmsStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
