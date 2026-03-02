// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBundlesBundleDisk {
  /// The disk size attribute of the bundle.
  final pulumi.Input<String> diskSize;
  /// The disk type attribute of the bundle.
  final pulumi.Input<String> diskType;

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
      diskSize: (map['diskSize'] as String).input(),
      diskType: (map['diskType'] as String).input(),
    );
  }
}

