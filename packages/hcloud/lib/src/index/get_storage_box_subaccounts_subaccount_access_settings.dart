// ignore_for_file: unused_element, unnecessary_cast


class GetStorageBoxSubaccountsSubaccountAccessSettings {
  /// Whether access from outside the Hetzner network is allowed.
  final bool reachableExternally;
  /// Whether the Subaccount is read-only.
  final bool readonly;
  /// Whether the Samba subsystem is enabled.
  final bool sambaEnabled;
  /// Whether the SSH subsystem is enabled.
  final bool sshEnabled;
  /// Whether the WebDAV subsystem is enabled.
  final bool webdavEnabled;

  /// Creates a new [GetStorageBoxSubaccountsSubaccountAccessSettings].
  /// [reachableExternally] Whether access from outside the Hetzner network is allowed.
  /// [readonly] Whether the Subaccount is read-only.
  /// [sambaEnabled] Whether the Samba subsystem is enabled.
  /// [sshEnabled] Whether the SSH subsystem is enabled.
  /// [webdavEnabled] Whether the WebDAV subsystem is enabled.
  GetStorageBoxSubaccountsSubaccountAccessSettings({
    required this.reachableExternally,
    required this.readonly,
    required this.sambaEnabled,
    required this.sshEnabled,
    required this.webdavEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reachableExternally': reachableExternally,
      'readonly': readonly,
      'sambaEnabled': sambaEnabled,
      'sshEnabled': sshEnabled,
      'webdavEnabled': webdavEnabled,
    };
  }

  factory GetStorageBoxSubaccountsSubaccountAccessSettings.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSubaccountsSubaccountAccessSettings(
      reachableExternally: map['reachableExternally'] as bool,
      readonly: map['readonly'] as bool,
      sambaEnabled: map['sambaEnabled'] as bool,
      sshEnabled: map['sshEnabled'] as bool,
      webdavEnabled: map['webdavEnabled'] as bool,
    );
  }
}

