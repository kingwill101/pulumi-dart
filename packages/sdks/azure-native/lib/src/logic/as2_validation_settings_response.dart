// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AS2 agreement validation settings.
class AS2ValidationSettingsResponse {
  /// The value indicating whether to check for certificate revocation list on receive.
  final pulumi.Input<bool> checkCertificateRevocationListOnReceive;
  /// The value indicating whether to check for certificate revocation list on send.
  final pulumi.Input<bool> checkCertificateRevocationListOnSend;
  /// The value indicating whether to check for duplicate message.
  final pulumi.Input<bool> checkDuplicateMessage;
  /// The value indicating whether the message has to be compressed.
  final pulumi.Input<bool> compressMessage;
  /// The value indicating whether the message has to be encrypted.
  final pulumi.Input<bool> encryptMessage;
  /// The encryption algorithm.
  final pulumi.Input<String> encryptionAlgorithm;
  /// The number of days to look back for duplicate interchange.
  final pulumi.Input<int> interchangeDuplicatesValidityDays;
  /// The value indicating whether to override incoming message properties with those in agreement.
  final pulumi.Input<bool> overrideMessageProperties;
  /// The value indicating whether the message has to be signed.
  final pulumi.Input<bool> signMessage;
  /// The signing algorithm.
  final pulumi.Input<String?>? signingAlgorithm;

  /// Creates a new [AS2ValidationSettingsResponse].
  /// [checkCertificateRevocationListOnReceive] The value indicating whether to check for certificate revocation list on receive.
  /// [checkCertificateRevocationListOnSend] The value indicating whether to check for certificate revocation list on send.
  /// [checkDuplicateMessage] The value indicating whether to check for duplicate message.
  /// [compressMessage] The value indicating whether the message has to be compressed.
  /// [encryptMessage] The value indicating whether the message has to be encrypted.
  /// [encryptionAlgorithm] The encryption algorithm.
  /// [interchangeDuplicatesValidityDays] The number of days to look back for duplicate interchange.
  /// [overrideMessageProperties] The value indicating whether to override incoming message properties with those in agreement.
  /// [signMessage] The value indicating whether the message has to be signed.
  /// [signingAlgorithm] The signing algorithm.
  const AS2ValidationSettingsResponse({
    required this.checkCertificateRevocationListOnReceive,
    required this.checkCertificateRevocationListOnSend,
    required this.checkDuplicateMessage,
    required this.compressMessage,
    required this.encryptMessage,
    required this.encryptionAlgorithm,
    required this.interchangeDuplicatesValidityDays,
    required this.overrideMessageProperties,
    required this.signMessage,
    this.signingAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkCertificateRevocationListOnReceive': checkCertificateRevocationListOnReceive,
      'checkCertificateRevocationListOnSend': checkCertificateRevocationListOnSend,
      'checkDuplicateMessage': checkDuplicateMessage,
      'compressMessage': compressMessage,
      'encryptMessage': encryptMessage,
      'encryptionAlgorithm': encryptionAlgorithm,
      'interchangeDuplicatesValidityDays': interchangeDuplicatesValidityDays,
      'overrideMessageProperties': overrideMessageProperties,
      'signMessage': signMessage,
      'signingAlgorithm': ?signingAlgorithm,
    };
  }

  factory AS2ValidationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AS2ValidationSettingsResponse(
      checkCertificateRevocationListOnReceive: pulumi.Input.fromValue(map['checkCertificateRevocationListOnReceive'] as bool),
      checkCertificateRevocationListOnSend: pulumi.Input.fromValue(map['checkCertificateRevocationListOnSend'] as bool),
      checkDuplicateMessage: pulumi.Input.fromValue(map['checkDuplicateMessage'] as bool),
      compressMessage: pulumi.Input.fromValue(map['compressMessage'] as bool),
      encryptMessage: pulumi.Input.fromValue(map['encryptMessage'] as bool),
      encryptionAlgorithm: pulumi.Input.fromValue(map['encryptionAlgorithm'] as String),
      interchangeDuplicatesValidityDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['interchangeDuplicatesValidityDays'])),
      overrideMessageProperties: pulumi.Input.fromValue(map['overrideMessageProperties'] as bool),
      signMessage: pulumi.Input.fromValue(map['signMessage'] as bool),
      signingAlgorithm: (() { final guardedValue = map['signingAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
