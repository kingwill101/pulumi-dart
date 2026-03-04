// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_connector_dnsdetails.dart';
import 'active_directory_connector_domain_details.dart';

/// The specifications of the AD Kubernetes resource.
class ActiveDirectoryConnectorSpec {
  /// null
  final pulumi.Input<ActiveDirectoryConnectorDomainDetails> activeDirectory;

  /// null
  final pulumi.Input<ActiveDirectoryConnectorDNSDetails> dns;

  /// Creates a new [ActiveDirectoryConnectorSpec].
  /// [activeDirectory] null
  /// [dns] null
  ActiveDirectoryConnectorSpec({
    required this.activeDirectory,
    required this.dns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory':
          pulumi.Input.mapInputValue<
            ActiveDirectoryConnectorDomainDetails,
            Map<String, dynamic>
          >(activeDirectory, (value) => value.toMap()),
      'dns':
          pulumi.Input.mapInputValue<
            ActiveDirectoryConnectorDNSDetails,
            Map<String, dynamic>
          >(dns, (value) => value.toMap()),
    };
  }

  factory ActiveDirectoryConnectorSpec.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorSpec(
      activeDirectory: pulumi.Input.fromValue(
        ActiveDirectoryConnectorDomainDetails.fromMap(
          (map['activeDirectory']! as Map).cast<String, dynamic>(),
        ),
      ),
      dns: pulumi.Input.fromValue(
        ActiveDirectoryConnectorDNSDetails.fromMap(
          (map['dns']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
