// ignore_for_file: unused_element, unnecessary_cast


/// Details of the OS Disk.
class OSDiskDetailsResponse {
  /// The type of the OS on the VM.
  final String? osType;
  /// The id of the disk containing the OS.
  final String? osVhdId;
  /// The OS disk VHD name.
  final String? vhdName;

  /// Creates a new [OSDiskDetailsResponse].
  /// [osType] The type of the OS on the VM.
  /// [osVhdId] The id of the disk containing the OS.
  /// [vhdName] The OS disk VHD name.
  OSDiskDetailsResponse({
    this.osType,
    this.osVhdId,
    this.vhdName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osType': ?osType,
      'osVhdId': ?osVhdId,
      'vhdName': ?vhdName,
    };
  }

  factory OSDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return OSDiskDetailsResponse(
      osType: map['osType'] == null ? null : map['osType'] as String,
      osVhdId: map['osVhdId'] == null ? null : map['osVhdId'] as String,
      vhdName: map['vhdName'] == null ? null : map['vhdName'] as String,
    );
  }
}

