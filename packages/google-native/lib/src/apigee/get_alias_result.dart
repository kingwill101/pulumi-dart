// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_certificate_response.dart';

/// Result data returned by getAlias.
class GetAliasResult {
  /// Resource ID for this alias. Values must match the regular expression `[^/]{1,255}`.
  final String alias;

  /// Chain of certificates under this alias.
  final GoogleCloudApigeeV1CertificateResponse certsInfo;

  /// Type of alias.
  final String type;

  /// Creates a new [GetAliasResult].
  /// [alias] Resource ID for this alias. Values must match the regular expression `[^/]{1,255}`.
  /// [certsInfo] Chain of certificates under this alias.
  /// [type] Type of alias.
  GetAliasResult({
    required this.alias,
    required this.certsInfo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'certsInfo': certsInfo.toMap(),
      'type': type,
    };
  }

  factory GetAliasResult.fromMap(Map<String, dynamic> map) {
    return GetAliasResult(
      alias: map['alias'] as String,
      certsInfo: GoogleCloudApigeeV1CertificateResponse.fromMap(
        (map['certsInfo'] as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
