// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WebApplication certificate.
class Cert {
  /// Gets or sets the Certificate data.
  final pulumi.Input<String>? certData;
  /// Gets or sets a value indicating whether certificate is needed or not.
  final pulumi.Input<bool>? certNeeded;
  /// Gets or sets a value indicating whether certificate is provided or not.
  final pulumi.Input<bool>? certProvided;
  /// Gets or sets the type of secret store for the certificate.
  final pulumi.Input<String>? secretStore;

  /// Creates a new [Cert].
  /// [certData] Gets or sets the Certificate data.
  /// [certNeeded] Gets or sets a value indicating whether certificate is needed or not.
  /// [certProvided] Gets or sets a value indicating whether certificate is provided or not.
  /// [secretStore] Gets or sets the type of secret store for the certificate.
  const Cert({
    this.certData,
    this.certNeeded,
    this.certProvided,
    this.secretStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certData': ?certData,
      'certNeeded': ?certNeeded,
      'certProvided': ?certProvided,
      'secretStore': ?secretStore,
    };
  }

  factory Cert.fromMap(Map<String, dynamic> map) {
    return Cert(
      certData: (() { final guardedValue = map['certData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certNeeded: (() { final guardedValue = map['certNeeded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      certProvided: (() { final guardedValue = map['certProvided']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretStore: (() { final guardedValue = map['secretStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

