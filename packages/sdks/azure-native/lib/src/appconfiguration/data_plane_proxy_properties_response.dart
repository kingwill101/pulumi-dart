// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data plane proxy settings for a configuration store.
class DataPlaneProxyPropertiesResponse {
  /// The data plane proxy authentication mode. This property manages the authentication mode of request to the data plane resources.
  final pulumi.Input<String>? authenticationMode;
  /// The data plane proxy private link delegation. This property manages if a request from delegated Azure Resource Manager (ARM) private link is allowed when the data plane resource requires private link.
  final pulumi.Input<String>? privateLinkDelegation;

  /// Creates a new [DataPlaneProxyPropertiesResponse].
  /// [authenticationMode] The data plane proxy authentication mode. This property manages the authentication mode of request to the data plane resources.
  /// [privateLinkDelegation] The data plane proxy private link delegation. This property manages if a request from delegated Azure Resource Manager (ARM) private link is allowed when the data plane resource requires private link.
  DataPlaneProxyPropertiesResponse({
    this.authenticationMode,
    this.privateLinkDelegation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'privateLinkDelegation': ?privateLinkDelegation,
    };
  }

  factory DataPlaneProxyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataPlaneProxyPropertiesResponse(
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode']! as String).input(),
      privateLinkDelegation: map['privateLinkDelegation'] == null ? null : (map['privateLinkDelegation']! as String).input(),
    );
  }
}

