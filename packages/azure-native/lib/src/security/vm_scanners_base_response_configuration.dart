// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for VM scanning
class VmScannersBaseResponseConfiguration {
  /// Tags that indicates that a resource should not be scanned
  final Map<String, String>? exclusionTags;
  /// The scanning mode for the VM scan.
  final String? scanningMode;

  /// Creates a new [VmScannersBaseResponseConfiguration].
  /// [exclusionTags] Tags that indicates that a resource should not be scanned
  /// [scanningMode] The scanning mode for the VM scan.
  VmScannersBaseResponseConfiguration({
    this.exclusionTags,
    this.scanningMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionTags': ?exclusionTags,
      'scanningMode': ?scanningMode,
    };
  }

  factory VmScannersBaseResponseConfiguration.fromMap(Map<String, dynamic> map) {
    return VmScannersBaseResponseConfiguration(
      exclusionTags: map['exclusionTags'] == null ? null : (map['exclusionTags'] as Map).cast<String, String>(),
      scanningMode: map['scanningMode'] == null ? null : map['scanningMode'] as String,
    );
  }
}

