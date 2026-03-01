// ignore_for_file: unused_element, unnecessary_cast

import 'active_directory_connector_dnsdetails.dart';
import 'active_directory_connector_domain_details.dart';

/// The specifications of the AD Kubernetes resource.
class ActiveDirectoryConnectorSpec {
  /// null
  final ActiveDirectoryConnectorDomainDetails activeDirectory;
  /// null
  final ActiveDirectoryConnectorDNSDetails dns;

  /// Creates a new [ActiveDirectoryConnectorSpec].
  /// [activeDirectory] null
  /// [dns] null
  ActiveDirectoryConnectorSpec({
    required this.activeDirectory,
    required this.dns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': activeDirectory.toMap(),
      'dns': dns.toMap(),
    };
  }

  factory ActiveDirectoryConnectorSpec.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorSpec(
      activeDirectory: ActiveDirectoryConnectorDomainDetails.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>()),
      dns: ActiveDirectoryConnectorDNSDetails.fromMap((map['dns'] as Map).cast<String, dynamic>()),
    );
  }
}

