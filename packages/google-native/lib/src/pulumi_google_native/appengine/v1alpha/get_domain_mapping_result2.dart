// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'resource_record_response2.dart';
import 'ssl_settings_response2.dart';

/// Result data returned by getDomainMapping.
class GetDomainMappingResult2 {
  /// Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  final String name;

  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  final List<ResourceRecordResponse2> resourceRecords;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final SslSettingsResponse2 sslSettings;

  GetDomainMappingResult2({
    required this.name,
    required this.resourceRecords,
    required this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['resourceRecords'] =
        Input.encodeList<ResourceRecordResponse2, Map<String, dynamic>>(
            resourceRecords, (value) => value.toMap());
    map['sslSettings'] = sslSettings.toMap();
    return map;
  }

  factory GetDomainMappingResult2.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingResult2(
      name: map['name'] as String,
      resourceRecords: Input.decodeList<ResourceRecordResponse2>(
          map['resourceRecords'],
          (value) => ResourceRecordResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      sslSettings: SslSettingsResponse2.fromMap(
          (map['sslSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
