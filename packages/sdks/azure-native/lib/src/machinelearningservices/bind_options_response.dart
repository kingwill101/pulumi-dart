// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BindOptionsResponse {
  /// Indicate whether to create host path.
  final pulumi.Input<bool>? createHostPath;
  /// Type of Bind Option
  final pulumi.Input<String>? propagation;
  /// Mention the selinux options.
  final pulumi.Input<String>? selinux;

  /// Creates a new [BindOptionsResponse].
  /// [createHostPath] Indicate whether to create host path.
  /// [propagation] Type of Bind Option
  /// [selinux] Mention the selinux options.
  const BindOptionsResponse({
    this.createHostPath,
    this.propagation,
    this.selinux,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createHostPath': ?createHostPath,
      'propagation': ?propagation,
      'selinux': ?selinux,
    };
  }

  factory BindOptionsResponse.fromMap(Map<String, dynamic> map) {
    return BindOptionsResponse(
      createHostPath: (() { final guardedValue = map['createHostPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      propagation: (() { final guardedValue = map['propagation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selinux: (() { final guardedValue = map['selinux']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
