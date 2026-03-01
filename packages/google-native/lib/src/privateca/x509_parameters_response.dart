// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_options_response.dart';
import 'key_usage_response.dart';
import 'name_constraints_response.dart';
import 'object_id_response.dart';
import 'x509_extension_response.dart';

/// An X509Parameters is used to describe certain fields of an X.509 certificate, such as the key usage fields, fields specific to CA certificates, certificate policy extensions and custom extensions.
class X509ParametersResponse {
  /// Optional. Describes custom X.509 extensions.
  final List<X509ExtensionResponse> additionalExtensions;

  /// Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  final List<String> aiaOcspServers;

  /// Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  final CaOptionsResponse caOptions;

  /// Optional. Indicates the intended use for keys that correspond to a certificate.
  final KeyUsageResponse keyUsage;

  /// Optional. Describes the X.509 name constraints extension.
  final NameConstraintsResponse nameConstraints;

  /// Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  final List<ObjectIdResponse> policyIds;

  /// Creates a new [X509ParametersResponse].
  /// [additionalExtensions] Optional. Describes custom X.509 extensions.
  /// [aiaOcspServers] Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  /// [caOptions] Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  /// [keyUsage] Optional. Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Optional. Describes the X.509 name constraints extension.
  /// [policyIds] Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  X509ParametersResponse({
    required this.additionalExtensions,
    required this.aiaOcspServers,
    required this.caOptions,
    required this.keyUsage,
    required this.nameConstraints,
    required this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions':
          pulumi.Input.encodeList<X509ExtensionResponse, Map<String, dynamic>>(
            additionalExtensions,
            (value) => value.toMap(),
          ),
      'aiaOcspServers': aiaOcspServers,
      'caOptions': caOptions.toMap(),
      'keyUsage': keyUsage.toMap(),
      'nameConstraints': nameConstraints.toMap(),
      'policyIds':
          pulumi.Input.encodeList<ObjectIdResponse, Map<String, dynamic>>(
            policyIds,
            (value) => value.toMap(),
          ),
    };
  }

  factory X509ParametersResponse.fromMap(Map<String, dynamic> map) {
    return X509ParametersResponse(
      additionalExtensions: pulumi.Input.decodeList<X509ExtensionResponse>(
        map['additionalExtensions'],
        (value) => X509ExtensionResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      aiaOcspServers: (map['aiaOcspServers'] as List).cast<String>(),
      caOptions: CaOptionsResponse.fromMap(
        (map['caOptions'] as Map).cast<String, dynamic>(),
      ),
      keyUsage: KeyUsageResponse.fromMap(
        (map['keyUsage'] as Map).cast<String, dynamic>(),
      ),
      nameConstraints: NameConstraintsResponse.fromMap(
        (map['nameConstraints'] as Map).cast<String, dynamic>(),
      ),
      policyIds: pulumi.Input.decodeList<ObjectIdResponse>(
        map['policyIds'],
        (value) =>
            ObjectIdResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
