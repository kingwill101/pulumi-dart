// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageCpuConfiguration {
  /// CPU architecture for the MicroVM. Valid values are `x8664` and `arm64`.
  final pulumi.Input<String> architecture;

  /// Creates a new [ImageCpuConfiguration].
  /// [architecture] CPU architecture for the MicroVM. Valid values are `x8664` and `arm64`.
  const ImageCpuConfiguration({
    required this.architecture,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
    };
  }

  factory ImageCpuConfiguration.fromMap(Map<String, dynamic> map) {
    return ImageCpuConfiguration(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
    );
  }
}
