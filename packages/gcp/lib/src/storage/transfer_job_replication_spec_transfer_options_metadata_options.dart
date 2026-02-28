// ignore_for_file: unused_element, unnecessary_cast

class TransferJobReplicationSpecTransferOptionsMetadataOptions {
  /// Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets.
  final String? acl;

  /// Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer.
  final String? gid;

  /// Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets.
  final String? kmsKey;

  /// Specifies how each file's mode attribute should be handled by the transfer.
  final String? mode;

  /// Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets.
  final String? storageClass;

  /// Specifies how symlinks should be handled by the transfer.
  final String? symlink;

  /// Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets.
  final String? temporaryHold;

  /// Specifies how each object's timeCreated metadata is preserved for transfers.
  final String? timeCreated;

  /// Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer.
  final String? uid;

  /// Creates a new [TransferJobReplicationSpecTransferOptionsMetadataOptions].
  /// [acl] Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets.
  /// [gid] Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer.
  /// [kmsKey] Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets.
  /// [mode] Specifies how each file's mode attribute should be handled by the transfer.
  /// [storageClass] Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets.
  /// [symlink] Specifies how symlinks should be handled by the transfer.
  /// [temporaryHold] Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets.
  /// [timeCreated] Specifies how each object's timeCreated metadata is preserved for transfers.
  /// [uid] Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer.
  TransferJobReplicationSpecTransferOptionsMetadataOptions({
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
      map['acl'] = aclValue;
    }
    final gidValue = gid;
    if (gidValue != null) {
      map['gid'] = gidValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    final symlinkValue = symlink;
    if (symlinkValue != null) {
      map['symlink'] = symlinkValue;
    }
    final temporaryHoldValue = temporaryHold;
    if (temporaryHoldValue != null) {
      map['temporaryHold'] = temporaryHoldValue;
    }
    final timeCreatedValue = timeCreated;
    if (timeCreatedValue != null) {
      map['timeCreated'] = timeCreatedValue;
    }
    final uidValue = uid;
    if (uidValue != null) {
      map['uid'] = uidValue;
    }
    return map;
  }

  factory TransferJobReplicationSpecTransferOptionsMetadataOptions.fromMap(
      Map<String, dynamic> map) {
    return TransferJobReplicationSpecTransferOptionsMetadataOptions(
      acl: map['acl'] == null ? null : map['acl'] as String,
      gid: map['gid'] == null ? null : map['gid'] as String,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      storageClass:
          map['storageClass'] == null ? null : map['storageClass'] as String,
      symlink: map['symlink'] == null ? null : map['symlink'] as String,
      temporaryHold:
          map['temporaryHold'] == null ? null : map['temporaryHold'] as String,
      timeCreated:
          map['timeCreated'] == null ? null : map['timeCreated'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}
