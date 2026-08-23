// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateLinkAssociationProperties {
  /// The rmpl Resource ID.
  final pulumi.Input<String>? privateLink;
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [PrivateLinkAssociationProperties].
  /// [privateLink] The rmpl Resource ID.
  /// [publicNetworkAccess] Optional.
  const PrivateLinkAssociationProperties({
    this.privateLink,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLink': ?privateLink,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory PrivateLinkAssociationProperties.fromMap(Map<String, dynamic> map) {
    return PrivateLinkAssociationProperties(
      privateLink: (() { final guardedValue = map['privateLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
