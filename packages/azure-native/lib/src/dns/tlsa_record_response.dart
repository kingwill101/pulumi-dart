// ignore_for_file: unused_element, unnecessary_cast


/// A TLSA record. For more information about the TLSA record format, see RFC 6698: https://www.rfc-editor.org/rfc/rfc6698
class TlsaRecordResponse {
  /// This specifies the certificate association data to be matched.
  final String? certAssociationData;
  /// The matching type specifies how the certificate association is presented.
  final int? matchingType;
  /// The selector specifies which part of the TLS certificate presented by the server will be matched against the association data.
  final int? selector;
  /// The usage specifies the provided association that will be used to match the certificate presented in the TLS handshake.
  final int? usage;

  /// Creates a new [TlsaRecordResponse].
  /// [certAssociationData] This specifies the certificate association data to be matched.
  /// [matchingType] The matching type specifies how the certificate association is presented.
  /// [selector] The selector specifies which part of the TLS certificate presented by the server will be matched against the association data.
  /// [usage] The usage specifies the provided association that will be used to match the certificate presented in the TLS handshake.
  TlsaRecordResponse({
    this.certAssociationData,
    this.matchingType,
    this.selector,
    this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certAssociationData': ?certAssociationData,
      'matchingType': ?matchingType,
      'selector': ?selector,
      'usage': ?usage,
    };
  }

  factory TlsaRecordResponse.fromMap(Map<String, dynamic> map) {
    return TlsaRecordResponse(
      certAssociationData: map['certAssociationData'] == null ? null : map['certAssociationData'] as String,
      matchingType: map['matchingType'] == null ? null : map['matchingType'] as int,
      selector: map['selector'] == null ? null : map['selector'] as int,
      usage: map['usage'] == null ? null : map['usage'] as int,
    );
  }
}

