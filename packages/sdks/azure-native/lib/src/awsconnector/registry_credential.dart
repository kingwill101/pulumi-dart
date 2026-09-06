// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_provider_type_enum_value.dart';

/// Definition of RegistryCredential
class RegistryCredential {
  /// &lt;p&gt; The Amazon Resource Name (ARN) or name of credentials created using Secrets Manager. &lt;/p&gt; &lt;note&gt; &lt;p&gt; The &lt;code&gt;credential&lt;/code&gt; can use the name of the credentials only if they exist in your current Amazon Web Services Region. &lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<String?>? credential;
  /// &lt;p&gt; The service that created the credentials to access a private Docker registry. The valid value, SECRETS_MANAGER, is for Secrets Manager. &lt;/p&gt;
  final pulumi.Input<CredentialProviderTypeEnumValue?>? credentialProvider;

  /// Creates a new [RegistryCredential].
  /// [credential] &lt;p&gt; The Amazon Resource Name (ARN) or name of credentials created using Secrets Manager. &lt;/p&gt; &lt;note&gt; &lt;p&gt; The &lt;code&gt;credential&lt;/code&gt; can use the name of the credentials only if they exist in your current Amazon Web Services Region. &lt;/p&gt; &lt;/note&gt;
  /// [credentialProvider] &lt;p&gt; The service that created the credentials to access a private Docker registry. The valid value, SECRETS_MANAGER, is for Secrets Manager. &lt;/p&gt;
  const RegistryCredential({
    this.credential,
    this.credentialProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credential': ?credential,
      'credentialProvider': ?pulumi.Input.mapOptionalInputValue<CredentialProviderTypeEnumValue, Map<String, dynamic>>(credentialProvider, (value) => value.toMap()),
    };
  }

  factory RegistryCredential.fromMap(Map<String, dynamic> map) {
    return RegistryCredential(
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialProvider: (() { final guardedValue = map['credentialProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CredentialProviderTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
