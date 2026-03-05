// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Group properties.
class IpGroupPropertiesResponse {
  /// IP Address type.
  final pulumi.Input<String>? ipAddressType;
  /// List of IP Prefixes.
  final pulumi.Input<List<String>>? ipPrefixes;
  /// IP Group name.
  final pulumi.Input<String>? name;

  /// Creates a new [IpGroupPropertiesResponse].
  /// [ipAddressType] IP Address type.
  /// [ipPrefixes] List of IP Prefixes.
  /// [name] IP Group name.
  IpGroupPropertiesResponse({
    this.ipAddressType,
    this.ipPrefixes,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ?ipAddressType,
      'ipPrefixes': ?ipPrefixes,
      'name': ?name,
    };
  }

  factory IpGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IpGroupPropertiesResponse(
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipPrefixes: (() { final guardedValue = map['ipPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

