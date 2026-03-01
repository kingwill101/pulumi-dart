// ignore_for_file: unused_element, unnecessary_cast


/// The AS2 agreement validation settings.
class AS2ValidationSettings {
  /// The value indicating whether to check for certificate revocation list on receive.
  final bool checkCertificateRevocationListOnReceive;
  /// The value indicating whether to check for certificate revocation list on send.
  final bool checkCertificateRevocationListOnSend;
  /// The value indicating whether to check for duplicate message.
  final bool checkDuplicateMessage;
  /// The value indicating whether the message has to be compressed.
  final bool compressMessage;
  /// The value indicating whether the message has to be encrypted.
  final bool encryptMessage;
  /// The encryption algorithm.
  final String encryptionAlgorithm;
  /// The number of days to look back for duplicate interchange.
  final int interchangeDuplicatesValidityDays;
  /// The value indicating whether to override incoming message properties with those in agreement.
  final bool overrideMessageProperties;
  /// The value indicating whether the message has to be signed.
  final bool signMessage;
  /// The signing algorithm.
  final String? signingAlgorithm;

  /// Creates a new [AS2ValidationSettings].
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
  AS2ValidationSettings({
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

  factory AS2ValidationSettings.fromMap(Map<String, dynamic> map) {
    return AS2ValidationSettings(
      checkCertificateRevocationListOnReceive: map['checkCertificateRevocationListOnReceive'] as bool,
      checkCertificateRevocationListOnSend: map['checkCertificateRevocationListOnSend'] as bool,
      checkDuplicateMessage: map['checkDuplicateMessage'] as bool,
      compressMessage: map['compressMessage'] as bool,
      encryptMessage: map['encryptMessage'] as bool,
      encryptionAlgorithm: map['encryptionAlgorithm'] as String,
      interchangeDuplicatesValidityDays: map['interchangeDuplicatesValidityDays'] as int,
      overrideMessageProperties: map['overrideMessageProperties'] as bool,
      signMessage: map['signMessage'] as bool,
      signingAlgorithm: map['signingAlgorithm'] == null ? null : map['signingAlgorithm'] as String,
    );
  }
}

