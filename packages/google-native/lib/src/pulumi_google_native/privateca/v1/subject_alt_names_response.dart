// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'x509_extension_response.dart';

/// SubjectAltNames corresponds to a more modern way of listing what the asserted identity is in a certificate (i.e., compared to the "common name" in the distinguished name).
class SubjectAltNamesResponse {
  /// Contains additional subject alternative name values. For each custom_san, the `value` field must contain an ASN.1 encoded UTF8String.
  final List<X509ExtensionResponse> customSans;

  /// Contains only valid, fully-qualified host names.
  final List<String> dnsNames;

  /// Contains only valid RFC 2822 E-mail addresses.
  final List<String> emailAddresses;

  /// Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  final List<String> ipAddresses;

  /// Contains only valid RFC 3986 URIs.
  final List<String> uris;

  SubjectAltNamesResponse({
    required this.customSans,
    required this.dnsNames,
    required this.emailAddresses,
    required this.ipAddresses,
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customSans'] =
        Input.encodeList<X509ExtensionResponse, Map<String, dynamic>>(
            customSans, (value) => value.toMap());
    map['dnsNames'] = dnsNames;
    map['emailAddresses'] = emailAddresses;
    map['ipAddresses'] = ipAddresses;
    map['uris'] = uris;
    return map;
  }

  factory SubjectAltNamesResponse.fromMap(Map<String, dynamic> map) {
    return SubjectAltNamesResponse(
      customSans: Input.decodeList<X509ExtensionResponse>(
          map['customSans'],
          (value) => X509ExtensionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      dnsNames: (map['dnsNames'] as List).cast<String>(),
      emailAddresses: (map['emailAddresses'] as List).cast<String>(),
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      uris: (map['uris'] as List).cast<String>(),
    );
  }
}
