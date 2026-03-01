// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for VM scanning
class VmScannersBaseConfiguration {
  /// Tags that indicates that a resource should not be scanned
  final Map<String, String>? exclusionTags;
  /// The scanning mode for the VM scan.
  final String? scanningMode;

  /// Creates a new [VmScannersBaseConfiguration].
  /// [exclusionTags] Tags that indicates that a resource should not be scanned
  /// [scanningMode] The scanning mode for the VM scan.
  VmScannersBaseConfiguration({
    this.exclusionTags,
    this.scanningMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionTags': ?exclusionTags,
      'scanningMode': ?scanningMode,
    };
  }

  factory VmScannersBaseConfiguration.fromMap(Map<String, dynamic> map) {
    return VmScannersBaseConfiguration(
      exclusionTags: map['exclusionTags'] == null ? null : (map['exclusionTags'] as Map).cast<String, String>(),
      scanningMode: map['scanningMode'] == null ? null : map['scanningMode'] as String,
    );
  }
}

