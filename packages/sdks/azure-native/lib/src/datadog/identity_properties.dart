// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentityProperties {
  /// Specifies the identity type of the Datadog Monitor. At this time the only allowed value is 'SystemAssigned'.
  final pulumi.Input<String>? type;

  /// Creates a new [IdentityProperties].
  /// [type] Specifies the identity type of the Datadog Monitor. At this time the only allowed value is 'SystemAssigned'.
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
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
