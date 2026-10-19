// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageVersionCpuConfiguration {
  /// CPU architecture.
  final pulumi.Input<String> architecture;

  /// Creates a new [GetImageVersionCpuConfiguration].
  /// [architecture] CPU architecture.
  const GetImageVersionCpuConfiguration({
    required this.architecture,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
    };
  }

  factory GetImageVersionCpuConfiguration.fromMap(Map<String, dynamic> map) {
    return GetImageVersionCpuConfiguration(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
    );
  }
}
