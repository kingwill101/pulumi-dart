// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_connector_dnsdetails_response.dart';
import 'active_directory_connector_domain_details_response.dart';

/// The specifications of the AD Kubernetes resource.
class ActiveDirectoryConnectorSpecResponse {
  /// null
  final pulumi.Input<ActiveDirectoryConnectorDomainDetailsResponse> activeDirectory;
  /// null
  final pulumi.Input<ActiveDirectoryConnectorDNSDetailsResponse> dns;

  /// Creates a new [ActiveDirectoryConnectorSpecResponse].
  /// [activeDirectory] null
  /// [dns] null
  ActiveDirectoryConnectorSpecResponse({
    required this.activeDirectory,
    required this.dns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': pulumi.Input.mapInputValue<ActiveDirectoryConnectorDomainDetailsResponse, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'dns': pulumi.Input.mapInputValue<ActiveDirectoryConnectorDNSDetailsResponse, Map<String, dynamic>>(dns, (value) => value.toMap()),
    };
  }

  factory ActiveDirectoryConnectorSpecResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorSpecResponse(
      activeDirectory: pulumi.Input.fromValue(ActiveDirectoryConnectorDomainDetailsResponse.fromMap((map['activeDirectory']! as Map).cast<String, dynamic>())),
      dns: pulumi.Input.fromValue(ActiveDirectoryConnectorDNSDetailsResponse.fromMap((map['dns']! as Map).cast<String, dynamic>())),
    );
  }
}

