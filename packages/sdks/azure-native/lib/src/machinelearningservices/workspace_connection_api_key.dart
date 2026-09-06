// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Api key object for workspace connection credential.
class WorkspaceConnectionApiKey {
  final pulumi.Input<String?>? key;

  /// Creates a new [WorkspaceConnectionApiKey].
  /// [key] Optional.
  const WorkspaceConnectionApiKey({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory WorkspaceConnectionApiKey.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionApiKey(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
