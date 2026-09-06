// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cert Manager private key properties
class CertManagerPrivateKeyResponse {
  /// algorithm for private key.
  final pulumi.Input<String> algorithm;
  /// cert-manager rotationPolicy.
  final pulumi.Input<String> rotationPolicy;
  /// size of private key.
  final pulumi.Input<int> size;

  /// Creates a new [CertManagerPrivateKeyResponse].
  /// [algorithm] algorithm for private key.
  /// [rotationPolicy] cert-manager rotationPolicy.
  /// [size] size of private key.
  CertManagerPrivateKeyResponse({
    pulumi.Input<String>? algorithm,
    pulumi.Input<String>? rotationPolicy,
    pulumi.Input<int>? size,
  }) : algorithm = algorithm ?? pulumi.Input.fromValue('ECDSA'), rotationPolicy = rotationPolicy ?? pulumi.Input.fromValue('Always'), size = size ?? pulumi.Input.fromValue(256);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'rotationPolicy': rotationPolicy,
      'size': size,
    };
  }

  factory CertManagerPrivateKeyResponse.fromMap(Map<String, dynamic> map) {
    return CertManagerPrivateKeyResponse(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      rotationPolicy: pulumi.Input.fromValue(map['rotationPolicy'] as String),
      size: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['size'])),
    );
  }
}
