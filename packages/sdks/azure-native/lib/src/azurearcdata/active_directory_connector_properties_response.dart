// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_connector_spec_response.dart';
import 'active_directory_connector_status_response.dart';
import 'basic_login_information_response.dart';

/// The properties of an Active Directory connector resource
class ActiveDirectoryConnectorPropertiesResponse {
  /// Username and password for domain service account authentication.
  final pulumi.Input<BasicLoginInformationResponse>? domainServiceAccountLoginInformation;
  /// The provisioning state of the Active Directory connector resource.
  final pulumi.Input<String> provisioningState;
  /// null
  final pulumi.Input<ActiveDirectoryConnectorSpecResponse> spec;
  /// null
  final pulumi.Input<ActiveDirectoryConnectorStatusResponse>? status;

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
      'domainServiceAccountLoginInformation': ?pulumi.Input.mapOptionalInputValue<BasicLoginInformationResponse, Map<String, dynamic>>(domainServiceAccountLoginInformation, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'spec': pulumi.Input.mapInputValue<ActiveDirectoryConnectorSpecResponse, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<ActiveDirectoryConnectorStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory ActiveDirectoryConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorPropertiesResponse(
      domainServiceAccountLoginInformation: (() { final guardedValue = map['domainServiceAccountLoginInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicLoginInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      spec: pulumi.Input.fromValue(ActiveDirectoryConnectorSpecResponse.fromMap((map['spec']! as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActiveDirectoryConnectorStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

