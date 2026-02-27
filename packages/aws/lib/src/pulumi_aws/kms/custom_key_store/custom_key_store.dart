import 'package:pulumi/pulumi.dart';
import '../custom_key_store_xks_proxy_authentication_credential/custom_key_store_xks_proxy_authentication_credential.dart';
import 'custom_key_store_args.dart';

/// Resource for managing an AWS KMS (Key Management) Custom Key Store.
///
/// ## Example Usage
///
/// ### CloudHSM
///
///
///
/// ### External Key Store (VPC)
///
///
///
/// ### External Key Store (Public)
///
///
///
/// ## Import
///
/// Using `pulumi import`, import KMS (Key Management) Custom Key Store using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:kms/customKeyStore:CustomKeyStore example cks-5ebd4ef395a96288e
/// ```
class CustomKeyStore extends CustomResource {
  late final Output<String?> cloudHsmClusterId;

  /// Unique name for Custom Key Store.
  ///
  /// The following arguments are optional:
  late final Output<String> customKeyStoreName;

  /// Specifies the type of key store to create. Valid values are `AWS_CLOUDHSM` and `EXTERNAL_KEY_STORE`. If omitted, AWS will default the value to `AWS_CLOUDHSM`.
  late final Output<String> customKeyStoreType;
  late final Output<String?> keyStorePassword;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String?> trustAnchorCertificate;
  late final Output<CustomKeyStoreXksProxyAuthenticationCredential?>
      xksProxyAuthenticationCredential;
  late final Output<String?> xksProxyConnectivity;
  late final Output<String?> xksProxyUriEndpoint;
  late final Output<String?> xksProxyUriPath;
  late final Output<String?> xksProxyVpcEndpointServiceName;

  CustomKeyStore(
    String name, {
    CustomKeyStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kms/customKeyStore:CustomKeyStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudHsmClusterId = registerOutput<String?>('cloudHsmClusterId');
    this.customKeyStoreName = registerOutput<String>('customKeyStoreName');
    this.customKeyStoreType = registerOutput<String>('customKeyStoreType');
    this.keyStorePassword = registerOutput<String?>('keyStorePassword');
    this.region = registerOutput<String>('region');
    this.trustAnchorCertificate =
        registerOutput<String?>('trustAnchorCertificate');
    this.xksProxyAuthenticationCredential =
        registerOutput<CustomKeyStoreXksProxyAuthenticationCredential?>(
            'xksProxyAuthenticationCredential');
    this.xksProxyConnectivity = registerOutput<String?>('xksProxyConnectivity');
    this.xksProxyUriEndpoint = registerOutput<String?>('xksProxyUriEndpoint');
    this.xksProxyUriPath = registerOutput<String?>('xksProxyUriPath');
    this.xksProxyVpcEndpointServiceName =
        registerOutput<String?>('xksProxyVpcEndpointServiceName');
  }
}
