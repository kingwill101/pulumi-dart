// ignore_for_file: unused_element, unnecessary_cast


class CacheNfsTargetNamespaceJunction {
  /// The name of the access policy applied to this target. Defaults to `default`.
  final String? accessPolicyName;
  /// The client-facing file path of this NFS target within the HPC Cache NFS Target.
  final String namespacePath;
  /// The NFS export of this NFS target within the HPC Cache NFS Target.
  final String nfsExport;
  /// The relative subdirectory path from the `nfs_export` to map to the `namespace_path`. Defaults to `""`, in which case the whole `nfs_export` is exported.
  final String? targetPath;

  /// Creates a new [CacheNfsTargetNamespaceJunction].
  /// [accessPolicyName] The name of the access policy applied to this target. Defaults to `default`.
  /// [namespacePath] The client-facing file path of this NFS target within the HPC Cache NFS Target.
  /// [nfsExport] The NFS export of this NFS target within the HPC Cache NFS Target.
  /// [targetPath] The relative subdirectory path from the `nfs_export` to map to the `namespace_path`. Defaults to `""`, in which case the whole `nfs_export` is exported.
  CacheNfsTargetNamespaceJunction({
    this.accessPolicyName,
    required this.namespacePath,
    required this.nfsExport,
    this.targetPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': ?accessPolicyName,
      'namespacePath': namespacePath,
      'nfsExport': nfsExport,
      'targetPath': ?targetPath,
    };
  }

  factory CacheNfsTargetNamespaceJunction.fromMap(Map<String, dynamic> map) {
    return CacheNfsTargetNamespaceJunction(
      accessPolicyName: map['accessPolicyName'] == null ? null : map['accessPolicyName'] as String,
      namespacePath: map['namespacePath'] as String,
      nfsExport: map['nfsExport'] as String,
      targetPath: map['targetPath'] == null ? null : map['targetPath'] as String,
    );
  }
}

