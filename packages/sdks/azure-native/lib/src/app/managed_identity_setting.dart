// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional settings for a Managed Identity that is assigned to the Session pool.
class ManagedIdentitySetting {
  /// The resource ID of a user-assigned managed identity that is assigned to the Session Pool, or 'system' for system-assigned identity.
  final pulumi.Input<String> identity;
  /// Use to select the lifecycle stages of a Session Pool during which the Managed Identity should be available.
  final pulumi.Input<String>? lifecycle;

  /// Creates a new [ManagedIdentitySetting].
  /// [identity] The resource ID of a user-assigned managed identity that is assigned to the Session Pool, or 'system' for system-assigned identity.
  /// [lifecycle] Use to select the lifecycle stages of a Session Pool during which the Managed Identity should be available.
  ManagedIdentitySetting({
    required this.identity,
    this.lifecycle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'lifecycle': ?lifecycle,
    };
  }

  factory ManagedIdentitySetting.fromMap(Map<String, dynamic> map) {
    return ManagedIdentitySetting(
      identity: pulumi.Input.fromValue(map['identity'] as String),
      lifecycle: (() { final guardedValue = map['lifecycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

