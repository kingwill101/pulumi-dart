// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is optional input that contains the authentication that should be used to generate the namespace.
class CustomLocationPropertiesResponseAuthentication {
  /// The type of the Custom Locations authentication
  final pulumi.Input<String>? type;

  /// Creates a new [CustomLocationPropertiesResponseAuthentication].
  /// [type] The type of the Custom Locations authentication
  CustomLocationPropertiesResponseAuthentication({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory CustomLocationPropertiesResponseAuthentication.fromMap(Map<String, dynamic> map) {
    return CustomLocationPropertiesResponseAuthentication(
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

