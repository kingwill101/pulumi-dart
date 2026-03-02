// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionAccountKey {
  final pulumi.Input<String>? key;

  /// Creates a new [WorkspaceConnectionAccountKey].
  /// [key] Optional.
  WorkspaceConnectionAccountKey({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory WorkspaceConnectionAccountKey.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionAccountKey(
      key: map['key'] == null ? null : (map['key'] as String).input(),
    );
  }
}

