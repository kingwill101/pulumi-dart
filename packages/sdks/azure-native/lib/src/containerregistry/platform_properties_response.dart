// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The platform properties against which the run has to happen.
class PlatformPropertiesResponse {
  /// The OS architecture.
  final pulumi.Input<String>? architecture;
  /// The operating system type required for the run.
  final pulumi.Input<String> os;
  /// Variant of the CPU.
  final pulumi.Input<String>? variant;

  /// Creates a new [PlatformPropertiesResponse].
  /// [architecture] The OS architecture.
  /// [os] The operating system type required for the run.
  /// [variant] Variant of the CPU.
  PlatformPropertiesResponse({
    this.architecture,
    required this.os,
    this.variant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'os': os,
      'variant': ?variant,
    };
  }

  factory PlatformPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PlatformPropertiesResponse(
      architecture: map['architecture'] == null ? null : (map['architecture'] as String).input(),
      os: (map['os'] as String).input(),
      variant: map['variant'] == null ? null : (map['variant'] as String).input(),
    );
  }
}

