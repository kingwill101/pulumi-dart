// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The nfvi details.
class NfviDetails {
  /// The nfvi name.
  final pulumi.Input<String>? name;
  /// The nfvi type.
  final pulumi.Input<String>? type;

  /// Creates a new [NfviDetails].
  /// [name] The nfvi name.
  /// [type] The nfvi type.
  NfviDetails({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory NfviDetails.fromMap(Map<String, dynamic> map) {
    return NfviDetails(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

