// ignore_for_file: unused_element, unnecessary_cast

import 'active_directory_connector_spec.dart';
import 'active_directory_connector_status.dart';
import 'basic_login_information.dart';

/// The properties of an Active Directory connector resource
class ActiveDirectoryConnectorProperties {
  /// Username and password for domain service account authentication.
  final BasicLoginInformation? domainServiceAccountLoginInformation;
  /// null
  final ActiveDirectoryConnectorSpec spec;
  /// null
  final ActiveDirectoryConnectorStatus? status;

  /// Creates a new [ActiveDirectoryConnectorProperties].
  /// [domainServiceAccountLoginInformation] Username and password for domain service account authentication.
  /// [spec] null
  /// [status] null
  ActiveDirectoryConnectorProperties({
    this.domainServiceAccountLoginInformation,
    required this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainServiceAccountLoginInformation': ?domainServiceAccountLoginInformation == null ? null : domainServiceAccountLoginInformation!.toMap(),
      'spec': spec.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory ActiveDirectoryConnectorProperties.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorProperties(
      domainServiceAccountLoginInformation: map['domainServiceAccountLoginInformation'] == null ? null : BasicLoginInformation.fromMap((map['domainServiceAccountLoginInformation'] as Map).cast<String, dynamic>()),
      spec: ActiveDirectoryConnectorSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : ActiveDirectoryConnectorStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

