// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_key_store_xks_proxy_authentication_credential.dart';

/// Input properties used for looking up and filtering CustomKeyStore resources.
class CustomKeyStoreState {
  /// Cluster ID of CloudHSM. Applies when `customKeyStoreType` is `AWS_CLOUDHSM`.
  final pulumi.Input<String?>? cloudHsmClusterId;
  /// Unique name for Custom Key Store.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? customKeyStoreName;
  /// Type of key store to create. Valid values are `AWS_CLOUDHSM` and `EXTERNAL_KEY_STORE`. If omitted, AWS will default the value to `AWS_CLOUDHSM`.
  final pulumi.Input<String?>? customKeyStoreType;
  /// Password for the `kmsuser` of an AWS CloudHSM key store. Applies when `customKeyStoreType` is `AWS_CLOUDHSM`.
  final pulumi.Input<String?>? keyStorePassword;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Certificate for an AWS CloudHSM key store. Applies when `customKeyStoreType` is `AWS_CLOUDHSM`.
  final pulumi.Input<String?>? trustAnchorCertificate;
  /// Authentication credential for the external key store proxy (XKS proxy). Applies when `customKeyStoreType` is `EXTERNAL_KEY_STORE`. See `xksProxyAuthenticationCredential` block below.
  final pulumi.Input<CustomKeyStoreXksProxyAuthenticationCredential?>? xksProxyAuthenticationCredential;
  /// How AWS KMS communicates with the external key store proxy. Applies when `customKeyStoreType` is `EXTERNAL_KEY_STORE`.
  final pulumi.Input<String?>? xksProxyConnectivity;
  /// Endpoint that AWS KMS uses to send requests to the external key store proxy (XKS proxy). Applies when `customKeyStoreType` is `EXTERNAL_KEY_STORE`.
  final pulumi.Input<String?>? xksProxyUriEndpoint;
  /// Base path to the proxy APIs for this external key store. To find this value, see the documentation for your external key store proxy. Applies when `customKeyStoreType` is `EXTERNAL_KEY_STORE`.
  final pulumi.Input<String?>? xksProxyUriPath;
  /// Name of the Amazon VPC endpoint service for interface endpoints that is used to communicate with your external key store proxy (XKS proxy). Applies when `customKeyStoreType` is `EXTERNAL_KEY_STORE` and required when `xksProxyConnectivity` is `VPC_ENDPOINT_SERVICE`.
  final pulumi.Input<String?>? xksProxyVpcEndpointServiceName;

  /// Creates a new [CustomKeyStoreState].
  /// [cloudHsmClusterId] Cluster ID of CloudHSM. Applies when `customKeyStoreType` is `AWS_CLOUDHSM`.
  /// [customKeyStoreName] Unique name for Custom Key Store.
  /// [customKeyStoreType] Type of key store to create. Valid values are `AWS_CLOUDHSM` and `EXTERNAL_KEY_STORE`. If omitted, AWS will default the value to `AWS_CLOUDHSM`.
  /// [keyStorePassword] Password for the `kmsuser` of an AWS CloudHSM key store. Applies when `customKeyStoreType` is `AWS_CLOUDHSM`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trustAnchorCertificate] Certificate for an AWS CloudHSM key store. Applies when `customKeyStoreType` is `AWS_CLOUDHSM`.
  /// [xksProxyAuthenticationCredential] Authentication credential for the external key store proxy (XKS proxy). Applies when `customKeyStoreType` is `EXTERNAL_KEY_STORE`. See `xksProxyAuthenticationCredential` block below.
  /// [xksProxyConnectivity] How AWS KMS communicates with the external key store proxy. Applies when `customKeyStoreType` is `EXTERNAL_KEY_STORE`.
  /// [xksProxyUriEndpoint] Endpoint that AWS KMS uses to send requests to the external key store proxy (XKS proxy). Applies when `customKeyStoreType` is `EXTERNAL_KEY_STORE`.
  /// [xksProxyUriPath] Base path to the proxy APIs for this external key store. To find this value, see the documentation for your external key store proxy. Applies when `customKeyStoreType` is `EXTERNAL_KEY_STORE`.
  /// [xksProxyVpcEndpointServiceName] Name of the Amazon VPC endpoint service for interface endpoints that is used to communicate with your external key store proxy (XKS proxy). Applies when `customKeyStoreType` is `EXTERNAL_KEY_STORE` and required when `xksProxyConnectivity` is `VPC_ENDPOINT_SERVICE`.
  const CustomKeyStoreState({
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
      cloudHsmClusterId: (() { final guardedValue = map['cloudHsmClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customKeyStoreName: (() { final guardedValue = map['customKeyStoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
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
