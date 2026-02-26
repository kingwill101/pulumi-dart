// ignore_for_file: unused_element, unnecessary_cast

class WorkstationConfigPersistentDirectoryGcePd {
  /// Type of the disk to use. Defaults to `"pd-standard"`.
  final String? diskType;

  /// Type of file system that the disk should be formatted with. The workstation image must support this file system type. Must be empty if `sourceSnapshot` is set. Defaults to <span pulumi-lang-nodejs="`ext4`" pulumi-lang-dotnet="`Ext4`" pulumi-lang-go="`ext4`" pulumi-lang-python="`ext4`" pulumi-lang-yaml="`ext4`" pulumi-lang-java="`ext4`">`ext4`</span>.
  final String? fsType;

  /// Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
  /// Possible values are: `DELETE`, `RETAIN`.
  final String? reclaimPolicy;

  /// The GB capacity of a persistent home directory for each workstation created with this configuration. Must be empty if `sourceSnapshot` is set.
  /// Valid values are <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>, <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span>, <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>, <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span>, <span pulumi-lang-nodejs="`500`" pulumi-lang-dotnet="`500`" pulumi-lang-go="`500`" pulumi-lang-python="`500`" pulumi-lang-yaml="`500`" pulumi-lang-java="`500`">`500`</span>, or <span pulumi-lang-nodejs="`1000`" pulumi-lang-dotnet="`1000`" pulumi-lang-go="`1000`" pulumi-lang-python="`1000`" pulumi-lang-yaml="`1000`" pulumi-lang-java="`1000`">`1000`</span>. Defaults to <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span>. If less than <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span> GB, the `diskType` must be `pd-balanced` or `pd-ssd`.
  final int? sizeGb;

  /// Name of the snapshot to use as the source for the disk.
  /// Must be empty if `sourceImage` is set.
  /// Must be empty if <span pulumi-lang-nodejs="`readOnly`" pulumi-lang-dotnet="`ReadOnly`" pulumi-lang-go="`readOnly`" pulumi-lang-python="`read_only`" pulumi-lang-yaml="`readOnly`" pulumi-lang-java="`readOnly`">`read_only`</span> is false.
  /// Updating <span pulumi-lang-nodejs="`sourceSnapshot`" pulumi-lang-dotnet="`SourceSnapshot`" pulumi-lang-go="`sourceSnapshot`" pulumi-lang-python="`source_snapshot`" pulumi-lang-yaml="`sourceSnapshot`" pulumi-lang-java="`sourceSnapshot`">`source_snapshot`</span> will update content in the ephemeral directory after the workstation is restarted.
  final String? sourceSnapshot;

  WorkstationConfigPersistentDirectoryGcePd({
    this.diskType,
    this.fsType,
    this.reclaimPolicy,
    this.sizeGb,
    this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
    }
    final fsTypeValue = fsType;
    if (fsTypeValue != null) {
      map['fsType'] = fsTypeValue;
    }
    final reclaimPolicyValue = reclaimPolicy;
    if (reclaimPolicyValue != null) {
      map['reclaimPolicy'] = reclaimPolicyValue;
    }
    final sizeGbValue = sizeGb;
    if (sizeGbValue != null) {
      map['sizeGb'] = sizeGbValue;
    }
    final sourceSnapshotValue = sourceSnapshot;
    if (sourceSnapshotValue != null) {
      map['sourceSnapshot'] = sourceSnapshotValue;
    }
    return map;
  }

  factory WorkstationConfigPersistentDirectoryGcePd.fromMap(
      Map<String, dynamic> map) {
    return WorkstationConfigPersistentDirectoryGcePd(
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      reclaimPolicy:
          map['reclaimPolicy'] == null ? null : map['reclaimPolicy'] as String,
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as int,
      sourceSnapshot: map['sourceSnapshot'] == null
          ? null
          : map['sourceSnapshot'] as String,
    );
  }
}
