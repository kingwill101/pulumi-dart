// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The platform properties against which the run has to happen.
class PlatformProperties {
  /// The OS architecture.
  final pulumi.Input<dynamic>? architecture;
  /// The operating system type required for the run.
  final pulumi.Input<dynamic> os;
  /// Variant of the CPU.
  final pulumi.Input<dynamic>? variant;

  /// Creates a new [PlatformProperties].
  /// [architecture] The OS architecture.
  /// [os] The operating system type required for the run.
  /// [variant] Variant of the CPU.
  const PlatformProperties({
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

  factory PlatformProperties.fromMap(Map<String, dynamic> map) {
    return PlatformProperties(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      os: pulumi.Input.fromValue(map['os']),
      variant: (() { final guardedValue = map['variant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
