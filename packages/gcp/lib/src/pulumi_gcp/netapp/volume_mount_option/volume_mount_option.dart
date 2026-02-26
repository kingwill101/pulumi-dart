// ignore_for_file: unused_element, unnecessary_cast

class VolumeMountOption {
  /// (Output)
  /// Export path of the volume.
  final String? export;

  /// (Output)
  /// Full export path of the volume.
  /// Format for NFS volumes: `<export_ip>:/<shareName>`
  /// Format for SMB volumes: `\\\\netbios_prefix-four_random_hex_letters.domain_name\\shareName`
  final String? exportFull;

  /// (Output)
  /// Human-readable mount instructions.
  final String? instructions;

  /// (Output)
  /// IP Address.
  final String? ipAddress;

  /// (Output)
  /// Protocol to mount with.
  final String? protocol;

  VolumeMountOption({
    this.export,
    this.exportFull,
    this.instructions,
    this.ipAddress,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exportValue = export;
    if (exportValue != null) {
      map['export'] = exportValue;
    }
    final exportFullValue = exportFull;
    if (exportFullValue != null) {
      map['exportFull'] = exportFullValue;
    }
    final instructionsValue = instructions;
    if (instructionsValue != null) {
      map['instructions'] = instructionsValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    return map;
  }

  factory VolumeMountOption.fromMap(Map<String, dynamic> map) {
    return VolumeMountOption(
      export: map['export'] == null ? null : map['export'] as String,
      exportFull:
          map['exportFull'] == null ? null : map['exportFull'] as String,
      instructions:
          map['instructions'] == null ? null : map['instructions'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}
