// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Api key object for workspace connection credential.
class WorkspaceConnectionApiKeyResponse {
  final pulumi.Input<String>? key;

  /// Creates a new [WorkspaceConnectionApiKeyResponse].
  /// [key] Optional.
  WorkspaceConnectionApiKeyResponse({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory WorkspaceConnectionApiKeyResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionApiKeyResponse(
      key: map['key'] == null ? null : (map['key'] as String).input(),
    );
  }
}

