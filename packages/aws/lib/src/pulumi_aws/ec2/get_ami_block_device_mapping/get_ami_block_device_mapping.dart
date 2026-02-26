// ignore_for_file: unused_element, unnecessary_cast

class GetAmiBlockDeviceMapping {
  /// Physical name of the device.
  final String deviceName;

  /// Map containing EBS information, if the device is EBS based. Unlike most object attributes, these are accessed directly (e.g., `ebs.volume_size` or `ebs[<span pulumi-lang-nodejs=""volumeSize"" pulumi-lang-dotnet=""VolumeSize"" pulumi-lang-go=""volumeSize"" pulumi-lang-python=""volume_size"" pulumi-lang-yaml=""volumeSize"" pulumi-lang-java=""volumeSize"">"volume_size"</span>]`) rather than accessed through the first element of a list (e.g., `ebs[0].volume_size`).
  final Map<String, String> ebs;

  /// Suppresses the specified device included in the block device mapping of the AMI.
  final String noDevice;

  /// Virtual device name (for instance stores).
  final String virtualName;

  GetAmiBlockDeviceMapping({
    required this.deviceName,
    required this.ebs,
    required this.noDevice,
    required this.virtualName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceName'] = deviceName;
    map['ebs'] = ebs;
    map['noDevice'] = noDevice;
    map['virtualName'] = virtualName;
    return map;
  }

  factory GetAmiBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return GetAmiBlockDeviceMapping(
      deviceName: map['deviceName'] as String,
      ebs: (map['ebs'] as Map).cast<String, String>(),
      noDevice: map['noDevice'] as String,
      virtualName: map['virtualName'] as String,
    );
  }
}
