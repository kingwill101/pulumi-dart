// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

/// Identity for the resource.
class Identity {
  /// The identity type.
  final pulumi.Input<ResourceIdentityType>? type;

  /// Creates a new [Identity].
  /// [type] The identity type.
  Identity({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceIdentityType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
