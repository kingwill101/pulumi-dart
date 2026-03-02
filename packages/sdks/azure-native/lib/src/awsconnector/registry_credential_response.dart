// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_provider_type_enum_value_response.dart';

/// Definition of RegistryCredential
class RegistryCredentialResponse {
  /// <p> The Amazon Resource Name (ARN) or name of credentials created using Secrets Manager. </p> <note> <p> The <code>credential</code> can use the name of the credentials only if they exist in your current Amazon Web Services Region. </p> </note>
  final pulumi.Input<String>? credential;
  /// <p> The service that created the credentials to access a private Docker registry. The valid value, SECRETS_MANAGER, is for Secrets Manager. </p>
  final pulumi.Input<CredentialProviderTypeEnumValueResponse>? credentialProvider;

  /// Creates a new [RegistryCredentialResponse].
  /// [credential] <p> The Amazon Resource Name (ARN) or name of credentials created using Secrets Manager. </p> <note> <p> The <code>credential</code> can use the name of the credentials only if they exist in your current Amazon Web Services Region. </p> </note>
  /// [credentialProvider] <p> The service that created the credentials to access a private Docker registry. The valid value, SECRETS_MANAGER, is for Secrets Manager. </p>
  RegistryCredentialResponse({
    this.credential,
    this.credentialProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credential': ?credential,
      'credentialProvider': ?pulumi.Input.mapOptionalInputValue<CredentialProviderTypeEnumValueResponse, Map<String, dynamic>>(credentialProvider, (value) => value.toMap()),
    };
  }

  factory RegistryCredentialResponse.fromMap(Map<String, dynamic> map) {
    return RegistryCredentialResponse(
      credential: map['credential'] == null ? null : (map['credential'] as String).input(),
      credentialProvider: map['credentialProvider'] == null ? null : (CredentialProviderTypeEnumValueResponse.fromMap((map['credentialProvider'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

