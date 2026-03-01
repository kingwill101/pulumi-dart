// ignore_for_file: unused_element, unnecessary_cast

import 'active_directory_connector_dnsdetails_response.dart';
import 'active_directory_connector_domain_details_response.dart';

/// The specifications of the AD Kubernetes resource.
class ActiveDirectoryConnectorSpecResponse {
  /// null
  final ActiveDirectoryConnectorDomainDetailsResponse activeDirectory;
  /// null
  final ActiveDirectoryConnectorDNSDetailsResponse dns;

  /// Creates a new [ActiveDirectoryConnectorSpecResponse].
  /// [activeDirectory] null
  /// [dns] null
  ActiveDirectoryConnectorSpecResponse({
    required this.activeDirectory,
    required this.dns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': activeDirectory.toMap(),
      'dns': dns.toMap(),
    };
  }

  factory ActiveDirectoryConnectorSpecResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorSpecResponse(
      activeDirectory: ActiveDirectoryConnectorDomainDetailsResponse.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>()),
      dns: ActiveDirectoryConnectorDNSDetailsResponse.fromMap((map['dns'] as Map).cast<String, dynamic>()),
    );
  }
}

