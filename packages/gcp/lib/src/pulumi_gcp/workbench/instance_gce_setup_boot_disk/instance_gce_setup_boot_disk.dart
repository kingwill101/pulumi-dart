// ignore_for_file: unused_element, unnecessary_cast

class InstanceGceSetupBootDisk {
  /// Optional. Input only. Disk encryption method used on the boot and
  /// data disks, defaults to GMEK.
  /// Possible values are: `GMEK`, `CMEK`.
  final String? diskEncryption;

  /// Optional. The size of the boot disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB). If not specified, this defaults to the
  /// recommended value of 150GB.
  final String? diskSizeGb;

  /// Optional. Indicates the type of the disk.
  /// Possible values are: `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  final String? diskType;

  /// 'Optional. The KMS key used to encrypt the disks, only
  /// applicable if<span pulumi-lang-nodejs=" diskEncryption " pulumi-lang-dotnet=" DiskEncryption " pulumi-lang-go=" diskEncryption " pulumi-lang-python=" disk_encryption " pulumi-lang-yaml=" diskEncryption " pulumi-lang-java=" diskEncryption "> disk_encryption </span>is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}`
  /// Learn more about using your own encryption keys.'
  final String? kmsKey;

  InstanceGceSetupBootDisk({
    this.diskEncryption,
    this.diskSizeGb,
    this.diskType,
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskEncryptionValue = diskEncryption;
    if (diskEncryptionValue != null) {
      map['diskEncryption'] = diskEncryptionValue;
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    return map;
  }

  factory InstanceGceSetupBootDisk.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetupBootDisk(
      diskEncryption: map['diskEncryption'] == null
          ? null
          : map['diskEncryption'] as String,
      diskSizeGb:
          map['diskSizeGb'] == null ? null : map['diskSizeGb'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
