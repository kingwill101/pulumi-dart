// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity for the resource.
class ManagedCassandraManagedServiceIdentity {
  /// The type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [ManagedCassandraManagedServiceIdentity].
  /// [type] The type of the resource.
  ManagedCassandraManagedServiceIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ManagedCassandraManagedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedCassandraManagedServiceIdentity(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

