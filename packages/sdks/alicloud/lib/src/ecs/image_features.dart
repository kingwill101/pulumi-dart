// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageFeatures {
  /// Specifies whether to support the Non-Volatile Memory Express (NVMe) protocol. Valid values:
  /// - supported: The image supports NVMe. Instances created from this image also support NVMe.
  /// - unsupported: The image does not support NVMe. Instances created from this image do not support NVMe.
  final pulumi.Input<String>? nvmeSupport;

  /// Creates a new [ImageFeatures].
  /// [nvmeSupport] Specifies whether to support the Non-Volatile Memory Express (NVMe) protocol. Valid values:
  ImageFeatures({
    this.nvmeSupport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nvmeSupport': ?nvmeSupport,
    };
  }

  factory ImageFeatures.fromMap(Map<String, dynamic> map) {
    return ImageFeatures(
      nvmeSupport: map['nvmeSupport'] == null ? null : (map['nvmeSupport']! as String).input(),
    );
  }
}

