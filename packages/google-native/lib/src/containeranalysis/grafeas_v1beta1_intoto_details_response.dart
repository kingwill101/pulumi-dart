// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1beta1_intoto_signature_response.dart';
import 'link_response.dart';

/// This corresponds to a signed in-toto link - it is made up of one or more signatures and the in-toto link itself. This is used for occurrences of a Grafeas in-toto note.
class GrafeasV1beta1IntotoDetailsResponse {
  final List<GrafeasV1beta1IntotoSignatureResponse> signatures;
  final LinkResponse signed;

  /// Creates a new [GrafeasV1beta1IntotoDetailsResponse].
  /// [signatures] Required.
  /// [signed] Required.
  GrafeasV1beta1IntotoDetailsResponse({
    required this.signatures,
    required this.signed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signatures': pulumi.Input.encodeList<GrafeasV1beta1IntotoSignatureResponse, Map<String, dynamic>>(signatures, (value) => value.toMap()),
      'signed': signed.toMap(),
    };
  }

  factory GrafeasV1beta1IntotoDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1IntotoDetailsResponse(
      signatures: pulumi.Input.decodeList<GrafeasV1beta1IntotoSignatureResponse>(map['signatures'], (value) => GrafeasV1beta1IntotoSignatureResponse.fromMap((value as Map).cast<String, dynamic>())),
      signed: LinkResponse.fromMap((map['signed'] as Map).cast<String, dynamic>()),
    );
  }
}

