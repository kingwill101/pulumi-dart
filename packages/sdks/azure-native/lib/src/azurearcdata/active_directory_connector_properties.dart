// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_connector_spec.dart';
import 'active_directory_connector_status.dart';
import 'basic_login_information.dart';

/// The properties of an Active Directory connector resource
class ActiveDirectoryConnectorProperties {
  /// Username and password for domain service account authentication.
  final pulumi.Input<BasicLoginInformation>?
  domainServiceAccountLoginInformation;

  /// null
  final pulumi.Input<ActiveDirectoryConnectorSpec> spec;

  /// null
  final pulumi.Input<ActiveDirectoryConnectorStatus>? status;

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
      'domainServiceAccountLoginInformation':
          ?pulumi.Input.mapOptionalInputValue<
            BasicLoginInformation,
            Map<String, dynamic>
          >(domainServiceAccountLoginInformation, (value) => value.toMap()),
      'spec':
          pulumi.Input.mapInputValue<
            ActiveDirectoryConnectorSpec,
            Map<String, dynamic>
          >(spec, (value) => value.toMap()),
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            ActiveDirectoryConnectorStatus,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
    };
  }

  factory ActiveDirectoryConnectorProperties.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorProperties(
      domainServiceAccountLoginInformation: (() {
        final guardedValue = map['domainServiceAccountLoginInformation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BasicLoginInformation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spec: pulumi.Input.fromValue(
        ActiveDirectoryConnectorSpec.fromMap(
          (map['spec']! as Map).cast<String, dynamic>(),
        ),
      ),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActiveDirectoryConnectorStatus.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
