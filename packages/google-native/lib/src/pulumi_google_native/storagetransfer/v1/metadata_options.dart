// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_options_acl.dart';
import 'metadata_options_gid.dart';
import 'metadata_options_kms_key.dart';
import 'metadata_options_mode.dart';
import 'metadata_options_storage_class.dart';
import 'metadata_options_symlink.dart';
import 'metadata_options_temporary_hold.dart';
import 'metadata_options_time_created.dart';
import 'metadata_options_uid.dart';

/// Specifies the metadata options for running a transfer.
class MetadataOptions {
  /// Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as ACL_DESTINATION_BUCKET_DEFAULT.
  final MetadataOptionsAcl? acl;

  /// Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer. By default, GID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final MetadataOptionsGid? gid;

  /// Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as KMS_KEY_DESTINATION_BUCKET_DEFAULT.
  final MetadataOptionsKmsKey? kmsKey;

  /// Specifies how each file's mode attribute should be handled by the transfer. By default, mode is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final MetadataOptionsMode? mode;

  /// Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets. If unspecified, the default behavior is the same as STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT.
  final MetadataOptionsStorageClass? storageClass;

  /// Specifies how symlinks should be handled by the transfer. By default, symlinks are not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final MetadataOptionsSymlink? symlink;

  /// Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TEMPORARY_HOLD_PRESERVE.
  final MetadataOptionsTemporaryHold? temporaryHold;

  /// Specifies how each object's `timeCreated` metadata is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TIME_CREATED_SKIP.
  final MetadataOptionsTimeCreated? timeCreated;

  /// Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer. By default, UID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final MetadataOptionsUid? uid;

  MetadataOptions({
    this.acl,
    this.gid,
    this.kmsKey,
    this.mode,
    this.storageClass,
    this.symlink,
    this.temporaryHold,
    this.timeCreated,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aclValue = acl;
    if (aclValue != null) {
      map['acl'] = aclValue.value;
    }
    final gidValue = gid;
    if (gidValue != null) {
      map['gid'] = gidValue.value;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue.value;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue.value;
    }
    final symlinkValue = symlink;
    if (symlinkValue != null) {
      map['symlink'] = symlinkValue.value;
    }
    final temporaryHoldValue = temporaryHold;
    if (temporaryHoldValue != null) {
      map['temporaryHold'] = temporaryHoldValue.value;
    }
    final timeCreatedValue = timeCreated;
    if (timeCreatedValue != null) {
      map['timeCreated'] = timeCreatedValue.value;
    }
    final uidValue = uid;
    if (uidValue != null) {
      map['uid'] = uidValue.value;
    }
    return map;
  }

  factory MetadataOptions.fromMap(Map<String, dynamic> map) {
    return MetadataOptions(
      acl: map['acl'] == null
          ? null
          : MetadataOptionsAcl.fromValue(map['acl'] as String),
      gid: map['gid'] == null
          ? null
          : MetadataOptionsGid.fromValue(map['gid'] as String),
      kmsKey: map['kmsKey'] == null
          ? null
          : MetadataOptionsKmsKey.fromValue(map['kmsKey'] as String),
      mode: map['mode'] == null
          ? null
          : MetadataOptionsMode.fromValue(map['mode'] as String),
      storageClass: map['storageClass'] == null
          ? null
          : MetadataOptionsStorageClass.fromValue(
              map['storageClass'] as String),
      symlink: map['symlink'] == null
          ? null
          : MetadataOptionsSymlink.fromValue(map['symlink'] as String),
      temporaryHold: map['temporaryHold'] == null
          ? null
          : MetadataOptionsTemporaryHold.fromValue(
              map['temporaryHold'] as String),
      timeCreated: map['timeCreated'] == null
          ? null
          : MetadataOptionsTimeCreated.fromValue(map['timeCreated'] as String),
      uid: map['uid'] == null
          ? null
          : MetadataOptionsUid.fromValue(map['uid'] as String),
    );
  }
}
