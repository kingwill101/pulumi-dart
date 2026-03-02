// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_key_store_xks_proxy_authentication_credential.dart';

/// Input properties used for looking up and filtering CustomKeyStore resources.
class CustomKeyStoreState {
  final pulumi.Input<String>? cloudHsmClusterId;
  /// Unique name for Custom Key Store.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? customKeyStoreName;
  /// Specifies the type of key store to create. Valid values are `AWS_CLOUDHSM` and `EXTERNAL_KEY_STORE`. If omitted, AWS will default the value to `AWS_CLOUDHSM`.
  final pulumi.Input<String>? customKeyStoreType;
  final pulumi.Input<String>? keyStorePassword;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? trustAnchorCertificate;
  final pulumi.Input<CustomKeyStoreXksProxyAuthenticationCredential>? xksProxyAuthenticationCredential;
  final pulumi.Input<String>? xksProxyConnectivity;
  final pulumi.Input<String>? xksProxyUriEndpoint;
  final pulumi.Input<String>? xksProxyUriPath;
  final pulumi.Input<String>? xksProxyVpcEndpointServiceName;

  /// Creates a new [CustomKeyStoreState].
  /// [cloudHsmClusterId] Optional.
  /// [customKeyStoreName] Unique name for Custom Key Store.
  /// [customKeyStoreType] Specifies the type of key store to create. Valid values are `AWS_CLOUDHSM` and `EXTERNAL_KEY_STORE`. If omitted, AWS will default the value to `AWS_CLOUDHSM`.
  /// [keyStorePassword] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trustAnchorCertificate] Optional.
  /// [xksProxyAuthenticationCredential] Optional.
  /// [xksProxyConnectivity] Optional.
  /// [xksProxyUriEndpoint] Optional.
  /// [xksProxyUriPath] Optional.
  /// [xksProxyVpcEndpointServiceName] Optional.
  CustomKeyStoreState({
    this.cloudHsmClusterId,
    this.customKeyStoreName,
    this.customKeyStoreType,
    this.keyStorePassword,
    this.region,
    this.trustAnchorCertificate,
    this.xksProxyAuthenticationCredential,
    this.xksProxyConnectivity,
    this.xksProxyUriEndpoint,
    this.xksProxyUriPath,
    this.xksProxyVpcEndpointServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudHsmClusterId': ?cloudHsmClusterId,
      'customKeyStoreName': ?customKeyStoreName,
      'customKeyStoreType': ?customKeyStoreType,
      'keyStorePassword': ?keyStorePassword,
      'region': ?region,
      'trustAnchorCertificate': ?trustAnchorCertificate,
      'xksProxyAuthenticationCredential': ?pulumi.Input.mapOptionalInputValue<CustomKeyStoreXksProxyAuthenticationCredential, Map<String, dynamic>>(xksProxyAuthenticationCredential, (value) => value.toMap()),
      'xksProxyConnectivity': ?xksProxyConnectivity,
      'xksProxyUriEndpoint': ?xksProxyUriEndpoint,
      'xksProxyUriPath': ?xksProxyUriPath,
      'xksProxyVpcEndpointServiceName': ?xksProxyVpcEndpointServiceName,
    };
  }

  factory CustomKeyStoreState.fromMap(Map<String, dynamic> map) {
    return CustomKeyStoreState(
      cloudHsmClusterId: map['cloudHsmClusterId'] == null ? null : ((map['cloudHsmClusterId'] as String).input()).input(),
      customKeyStoreName: map['customKeyStoreName'] == null ? null : ((map['customKeyStoreName'] as String).input()).input(),
      customKeyStoreType: map['customKeyStoreType'] == null ? null : ((map['customKeyStoreType'] as String).input()).input(),
      keyStorePassword: map['keyStorePassword'] == null ? null : ((map['keyStorePassword'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      trustAnchorCertificate: map['trustAnchorCertificate'] == null ? null : ((map['trustAnchorCertificate'] as String).input()).input(),
      xksProxyAuthenticationCredential: map['xksProxyAuthenticationCredential'] == null ? null : ((CustomKeyStoreXksProxyAuthenticationCredential.fromMap((map['xksProxyAuthenticationCredential']! as Map).cast<String, dynamic>())).input()).input(),
      xksProxyConnectivity: map['xksProxyConnectivity'] == null ? null : ((map['xksProxyConnectivity'] as String).input()).input(),
      xksProxyUriEndpoint: map['xksProxyUriEndpoint'] == null ? null : ((map['xksProxyUriEndpoint'] as String).input()).input(),
      xksProxyUriPath: map['xksProxyUriPath'] == null ? null : ((map['xksProxyUriPath'] as String).input()).input(),
      xksProxyVpcEndpointServiceName: map['xksProxyVpcEndpointServiceName'] == null ? null : ((map['xksProxyVpcEndpointServiceName'] as String).input()).input(),
    );
  }
}

