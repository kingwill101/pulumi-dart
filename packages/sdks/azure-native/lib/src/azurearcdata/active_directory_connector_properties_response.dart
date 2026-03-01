// ignore_for_file: unused_element, unnecessary_cast

import 'active_directory_connector_spec_response.dart';
import 'active_directory_connector_status_response.dart';
import 'basic_login_information_response.dart';

/// The properties of an Active Directory connector resource
class ActiveDirectoryConnectorPropertiesResponse {
  /// Username and password for domain service account authentication.
  final BasicLoginInformationResponse? domainServiceAccountLoginInformation;
  /// The provisioning state of the Active Directory connector resource.
  final String provisioningState;
  /// null
  final ActiveDirectoryConnectorSpecResponse spec;
  /// null
  final ActiveDirectoryConnectorStatusResponse? status;

  /// Creates a new [ActiveDirectoryConnectorPropertiesResponse].
  /// [domainServiceAccountLoginInformation] Username and password for domain service account authentication.
  /// [provisioningState] The provisioning state of the Active Directory connector resource.
  /// [spec] null
  /// [status] null
  ActiveDirectoryConnectorPropertiesResponse({
    this.domainServiceAccountLoginInformation,
    required this.provisioningState,
    required this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainServiceAccountLoginInformation': ?domainServiceAccountLoginInformation == null ? null : domainServiceAccountLoginInformation!.toMap(),
      'provisioningState': provisioningState,
      'spec': spec.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory ActiveDirectoryConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorPropertiesResponse(
      domainServiceAccountLoginInformation: map['domainServiceAccountLoginInformation'] == null ? null : BasicLoginInformationResponse.fromMap((map['domainServiceAccountLoginInformation'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      spec: ActiveDirectoryConnectorSpecResponse.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : ActiveDirectoryConnectorStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

