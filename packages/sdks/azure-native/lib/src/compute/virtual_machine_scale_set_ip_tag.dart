// ignore_for_file: unused_element, unnecessary_cast


/// Contains the IP tag associated with the public IP address.
class VirtualMachineScaleSetIpTag {
  /// IP tag type. Example: FirstPartyUsage.
  final String? ipTagType;
  /// IP tag associated with the public IP. Example: SQL, Storage etc.
  final String? tag;

  /// Creates a new [VirtualMachineScaleSetIpTag].
  /// [ipTagType] IP tag type. Example: FirstPartyUsage.
  /// [tag] IP tag associated with the public IP. Example: SQL, Storage etc.
  VirtualMachineScaleSetIpTag({
    this.ipTagType,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipTagType': ?ipTagType,
      'tag': ?tag,
    };
  }

  factory VirtualMachineScaleSetIpTag.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetIpTag(
      ipTagType: map['ipTagType'] == null ? null : map['ipTagType'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}

