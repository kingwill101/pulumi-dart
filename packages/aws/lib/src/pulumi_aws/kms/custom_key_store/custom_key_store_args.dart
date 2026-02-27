// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../custom_key_store_xks_proxy_authentication_credential/custom_key_store_xks_proxy_authentication_credential.dart';

/// The set of arguments for CustomKeyStore.
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
  final pulumi.Input<CustomKeyStoreXksProxyAuthenticationCredential>?
      xksProxyAuthenticationCredential;
  final pulumi.Input<String>? xksProxyConnectivity;
  final pulumi.Input<String>? xksProxyUriEndpoint;
  final pulumi.Input<String>? xksProxyUriPath;
  final pulumi.Input<String>? xksProxyVpcEndpointServiceName;

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
    final map = <String, dynamic>{};
    final cloudHsmClusterIdValue = cloudHsmClusterId;
    if (cloudHsmClusterIdValue != null) {
      map['cloudHsmClusterId'] = cloudHsmClusterIdValue;
    }
    map['customKeyStoreName'] = customKeyStoreName;
    final customKeyStoreTypeValue = customKeyStoreType;
    if (customKeyStoreTypeValue != null) {
      map['customKeyStoreType'] = customKeyStoreTypeValue;
    }
    final keyStorePasswordValue = keyStorePassword;
    if (keyStorePasswordValue != null) {
      map['keyStorePassword'] = keyStorePasswordValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final trustAnchorCertificateValue = trustAnchorCertificate;
    if (trustAnchorCertificateValue != null) {
      map['trustAnchorCertificate'] = trustAnchorCertificateValue;
    }
    final xksProxyAuthenticationCredentialValue =
        xksProxyAuthenticationCredential;
    if (xksProxyAuthenticationCredentialValue != null) {
      map['xksProxyAuthenticationCredential'] =
          pulumi.Input.mapOptionalInputValue<
                  CustomKeyStoreXksProxyAuthenticationCredential,
                  Map<String, dynamic>>(
              xksProxyAuthenticationCredentialValue, (value) => value.toMap());
    }
    final xksProxyConnectivityValue = xksProxyConnectivity;
    if (xksProxyConnectivityValue != null) {
      map['xksProxyConnectivity'] = xksProxyConnectivityValue;
    }
    final xksProxyUriEndpointValue = xksProxyUriEndpoint;
    if (xksProxyUriEndpointValue != null) {
      map['xksProxyUriEndpoint'] = xksProxyUriEndpointValue;
    }
    final xksProxyUriPathValue = xksProxyUriPath;
    if (xksProxyUriPathValue != null) {
      map['xksProxyUriPath'] = xksProxyUriPathValue;
    }
    final xksProxyVpcEndpointServiceNameValue = xksProxyVpcEndpointServiceName;
    if (xksProxyVpcEndpointServiceNameValue != null) {
      map['xksProxyVpcEndpointServiceName'] =
          xksProxyVpcEndpointServiceNameValue;
    }
    return map;
  }

  factory CustomKeyStoreArgs.fromMap(Map<String, dynamic> map) {
    return CustomKeyStoreArgs(
      cloudHsmClusterId:
          pulumi.Input.asOptionalInput<String>(map['cloudHsmClusterId']),
      customKeyStoreName:
          pulumi.Input.asInput<String>(map['customKeyStoreName']),
      customKeyStoreType:
          pulumi.Input.asOptionalInput<String>(map['customKeyStoreType']),
      keyStorePassword:
          pulumi.Input.asOptionalInput<String>(map['keyStorePassword']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      trustAnchorCertificate:
          pulumi.Input.asOptionalInput<String>(map['trustAnchorCertificate']),
      xksProxyAuthenticationCredential: pulumi.Input.asOptionalInput<
              CustomKeyStoreXksProxyAuthenticationCredential>(
          map['xksProxyAuthenticationCredential']),
      xksProxyConnectivity:
          pulumi.Input.asOptionalInput<String>(map['xksProxyConnectivity']),
      xksProxyUriEndpoint:
          pulumi.Input.asOptionalInput<String>(map['xksProxyUriEndpoint']),
      xksProxyUriPath:
          pulumi.Input.asOptionalInput<String>(map['xksProxyUriPath']),
      xksProxyVpcEndpointServiceName: pulumi.Input.asOptionalInput<String>(
          map['xksProxyVpcEndpointServiceName']),
    );
  }
}
