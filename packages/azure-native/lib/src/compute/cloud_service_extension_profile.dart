// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension.dart';

/// Describes a cloud service extension profile.
class CloudServiceExtensionProfile {
  /// List of extensions for the cloud service.
  final List<Extension>? extensions;

  /// Creates a new [CloudServiceExtensionProfile].
  /// [extensions] List of extensions for the cloud service.
  CloudServiceExtensionProfile({
    this.extensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions': ?extensions == null ? null : pulumi.Input.encodeList<Extension, Map<String, dynamic>>(extensions!, (value) => value.toMap()),
    };
  }

  factory CloudServiceExtensionProfile.fromMap(Map<String, dynamic> map) {
    return CloudServiceExtensionProfile(
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<Extension>(map['extensions'], (value) => Extension.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

