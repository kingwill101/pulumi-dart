// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DockerResponse {
  /// Indicate whether container shall run in privileged or non-privileged mode.
  final pulumi.Input<bool?>? privileged;

  /// Creates a new [DockerResponse].
  /// [privileged] Indicate whether container shall run in privileged or non-privileged mode.
  const DockerResponse({
    this.privileged,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privileged': ?privileged,
    };
  }

  factory DockerResponse.fromMap(Map<String, dynamic> map) {
    return DockerResponse(
      privileged: (() { final guardedValue = map['privileged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
