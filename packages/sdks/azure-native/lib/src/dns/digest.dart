// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A digest.
class Digest {
  /// The digest algorithm type represents the standard digest algorithm number used to construct the digest. See: https://www.iana.org/assignments/ds-rr-types/ds-rr-types.xhtml
  final pulumi.Input<int>? algorithmType;
  /// The digest value is a cryptographic hash value of the referenced DNSKEY Resource Record.
  final pulumi.Input<String>? value;

  /// Creates a new [Digest].
  /// [algorithmType] The digest algorithm type represents the standard digest algorithm number used to construct the digest. See: https://www.iana.org/assignments/ds-rr-types/ds-rr-types.xhtml
  /// [value] The digest value is a cryptographic hash value of the referenced DNSKEY Resource Record.
  Digest({
    this.algorithmType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithmType': ?algorithmType,
      'value': ?value,
    };
  }

  factory Digest.fromMap(Map<String, dynamic> map) {
    return Digest(
      algorithmType: (() { final guardedValue = map['algorithmType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

