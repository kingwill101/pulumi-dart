// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the azure-native package.
class AzureNativeConfig {
  const AzureNativeConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// Any additional Tenant IDs which should be used for authentication.
  List<String>? get auxiliaryTenantIds {
    final raw = _raw('auxiliaryTenantIds');
    return raw == null ? null : (jsonDecode(raw) as List).cast<String>();
  }

  bool get auxiliaryTenantIdsIsSecret => _isSecret('auxiliaryTenantIds');

  /// The password associated with the Client Certificate. For use when authenticating as a Service Principal using a Client Certificate
  String? get clientCertificatePassword {
    final raw = _raw('clientCertificatePassword');
    return raw;
  }

  bool get clientCertificatePasswordIsSecret => _isSecret('clientCertificatePassword');

  /// The path to the Client Certificate associated with the Service Principal for use when authenticating as a Service Principal using a Client Certificate.
  String? get clientCertificatePath {
    final raw = _raw('clientCertificatePath');
    return raw;
  }

  bool get clientCertificatePathIsSecret => _isSecret('clientCertificatePath');

  /// The Client ID which should be used.
  String? get clientId {
    final raw = _raw('clientId');
    return raw;
  }

  bool get clientIdIsSecret => _isSecret('clientId');

  /// The Client Secret which should be used. For use when authenticating as a Service Principal using a Client Secret.
  String? get clientSecret {
    final raw = _raw('clientSecret');
    return raw;
  }

  bool get clientSecretIsSecret => _isSecret('clientSecret');

  /// Determines whether or not instance discovery is performed when attempting to authenticate. Setting this to true will completely disable both instance discovery and authority validation. This functionality is intended for use in scenarios where the metadata endpoint cannot be reached, such as in private clouds or Azure Stack.
  bool? get disableInstanceDiscovery {
    final raw = _raw('disableInstanceDiscovery');
    return (raw).toBool();
  }

  bool get disableInstanceDiscoveryIsSecret => _isSecret('disableInstanceDiscovery');

  /// This will disable the Pulumi Partner ID which is used if a custom `partnerId` isn't specified.
  bool? get disablePulumiPartnerId {
    final raw = _raw('disablePulumiPartnerId');
    return (raw).toBool();
  }

  bool get disablePulumiPartnerIdIsSecret => _isSecret('disablePulumiPartnerId');

  /// The Cloud Environment which should be used. Possible values are public, usgovernment, and china. Defaults to public. Not used when metadataHost is specified or when ARM_METADATA_HOSTNAME is set.
  String? get environment {
    final raw = _raw('environment');
    return raw;
  }

  bool get environmentIsSecret => _isSecret('environment');

  /// The location to use. ResourceGroups will consult this property for a default location, if one was not supplied explicitly when defining the resource.
  String? get location {
    final raw = _raw('location');
    return raw;
  }

  bool get locationIsSecret => _isSecret('location');

  /// The Hostname of the Azure Metadata Service.
  String? get metadataHost {
    final raw = _raw('metadataHost');
    return raw;
  }

  bool get metadataHostIsSecret => _isSecret('metadataHost');

  /// The path to a custom endpoint for Managed Service Identity - in most circumstances this should be detected automatically.
  String? get msiEndpoint {
    final raw = _raw('msiEndpoint');
    return raw;
  }

  bool get msiEndpointIsSecret => _isSecret('msiEndpoint');

  /// Your cloud service or provider's bearer token to exchange for an OIDC ID token.
  String? get oidcRequestToken {
    final raw = _raw('oidcRequestToken');
    return raw;
  }

  bool get oidcRequestTokenIsSecret => _isSecret('oidcRequestToken');

  /// The URL to initiate the OIDC token exchange.
  String? get oidcRequestUrl {
    final raw = _raw('oidcRequestUrl');
    return raw;
  }

  bool get oidcRequestUrlIsSecret => _isSecret('oidcRequestUrl');

  /// The OIDC token to exchange for an Azure token.
  String? get oidcToken {
    final raw = _raw('oidcToken');
    return raw;
  }

  bool get oidcTokenIsSecret => _isSecret('oidcToken');

  /// The path to a file containing an OIDC token to exchange for an Azure token.
  String? get oidcTokenFilePath {
    final raw = _raw('oidcTokenFilePath');
    return raw;
  }

  bool get oidcTokenFilePathIsSecret => _isSecret('oidcTokenFilePath');

  /// A GUID/UUID that is registered with Microsoft to facilitate partner resource usage attribution.
  String? get partnerId {
    final raw = _raw('partnerId');
    return raw;
  }

  bool get partnerIdIsSecret => _isSecret('partnerId');

  /// The Subscription ID which should be used.
  String? get subscriptionId {
    final raw = _raw('subscriptionId');
    return raw;
  }

  bool get subscriptionIdIsSecret => _isSecret('subscriptionId');

  /// The Tenant ID which should be used.
  String? get tenantId {
    final raw = _raw('tenantId');
    return raw;
  }

  bool get tenantIdIsSecret => _isSecret('tenantId');

  /// Use the default credential chain of the Azure SDK (see https://learn.microsoft.com/en-us/azure/developer/go/sdk/authentication/credential-chains#defaultazurecredential-overview).
  bool? get useDefaultAzureCredential {
    final raw = _raw('useDefaultAzureCredential');
    return (raw).toBool();
  }

  bool get useDefaultAzureCredentialIsSecret => _isSecret('useDefaultAzureCredential');

  /// Allow Managed Service Identity be used for Authentication.
  bool? get useMsi {
    final raw = _raw('useMsi');
    return (raw).toBool();
  }

  bool get useMsiIsSecret => _isSecret('useMsi');

  /// Allow OpenID Connect (OIDC) to be used for Authentication.
  bool? get useOidc {
    final raw = _raw('useOidc');
    return (raw).toBool();
  }

  bool get useOidcIsSecret => _isSecret('useOidc');

}

final config = AzureNativeConfig();

