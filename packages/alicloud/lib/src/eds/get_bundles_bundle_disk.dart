// ignore_for_file: unused_element, unnecessary_cast


class GetBundlesBundleDisk {
  /// The disk size attribute of the bundle.
  final String diskSize;
  /// The disk type attribute of the bundle.
  final String diskType;

  /// Creates a new [GetBundlesBundleDisk].
  /// [diskSize] The disk size attribute of the bundle.
  /// [diskType] The disk type attribute of the bundle.
  GetBundlesBundleDisk({
    required this.diskSize,
    required this.diskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSize': diskSize,
      'diskType': diskType,
    };
  }

  factory GetBundlesBundleDisk.fromMap(Map<String, dynamic> map) {
    return GetBundlesBundleDisk(
      diskSize: map['diskSize'] as String,
      diskType: map['diskType'] as String,
    );
  }
}

