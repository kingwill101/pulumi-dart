// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity properties.
class IdentityProperties {
  /// Managed identity type.
  final pulumi.Input<dynamic>? type;

  /// Creates a new [IdentityProperties].
  /// [type] Managed identity type.
  const IdentityProperties({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory IdentityProperties.fromMap(Map<String, dynamic> map) {
    return IdentityProperties(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
