// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MicrovmsImageCpuConfiguration {
  /// CPU architecture for the MicroVM. Valid values are `x8664` and `arm64`.
  final pulumi.Input<String> architecture;

  /// Creates a new [MicrovmsImageCpuConfiguration].
  /// [architecture] CPU architecture for the MicroVM. Valid values are `x8664` and `arm64`.
  const MicrovmsImageCpuConfiguration({
    required this.architecture,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
    };
  }

  factory MicrovmsImageCpuConfiguration.fromMap(Map<String, dynamic> map) {
    return MicrovmsImageCpuConfiguration(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
    );
  }
}
