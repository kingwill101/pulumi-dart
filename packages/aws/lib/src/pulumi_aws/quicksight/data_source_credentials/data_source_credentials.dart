// ignore_for_file: unused_element, unnecessary_cast

import '../data_source_credentials_credential_pair/data_source_credentials_credential_pair.dart';

class DataSourceCredentials {
  /// The Amazon Resource Name (ARN) of a data source that has the credential pair that you want to use.
  /// When the value is not null, the <span pulumi-lang-nodejs="`credentialPair`" pulumi-lang-dotnet="`CredentialPair`" pulumi-lang-go="`credentialPair`" pulumi-lang-python="`credential_pair`" pulumi-lang-yaml="`credentialPair`" pulumi-lang-java="`credentialPair`">`credential_pair`</span> from the data source in the ARN is used.
  final String? copySourceArn;

  /// Credential pair. See Credential Pair below for more details.
  final DataSourceCredentialsCredentialPair? credentialPair;

  /// The Amazon Resource Name (ARN) of the secret associated with the data source in Amazon Secrets Manager.
  final String? secretArn;

  DataSourceCredentials({
    this.copySourceArn,
    this.credentialPair,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final copySourceArnValue = copySourceArn;
    if (copySourceArnValue != null) {
      map['copySourceArn'] = copySourceArnValue;
    }
    final credentialPairValue = credentialPair;
    if (credentialPairValue != null) {
      map['credentialPair'] = credentialPairValue.toMap();
    }
    final secretArnValue = secretArn;
    if (secretArnValue != null) {
      map['secretArn'] = secretArnValue;
    }
    return map;
  }

  factory DataSourceCredentials.fromMap(Map<String, dynamic> map) {
    return DataSourceCredentials(
      copySourceArn:
          map['copySourceArn'] == null ? null : map['copySourceArn'] as String,
      credentialPair: map['credentialPair'] == null
          ? null
          : DataSourceCredentialsCredentialPair.fromMap(
              (map['credentialPair'] as Map).cast<String, dynamic>()),
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
    );
  }
}
