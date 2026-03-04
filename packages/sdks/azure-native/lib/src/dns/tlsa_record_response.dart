// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A TLSA record. For more information about the TLSA record format, see RFC 6698: https://www.rfc-editor.org/rfc/rfc6698
class TlsaRecordResponse {
  /// This specifies the certificate association data to be matched.
  final pulumi.Input<String>? certAssociationData;

  /// The matching type specifies how the certificate association is presented.
  final pulumi.Input<int>? matchingType;

  /// The selector specifies which part of the TLS certificate presented by the server will be matched against the association data.
  final pulumi.Input<int>? selector;

  /// The usage specifies the provided association that will be used to match the certificate presented in the TLS handshake.
  final pulumi.Input<int>? usage;

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
      certAssociationData: (() {
        final guardedValue = map['certAssociationData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      matchingType: (() {
        final guardedValue = map['matchingType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      selector: (() {
        final guardedValue = map['selector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      usage: (() {
        final guardedValue = map['usage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
