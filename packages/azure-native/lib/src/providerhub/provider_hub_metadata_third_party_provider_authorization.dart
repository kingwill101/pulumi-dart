// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'light_house_authorization.dart';

/// The third party provider authorization.
class ProviderHubMetadataThirdPartyProviderAuthorization {
  /// The authorizations.
  final List<LightHouseAuthorization>? authorizations;
  /// The managed by tenant id.
  final String? managedByTenantId;

  /// Creates a new [ProviderHubMetadataThirdPartyProviderAuthorization].
  /// [authorizations] The authorizations.
  /// [managedByTenantId] The managed by tenant id.
  ProviderHubMetadataThirdPartyProviderAuthorization({
    this.authorizations,
    this.managedByTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': ?authorizations == null ? null : pulumi.Input.encodeList<LightHouseAuthorization, Map<String, dynamic>>(authorizations!, (value) => value.toMap()),
      'managedByTenantId': ?managedByTenantId,
    };
  }

  factory ProviderHubMetadataThirdPartyProviderAuthorization.fromMap(Map<String, dynamic> map) {
    return ProviderHubMetadataThirdPartyProviderAuthorization(
      authorizations: map['authorizations'] == null ? null : pulumi.Input.decodeList<LightHouseAuthorization>(map['authorizations'], (value) => LightHouseAuthorization.fromMap((value as Map).cast<String, dynamic>())),
      managedByTenantId: map['managedByTenantId'] == null ? null : map['managedByTenantId'] as String,
    );
  }
}

