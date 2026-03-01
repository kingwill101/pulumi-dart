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
    pulumi.Output<String>? cloudHsmClusterId,
    required pulumi.Output<String> customKeyStoreName,
    pulumi.Output<String>? customKeyStoreType,
    pulumi.Output<String>? keyStorePassword,
    pulumi.Output<String>? region,
    pulumi.Output<String>? trustAnchorCertificate,
    pulumi.Output<CustomKeyStoreXksProxyAuthenticationCredential>? xksProxyAuthenticationCredential,
    pulumi.Output<String>? xksProxyConnectivity,
    pulumi.Output<String>? xksProxyUriEndpoint,
    pulumi.Output<String>? xksProxyUriPath,
    pulumi.Output<String>? xksProxyVpcEndpointServiceName,
  }) :
      cloudHsmClusterId = pulumi.Input.asOptionalInput<String>(cloudHsmClusterId),
      customKeyStoreName = pulumi.Input.asInput<String>(customKeyStoreName),
      customKeyStoreType = pulumi.Input.asOptionalInput<String>(customKeyStoreType),
      keyStorePassword = pulumi.Input.asOptionalInput<String>(keyStorePassword),
      region = pulumi.Input.asOptionalInput<String>(region),
      trustAnchorCertificate = pulumi.Input.asOptionalInput<String>(trustAnchorCertificate),
      xksProxyAuthenticationCredential = pulumi.Input.asOptionalInput<CustomKeyStoreXksProxyAuthenticationCredential>(xksProxyAuthenticationCredential),
      xksProxyConnectivity = pulumi.Input.asOptionalInput<String>(xksProxyConnectivity),
      xksProxyUriEndpoint = pulumi.Input.asOptionalInput<String>(xksProxyUriEndpoint),
      xksProxyUriPath = pulumi.Input.asOptionalInput<String>(xksProxyUriPath),
      xksProxyVpcEndpointServiceName = pulumi.Input.asOptionalInput<String>(xksProxyVpcEndpointServiceName);

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
      cloudHsmClusterId: map['cloudHsmClusterId'] == null ? null : pulumi.Output.create<String>(map['cloudHsmClusterId'] as String),
      customKeyStoreName: pulumi.Output.create<String>(map['customKeyStoreName'] as String),
      customKeyStoreType: map['customKeyStoreType'] == null ? null : pulumi.Output.create<String>(map['customKeyStoreType'] as String),
      keyStorePassword: map['keyStorePassword'] == null ? null : pulumi.Output.create<String>(map['keyStorePassword'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      trustAnchorCertificate: map['trustAnchorCertificate'] == null ? null : pulumi.Output.create<String>(map['trustAnchorCertificate'] as String),
      xksProxyAuthenticationCredential: map['xksProxyAuthenticationCredential'] == null ? null : pulumi.Output.create<CustomKeyStoreXksProxyAuthenticationCredential>(CustomKeyStoreXksProxyAuthenticationCredential.fromMap((map['xksProxyAuthenticationCredential'] as Map).cast<String, dynamic>())),
      xksProxyConnectivity: map['xksProxyConnectivity'] == null ? null : pulumi.Output.create<String>(map['xksProxyConnectivity'] as String),
      xksProxyUriEndpoint: map['xksProxyUriEndpoint'] == null ? null : pulumi.Output.create<String>(map['xksProxyUriEndpoint'] as String),
      xksProxyUriPath: map['xksProxyUriPath'] == null ? null : pulumi.Output.create<String>(map['xksProxyUriPath'] as String),
      xksProxyVpcEndpointServiceName: map['xksProxyVpcEndpointServiceName'] == null ? null : pulumi.Output.create<String>(map['xksProxyVpcEndpointServiceName'] as String),
    );
  }
}

