// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionAccountKeyResponse {
  final pulumi.Input<String>? key;

  /// Creates a new [WorkspaceConnectionAccountKeyResponse].
  /// [key] Optional.
  const WorkspaceConnectionAccountKeyResponse({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory WorkspaceConnectionAccountKeyResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionAccountKeyResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

