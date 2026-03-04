// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Setting indicating whether the service has a managed identity associated with it.
class ServicesResourceIdentity {
  /// Type of identity being specified, currently SystemAssigned and None are allowed.
  final pulumi.Input<String>? type;

  /// Creates a new [ServicesResourceIdentity].
  /// [type] Type of identity being specified, currently SystemAssigned and None are allowed.
  ServicesResourceIdentity({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory ServicesResourceIdentity.fromMap(Map<String, dynamic> map) {
    return ServicesResourceIdentity(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
