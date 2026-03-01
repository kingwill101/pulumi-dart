// ignore_for_file: unused_element, unnecessary_cast

import 'data_source_credentials_credential_pair.dart';

class DataSourceCredentials {
  /// The Amazon Resource Name (ARN) of a data source that has the credential pair that you want to use.
  /// When the value is not null, the `credential_pair` from the data source in the ARN is used.
  final String? copySourceArn;

  /// Credential pair. See Credential Pair below for more details.
  final DataSourceCredentialsCredentialPair? credentialPair;

  /// The Amazon Resource Name (ARN) of the secret associated with the data source in Amazon Secrets Manager.
  final String? secretArn;

  /// Creates a new [DataSourceCredentials].
  /// [copySourceArn] The Amazon Resource Name (ARN) of a data source that has the credential pair that you want to use.
  /// [credentialPair] Credential pair. See Credential Pair below for more details.
  /// [secretArn] The Amazon Resource Name (ARN) of the secret associated with the data source in Amazon Secrets Manager.
  DataSourceCredentials({
    this.copySourceArn,
    this.credentialPair,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copySourceArn': ?copySourceArn,
      'credentialPair': ?credentialPair == null
          ? null
          : credentialPair!.toMap(),
      'secretArn': ?secretArn,
    };
  }

  factory DataSourceCredentials.fromMap(Map<String, dynamic> map) {
    return DataSourceCredentials(
      copySourceArn: map['copySourceArn'] == null
          ? null
          : map['copySourceArn'] as String,
      credentialPair: map['credentialPair'] == null
          ? null
          : DataSourceCredentialsCredentialPair.fromMap(
              (map['credentialPair'] as Map).cast<String, dynamic>(),
            ),
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
    );
  }
}
