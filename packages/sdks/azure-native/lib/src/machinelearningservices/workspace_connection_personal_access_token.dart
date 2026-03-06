// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionPersonalAccessToken {
  final pulumi.Input<String>? pat;

  /// Creates a new [WorkspaceConnectionPersonalAccessToken].
  /// [pat] Optional.
  const WorkspaceConnectionPersonalAccessToken({
    this.pat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pat': ?pat,
    };
  }

  factory WorkspaceConnectionPersonalAccessToken.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionPersonalAccessToken(
      pat: (() { final guardedValue = map['pat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

