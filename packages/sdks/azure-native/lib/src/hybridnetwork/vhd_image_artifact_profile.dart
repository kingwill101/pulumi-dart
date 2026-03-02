// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vhd artifact profile.
class VhdImageArtifactProfile {
  /// Vhd name.
  final pulumi.Input<String>? vhdName;
  /// Vhd version.
  final pulumi.Input<String>? vhdVersion;

  /// Creates a new [VhdImageArtifactProfile].
  /// [vhdName] Vhd name.
  /// [vhdVersion] Vhd version.
  VhdImageArtifactProfile({
    this.vhdName,
    this.vhdVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vhdName': ?vhdName,
      'vhdVersion': ?vhdVersion,
    };
  }

  factory VhdImageArtifactProfile.fromMap(Map<String, dynamic> map) {
    return VhdImageArtifactProfile(
      vhdName: map['vhdName'] == null ? null : (map['vhdName'] as String).input(),
      vhdVersion: map['vhdVersion'] == null ? null : (map['vhdVersion'] as String).input(),
    );
  }
}

