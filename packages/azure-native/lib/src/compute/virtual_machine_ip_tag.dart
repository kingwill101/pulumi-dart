// ignore_for_file: unused_element, unnecessary_cast


/// Contains the IP tag associated with the public IP address.
class VirtualMachineIpTag {
  /// IP tag type. Example: FirstPartyUsage.
  final String? ipTagType;
  /// IP tag associated with the public IP. Example: SQL, Storage etc.
  final String? tag;

  /// Creates a new [VirtualMachineIpTag].
  /// [ipTagType] IP tag type. Example: FirstPartyUsage.
  /// [tag] IP tag associated with the public IP. Example: SQL, Storage etc.
  VirtualMachineIpTag({
    this.ipTagType,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipTagType': ?ipTagType,
      'tag': ?tag,
    };
  }

  factory VirtualMachineIpTag.fromMap(Map<String, dynamic> map) {
    return VirtualMachineIpTag(
      ipTagType: map['ipTagType'] == null ? null : map['ipTagType'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}

