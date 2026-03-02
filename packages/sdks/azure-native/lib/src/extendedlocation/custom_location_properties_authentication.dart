// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is optional input that contains the authentication that should be used to generate the namespace.
class CustomLocationPropertiesAuthentication {
  /// The type of the Custom Locations authentication
  final pulumi.Input<String>? type;
  /// The kubeconfig value.
  final pulumi.Input<String>? value;

  /// Creates a new [CustomLocationPropertiesAuthentication].
  /// [type] The type of the Custom Locations authentication
  /// [value] The kubeconfig value.
  CustomLocationPropertiesAuthentication({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory CustomLocationPropertiesAuthentication.fromMap(Map<String, dynamic> map) {
    return CustomLocationPropertiesAuthentication(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

