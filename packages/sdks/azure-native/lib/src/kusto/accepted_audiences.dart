// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an accepted audience trusted by the cluster.
class AcceptedAudiences {
  /// GUID or valid URL representing an accepted audience.
  final pulumi.Input<String>? value;

  /// Creates a new [AcceptedAudiences].
  /// [value] GUID or valid URL representing an accepted audience.
  const AcceptedAudiences({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AcceptedAudiences.fromMap(Map<String, dynamic> map) {
    return AcceptedAudiences(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
