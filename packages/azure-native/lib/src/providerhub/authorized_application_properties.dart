// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_data_authorization.dart';
import 'application_provider_authorization.dart';

class AuthorizedApplicationProperties {
  /// The authorizations that determine the level of data access permissions on the specified resource types.
  final List<ApplicationDataAuthorization>? dataAuthorizations;
  final ApplicationProviderAuthorization? providerAuthorization;

  /// Creates a new [AuthorizedApplicationProperties].
  /// [dataAuthorizations] The authorizations that determine the level of data access permissions on the specified resource types.
  /// [providerAuthorization] Optional.
  AuthorizedApplicationProperties({
    this.dataAuthorizations,
    this.providerAuthorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAuthorizations': ?dataAuthorizations == null ? null : pulumi.Input.encodeList<ApplicationDataAuthorization, Map<String, dynamic>>(dataAuthorizations!, (value) => value.toMap()),
      'providerAuthorization': ?providerAuthorization == null ? null : providerAuthorization!.toMap(),
    };
  }

  factory AuthorizedApplicationProperties.fromMap(Map<String, dynamic> map) {
    return AuthorizedApplicationProperties(
      dataAuthorizations: map['dataAuthorizations'] == null ? null : pulumi.Input.decodeList<ApplicationDataAuthorization>(map['dataAuthorizations'], (value) => ApplicationDataAuthorization.fromMap((value as Map).cast<String, dynamic>())),
      providerAuthorization: map['providerAuthorization'] == null ? null : ApplicationProviderAuthorization.fromMap((map['providerAuthorization'] as Map).cast<String, dynamic>()),
    );
  }
}

