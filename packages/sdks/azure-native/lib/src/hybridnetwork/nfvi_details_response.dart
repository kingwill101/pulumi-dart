// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The nfvi details.
class NfviDetailsResponse {
  /// The nfvi name.
  final pulumi.Input<String>? name;
  /// The nfvi type.
  final pulumi.Input<String>? type;

  /// Creates a new [NfviDetailsResponse].
  /// [name] The nfvi name.
  /// [type] The nfvi type.
  NfviDetailsResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory NfviDetailsResponse.fromMap(Map<String, dynamic> map) {
    return NfviDetailsResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

