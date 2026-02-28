// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_response_appengine_v1alpha.dart';
import 'ssl_settings_response_appengine_v1alpha.dart';

/// Result data returned by getDomainMapping.
class GetDomainMappingAppengineV1alphaResult {
  /// Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  final String name;
  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  final List<ResourceRecordResponseAppengineV1alpha> resourceRecords;
  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final SslSettingsResponseAppengineV1alpha sslSettings;

  /// Creates a new [GetDomainMappingAppengineV1alphaResult].
  /// [name] Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  /// [resourceRecords] The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  /// [sslSettings] SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  GetDomainMappingAppengineV1alphaResult({
    required this.name,
    required this.resourceRecords,
    required this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceRecords': pulumi.Input.encodeList<ResourceRecordResponseAppengineV1alpha, Map<String, dynamic>>(resourceRecords, (value) => value.toMap()),
      'sslSettings': sslSettings.toMap(),
    };
  }

  factory GetDomainMappingAppengineV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingAppengineV1alphaResult(
      name: map['name'] as String,
      resourceRecords: pulumi.Input.decodeList<ResourceRecordResponseAppengineV1alpha>(map['resourceRecords'], (value) => ResourceRecordResponseAppengineV1alpha.fromMap((value as Map).cast<String, dynamic>())),
      sslSettings: SslSettingsResponseAppengineV1alpha.fromMap((map['sslSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

