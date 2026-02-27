// ignore_for_file: unused_element, unnecessary_cast

class VolumeExportPolicyRule {
  /// Defines the access type for clients matching the `allowedClients` specification.
  /// Possible values are: `READ_ONLY`, `READ_WRITE`, `READ_NONE`.
  final String? accessType;

  /// Defines the client ingress specification (allowed clients) as a comma separated list with IPv4 CIDRs or IPv4 host addresses.
  final String? allowedClients;

  /// An integer representing the anonymous user ID. Range is 0 to 4294967295. Required when `squash_mode` is `ALL_SQUASH`.
  final int? anonUid;

  /// If enabled, the root user (UID = 0) of the specified clients doesn't get mapped to nobody (UID = 65534). This is also known as no_root_squash.
  /// Use either squash_mode or has_root_access, but never both at the same time. These parameters are mutually exclusive.
  final String? hasRootAccess;

  /// If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'authentication' kerberos security mode.
  final bool? kerberos5ReadOnly;

  /// If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'authentication' kerberos security mode. The 'kerberos5ReadOnly' value is ignored if this is enabled.
  final bool? kerberos5ReadWrite;

  /// If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'integrity' kerberos security mode.
  final bool? kerberos5iReadOnly;

  /// If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'integrity' kerberos security mode. The 'kerberos5iReadOnly' value is ignored if this is enabled.
  final bool? kerberos5iReadWrite;

  /// If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'privacy' kerberos security mode.
  final bool? kerberos5pReadOnly;

  /// If enabled (true) the rule defines read and write access for clients matching the 'allowedClients' specification. It enables nfs clients to mount using 'privacy' kerberos security mode. The 'kerberos5pReadOnly' value is ignored if this is enabled.
  final bool? kerberos5pReadWrite;

  /// Enable to apply the export rule to NFSV3 clients.
  final bool? nfsv3;

  /// Enable to apply the export rule to NFSV4.1 clients.
  final bool? nfsv4;

  /// SquashMode defines how remote user privileges are restricted when accessing an NFS export. It controls how the user identities (like root) are mapped to anonymous users to limit access and enforce security.
  /// Use either squash_mode or has_root_access, but never both at the same time. These parameters are mutually exclusive.
  /// Possible values are: `SQUASH_MODE_UNSPECIFIED`, `NO_ROOT_SQUASH`, `ROOT_SQUASH`, `ALL_SQUASH`.
  final String? squashMode;

  VolumeExportPolicyRule({
    this.accessType,
    this.allowedClients,
    this.anonUid,
    this.hasRootAccess,
    this.kerberos5ReadOnly,
    this.kerberos5ReadWrite,
    this.kerberos5iReadOnly,
    this.kerberos5iReadWrite,
    this.kerberos5pReadOnly,
    this.kerberos5pReadWrite,
    this.nfsv3,
    this.nfsv4,
    this.squashMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTypeValue = accessType;
    if (accessTypeValue != null) {
      map['accessType'] = accessTypeValue;
    }
    final allowedClientsValue = allowedClients;
    if (allowedClientsValue != null) {
      map['allowedClients'] = allowedClientsValue;
    }
    final anonUidValue = anonUid;
    if (anonUidValue != null) {
      map['anonUid'] = anonUidValue;
    }
    final hasRootAccessValue = hasRootAccess;
    if (hasRootAccessValue != null) {
      map['hasRootAccess'] = hasRootAccessValue;
    }
    final kerberos5ReadOnlyValue = kerberos5ReadOnly;
    if (kerberos5ReadOnlyValue != null) {
      map['kerberos5ReadOnly'] = kerberos5ReadOnlyValue;
    }
    final kerberos5ReadWriteValue = kerberos5ReadWrite;
    if (kerberos5ReadWriteValue != null) {
      map['kerberos5ReadWrite'] = kerberos5ReadWriteValue;
    }
    final kerberos5iReadOnlyValue = kerberos5iReadOnly;
    if (kerberos5iReadOnlyValue != null) {
      map['kerberos5iReadOnly'] = kerberos5iReadOnlyValue;
    }
    final kerberos5iReadWriteValue = kerberos5iReadWrite;
    if (kerberos5iReadWriteValue != null) {
      map['kerberos5iReadWrite'] = kerberos5iReadWriteValue;
    }
    final kerberos5pReadOnlyValue = kerberos5pReadOnly;
    if (kerberos5pReadOnlyValue != null) {
      map['kerberos5pReadOnly'] = kerberos5pReadOnlyValue;
    }
    final kerberos5pReadWriteValue = kerberos5pReadWrite;
    if (kerberos5pReadWriteValue != null) {
      map['kerberos5pReadWrite'] = kerberos5pReadWriteValue;
    }
    final nfsv3Value = nfsv3;
    if (nfsv3Value != null) {
      map['nfsv3'] = nfsv3Value;
    }
    final nfsv4Value = nfsv4;
    if (nfsv4Value != null) {
      map['nfsv4'] = nfsv4Value;
    }
    final squashModeValue = squashMode;
    if (squashModeValue != null) {
      map['squashMode'] = squashModeValue;
    }
    return map;
  }

  factory VolumeExportPolicyRule.fromMap(Map<String, dynamic> map) {
    return VolumeExportPolicyRule(
      accessType:
          map['accessType'] == null ? null : map['accessType'] as String,
      allowedClients: map['allowedClients'] == null
          ? null
          : map['allowedClients'] as String,
      anonUid: map['anonUid'] == null ? null : map['anonUid'] as int,
      hasRootAccess:
          map['hasRootAccess'] == null ? null : map['hasRootAccess'] as String,
      kerberos5ReadOnly: map['kerberos5ReadOnly'] == null
          ? null
          : map['kerberos5ReadOnly'] as bool,
      kerberos5ReadWrite: map['kerberos5ReadWrite'] == null
          ? null
          : map['kerberos5ReadWrite'] as bool,
      kerberos5iReadOnly: map['kerberos5iReadOnly'] == null
          ? null
          : map['kerberos5iReadOnly'] as bool,
      kerberos5iReadWrite: map['kerberos5iReadWrite'] == null
          ? null
          : map['kerberos5iReadWrite'] as bool,
      kerberos5pReadOnly: map['kerberos5pReadOnly'] == null
          ? null
          : map['kerberos5pReadOnly'] as bool,
      kerberos5pReadWrite: map['kerberos5pReadWrite'] == null
          ? null
          : map['kerberos5pReadWrite'] as bool,
      nfsv3: map['nfsv3'] == null ? null : map['nfsv3'] as bool,
      nfsv4: map['nfsv4'] == null ? null : map['nfsv4'] as bool,
      squashMode:
          map['squashMode'] == null ? null : map['squashMode'] as String,
    );
  }
}
