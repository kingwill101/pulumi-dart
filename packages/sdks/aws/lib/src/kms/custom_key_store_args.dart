// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_key_store_xks_proxy_authentication_credential.dart';

/// {@template pulumi_kms_custom_key_store_custom_key_store_args_doc}
/// The set of arguments for CustomKeyStore.
/// {@endtemplate}
/// {@macro pulumi_kms_custom_key_store_custom_key_store_args_doc}
class CustomKeyStoreArgs {
  final pulumi.Input<String>? cloudHsmClusterId;
  /// Unique name for Custom Key Store.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> customKeyStoreName;
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

  /// Creates a new [CustomKeyStoreArgs].
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
  CustomKeyStoreArgs({
    this.cloudHsmClusterId,
    required this.customKeyStoreName,
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
      'customKeyStoreName': customKeyStoreName,
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

  factory CustomKeyStoreArgs.fromMap(Map<String, dynamic> map) {
    return CustomKeyStoreArgs(
      cloudHsmClusterId: (() { final guardedValue = map['cloudHsmClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customKeyStoreName: pulumi.Input.fromValue(map['customKeyStoreName'] as String),
      customKeyStoreType: (() { final guardedValue = map['customKeyStoreType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStorePassword: (() { final guardedValue = map['keyStorePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustAnchorCertificate: (() { final guardedValue = map['trustAnchorCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xksProxyAuthenticationCredential: (() { final guardedValue = map['xksProxyAuthenticationCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomKeyStoreXksProxyAuthenticationCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xksProxyConnectivity: (() { final guardedValue = map['xksProxyConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xksProxyUriEndpoint: (() { final guardedValue = map['xksProxyUriEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xksProxyUriPath: (() { final guardedValue = map['xksProxyUriPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xksProxyVpcEndpointServiceName: (() { final guardedValue = map['xksProxyVpcEndpointServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

