// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_credentials_credential_pair.dart';

class DataSourceCredentials {
  /// The Amazon Resource Name (ARN) of a data source that has the credential pair that you want to use.
  /// When the value is not null, the `credentialPair` from the data source in the ARN is used.
  final pulumi.Input<String>? copySourceArn;
  /// Credential pair. See Credential Pair below for more details.
  final pulumi.Input<DataSourceCredentialsCredentialPair>? credentialPair;
  /// The Amazon Resource Name (ARN) of the secret associated with the data source in Amazon Secrets Manager.
  final pulumi.Input<String>? secretArn;

  /// Creates a new [DataSourceCredentials].
  /// [copySourceArn] The Amazon Resource Name (ARN) of a data source that has the credential pair that you want to use.
  /// [credentialPair] Credential pair. See Credential Pair below for more details.
  /// [secretArn] The Amazon Resource Name (ARN) of the secret associated with the data source in Amazon Secrets Manager.
  const DataSourceCredentials({
    this.copySourceArn,
    this.credentialPair,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copySourceArn': ?copySourceArn,
      'credentialPair': ?pulumi.Input.mapOptionalInputValue<DataSourceCredentialsCredentialPair, Map<String, dynamic>>(credentialPair, (value) => value.toMap()),
      'secretArn': ?secretArn,
    };
  }

  factory DataSourceCredentials.fromMap(Map<String, dynamic> map) {
    return DataSourceCredentials(
      copySourceArn: (() { final guardedValue = map['copySourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialPair: (() { final guardedValue = map['credentialPair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceCredentialsCredentialPair.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
