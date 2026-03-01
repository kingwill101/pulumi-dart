// ignore_for_file: unused_element, unnecessary_cast


class GetBundlesBundleDesktopTypeAttribute {
  /// The cpu count attribute of the bundle.
  final int cpuCount;
  /// The gpu count attribute of the bundle.
  final String gpuCount;
  /// The gpu spec attribute of the bundle.
  final String gpuSpec;
  /// The memory size attribute of the bundle.
  final String memorySize;

  /// Creates a new [GetBundlesBundleDesktopTypeAttribute].
  /// [cpuCount] The cpu count attribute of the bundle.
  /// [gpuCount] The gpu count attribute of the bundle.
  /// [gpuSpec] The gpu spec attribute of the bundle.
  /// [memorySize] The memory size attribute of the bundle.
  GetBundlesBundleDesktopTypeAttribute({
    required this.cpuCount,
    required this.gpuCount,
    required this.gpuSpec,
    required this.memorySize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
      'gpuCount': gpuCount,
      'gpuSpec': gpuSpec,
      'memorySize': memorySize,
    };
  }

  factory GetBundlesBundleDesktopTypeAttribute.fromMap(Map<String, dynamic> map) {
    return GetBundlesBundleDesktopTypeAttribute(
      cpuCount: map['cpuCount'] as int,
      gpuCount: map['gpuCount'] as String,
      gpuSpec: map['gpuSpec'] as String,
      memorySize: map['memorySize'] as String,
    );
  }
}

