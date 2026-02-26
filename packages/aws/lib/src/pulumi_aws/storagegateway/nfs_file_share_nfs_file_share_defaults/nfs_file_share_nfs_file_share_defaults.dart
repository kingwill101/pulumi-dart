// ignore_for_file: unused_element, unnecessary_cast

class NfsFileShareNfsFileShareDefaults {
  /// The Unix directory mode in the string form "nnnn". Defaults to `"0777"`.
  final String? directoryMode;

  /// The Unix file mode in the string form "nnnn". Defaults to `"0666"`.
  final String? fileMode;

  /// The default group ID for the file share (unless the files have another group ID specified). Defaults to <span pulumi-lang-nodejs="`65534`" pulumi-lang-dotnet="`65534`" pulumi-lang-go="`65534`" pulumi-lang-python="`65534`" pulumi-lang-yaml="`65534`" pulumi-lang-java="`65534`">`65534`</span> (<span pulumi-lang-nodejs="`nfsnobody`" pulumi-lang-dotnet="`Nfsnobody`" pulumi-lang-go="`nfsnobody`" pulumi-lang-python="`nfsnobody`" pulumi-lang-yaml="`nfsnobody`" pulumi-lang-java="`nfsnobody`">`nfsnobody`</span>). Valid values: <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> through <span pulumi-lang-nodejs="`4294967294`" pulumi-lang-dotnet="`4294967294`" pulumi-lang-go="`4294967294`" pulumi-lang-python="`4294967294`" pulumi-lang-yaml="`4294967294`" pulumi-lang-java="`4294967294`">`4294967294`</span>.
  final String? groupId;

  /// The default owner ID for the file share (unless the files have another owner ID specified). Defaults to <span pulumi-lang-nodejs="`65534`" pulumi-lang-dotnet="`65534`" pulumi-lang-go="`65534`" pulumi-lang-python="`65534`" pulumi-lang-yaml="`65534`" pulumi-lang-java="`65534`">`65534`</span> (<span pulumi-lang-nodejs="`nfsnobody`" pulumi-lang-dotnet="`Nfsnobody`" pulumi-lang-go="`nfsnobody`" pulumi-lang-python="`nfsnobody`" pulumi-lang-yaml="`nfsnobody`" pulumi-lang-java="`nfsnobody`">`nfsnobody`</span>). Valid values: <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> through <span pulumi-lang-nodejs="`4294967294`" pulumi-lang-dotnet="`4294967294`" pulumi-lang-go="`4294967294`" pulumi-lang-python="`4294967294`" pulumi-lang-yaml="`4294967294`" pulumi-lang-java="`4294967294`">`4294967294`</span>.
  final String? ownerId;

  NfsFileShareNfsFileShareDefaults({
    this.directoryMode,
    this.fileMode,
    this.groupId,
    this.ownerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final directoryModeValue = directoryMode;
    if (directoryModeValue != null) {
      map['directoryMode'] = directoryModeValue;
    }
    final fileModeValue = fileMode;
    if (fileModeValue != null) {
      map['fileMode'] = fileModeValue;
    }
    final groupIdValue = groupId;
    if (groupIdValue != null) {
      map['groupId'] = groupIdValue;
    }
    final ownerIdValue = ownerId;
    if (ownerIdValue != null) {
      map['ownerId'] = ownerIdValue;
    }
    return map;
  }

  factory NfsFileShareNfsFileShareDefaults.fromMap(Map<String, dynamic> map) {
    return NfsFileShareNfsFileShareDefaults(
      directoryMode:
          map['directoryMode'] == null ? null : map['directoryMode'] as String,
      fileMode: map['fileMode'] == null ? null : map['fileMode'] as String,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      ownerId: map['ownerId'] == null ? null : map['ownerId'] as String,
    );
  }
}
