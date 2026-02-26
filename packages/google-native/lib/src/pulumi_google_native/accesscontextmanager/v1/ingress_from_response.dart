// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'ingress_source_response.dart';

/// Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the source of the request. The request must satisfy what is defined in `sources` AND identity related fields in order to match.
class IngressFromResponse {
  /// A list of identities that are allowed access through this ingress policy. Should be in the format of email address. The email address should represent individual user or service account only.
  final List<String> identities;

  /// Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
  final String identityType;

  /// Sources that this IngressPolicy authorizes access from.
  final List<IngressSourceResponse> sources;

  IngressFromResponse({
    required this.identities,
    required this.identityType,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identities'] = identities;
    map['identityType'] = identityType;
    map['sources'] =
        Input.encodeList<IngressSourceResponse, Map<String, dynamic>>(
            sources, (value) => value.toMap());
    return map;
  }

  factory IngressFromResponse.fromMap(Map<String, dynamic> map) {
    return IngressFromResponse(
      identities: (map['identities'] as List).cast<String>(),
      identityType: map['identityType'] as String,
      sources: Input.decodeList<IngressSourceResponse>(
          map['sources'],
          (value) => IngressSourceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
