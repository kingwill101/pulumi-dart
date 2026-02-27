// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_response_appengine_v1beta.dart';
import 'ssl_settings_response_appengine_v1beta.dart';

/// Result data returned by getDomainMapping.
class GetDomainMappingAppengineV1betaResult {
  /// Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  final String name;

  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  final List<ResourceRecordResponseAppengineV1beta> resourceRecords;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final SslSettingsResponseAppengineV1beta sslSettings;

  GetDomainMappingAppengineV1betaResult({
    required this.name,
    required this.resourceRecords,
    required this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['resourceRecords'] = pulumi.Input.encodeList<
        ResourceRecordResponseAppengineV1beta,
        Map<String, dynamic>>(resourceRecords, (value) => value.toMap());
    map['sslSettings'] = sslSettings.toMap();
    return map;
  }

  factory GetDomainMappingAppengineV1betaResult.fromMap(
      Map<String, dynamic> map) {
    return GetDomainMappingAppengineV1betaResult(
      name: map['name'] as String,
      resourceRecords:
          pulumi.Input.decodeList<ResourceRecordResponseAppengineV1beta>(
              map['resourceRecords'],
              (value) => ResourceRecordResponseAppengineV1beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sslSettings: SslSettingsResponseAppengineV1beta.fromMap(
          (map['sslSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
