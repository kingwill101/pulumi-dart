// ignore_for_file: unused_element, unnecessary_cast


/// The data plane proxy settings for a configuration store.
class DataPlaneProxyProperties {
  /// The data plane proxy authentication mode. This property manages the authentication mode of request to the data plane resources.
  final String? authenticationMode;
  /// The data plane proxy private link delegation. This property manages if a request from delegated Azure Resource Manager (ARM) private link is allowed when the data plane resource requires private link.
  final String? privateLinkDelegation;

  /// Creates a new [DataPlaneProxyProperties].
  /// [authenticationMode] The data plane proxy authentication mode. This property manages the authentication mode of request to the data plane resources.
  /// [privateLinkDelegation] The data plane proxy private link delegation. This property manages if a request from delegated Azure Resource Manager (ARM) private link is allowed when the data plane resource requires private link.
  DataPlaneProxyProperties({
    this.authenticationMode,
    this.privateLinkDelegation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'privateLinkDelegation': ?privateLinkDelegation,
    };
  }

  factory DataPlaneProxyProperties.fromMap(Map<String, dynamic> map) {
    return DataPlaneProxyProperties(
      authenticationMode: map['authenticationMode'] == null ? null : map['authenticationMode'] as String,
      privateLinkDelegation: map['privateLinkDelegation'] == null ? null : map['privateLinkDelegation'] as String,
    );
  }
}

