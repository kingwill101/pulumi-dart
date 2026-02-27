// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'certificate_attributes_response.dart';

/// Resource representing the Endpoint Verification-specific attributes of a Device. https://cloud.google.com/endpoint-verification/docs/overview
class EndpointVerificationSpecificAttributesResponse {
  /// Details of certificates.
  final List<CertificateAttributesResponse> certificateAttributes;

  EndpointVerificationSpecificAttributesResponse({
    required this.certificateAttributes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAttributes'] =
        Input.encodeList<CertificateAttributesResponse, Map<String, dynamic>>(
            certificateAttributes, (value) => value.toMap());
    return map;
  }

  factory EndpointVerificationSpecificAttributesResponse.fromMap(
      Map<String, dynamic> map) {
    return EndpointVerificationSpecificAttributesResponse(
      certificateAttributes: Input.decodeList<CertificateAttributesResponse>(
          map['certificateAttributes'],
          (value) => CertificateAttributesResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
