// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionPersonalAccessToken {
  final pulumi.Input<String>? pat;

  /// Creates a new [ConnectionPersonalAccessToken].
  /// [pat] Optional.
  const ConnectionPersonalAccessToken({
    this.pat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pat': ?pat,
    };
  }

  factory ConnectionPersonalAccessToken.fromMap(Map<String, dynamic> map) {
    return ConnectionPersonalAccessToken(
      pat: (() { final guardedValue = map['pat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

