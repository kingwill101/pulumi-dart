// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Link Association Properties.
class PrivateLinkAssociationPropertiesExpandedResponse {
  /// The rmpl Resource ID.
  final pulumi.Input<String?>? privateLink;
  final pulumi.Input<String?>? publicNetworkAccess;
  /// The scope of the private link association.
  final pulumi.Input<String?>? scope;
  /// The TenantID.
  final pulumi.Input<String?>? tenantID;

  /// Creates a new [PrivateLinkAssociationPropertiesExpandedResponse].
  /// [privateLink] The rmpl Resource ID.
  /// [publicNetworkAccess] Optional.
  /// [scope] The scope of the private link association.
  /// [tenantID] The TenantID.
  const PrivateLinkAssociationPropertiesExpandedResponse({
    this.privateLink,
    this.publicNetworkAccess,
    this.scope,
    this.tenantID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLink': ?privateLink,
      'publicNetworkAccess': ?publicNetworkAccess,
      'scope': ?scope,
      'tenantID': ?tenantID,
    };
  }

  factory PrivateLinkAssociationPropertiesExpandedResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkAssociationPropertiesExpandedResponse(
      privateLink: (() { final guardedValue = map['privateLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantID: (() { final guardedValue = map['tenantID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
