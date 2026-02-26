// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../custom_key_store_xks_proxy_authentication_credential/custom_key_store_xks_proxy_authentication_credential.dart';

/// The set of arguments for CustomKeyStore.
class CustomKeyStoreArgs {
  final Input<String>? cloudHsmClusterId;

  /// Unique name for Custom Key Store.
  ///
  /// The following arguments are optional:
  final Input<String> customKeyStoreName;

  /// Specifies the type of key store to create. Valid values are `AWS_CLOUDHSM` and `EXTERNAL_KEY_STORE`. If omitted, AWS will default the value to `AWS_CLOUDHSM`.
  final Input<String>? customKeyStoreType;
  final Input<String>? keyStorePassword;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<String>? trustAnchorCertificate;
  final Input<CustomKeyStoreXksProxyAuthenticationCredential>?
      xksProxyAuthenticationCredential;
  final Input<String>? xksProxyConnectivity;
  final Input<String>? xksProxyUriEndpoint;
  final Input<String>? xksProxyUriPath;
  final Input<String>? xksProxyVpcEndpointServiceName;

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
      map['xksProxyAuthenticationCredential'] = Input.mapOptionalInputValue<
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
          Input.asOptionalInput<String>(map['cloudHsmClusterId']),
      customKeyStoreName: Input.asInput<String>(map['customKeyStoreName']),
      customKeyStoreType:
          Input.asOptionalInput<String>(map['customKeyStoreType']),
      keyStorePassword: Input.asOptionalInput<String>(map['keyStorePassword']),
      region: Input.asOptionalInput<String>(map['region']),
      trustAnchorCertificate:
          Input.asOptionalInput<String>(map['trustAnchorCertificate']),
      xksProxyAuthenticationCredential:
          Input.asOptionalInput<CustomKeyStoreXksProxyAuthenticationCredential>(
              map['xksProxyAuthenticationCredential']),
      xksProxyConnectivity:
          Input.asOptionalInput<String>(map['xksProxyConnectivity']),
      xksProxyUriEndpoint:
          Input.asOptionalInput<String>(map['xksProxyUriEndpoint']),
      xksProxyUriPath: Input.asOptionalInput<String>(map['xksProxyUriPath']),
      xksProxyVpcEndpointServiceName:
          Input.asOptionalInput<String>(map['xksProxyVpcEndpointServiceName']),
    );
  }
}
