// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_key_cert_file_timeouts.dart';

/// {@template pulumi_apigee_keystores_aliases_key_cert_file_keystores_aliases_key_cert_file_args_doc}
/// The set of arguments for KeystoresAliasesKeyCertFile.
/// {@endtemplate}
/// {@macro pulumi_apigee_keystores_aliases_key_cert_file_keystores_aliases_key_cert_file_args_doc}
class KeystoresAliasesKeyCertFileArgs {
  /// Alias Name
  final pulumi.Input<String> alias;
  /// Cert content
  ///
  ///
  /// - - -
  final pulumi.Input<String> cert;
  /// Environment associated with the alias
  final pulumi.Input<String> environment;
  /// Private Key content, omit if uploading to truststore
  final pulumi.Input<String>? key;
  /// Keystore Name
  final pulumi.Input<String> keystore;
  /// Organization ID associated with the alias, without organization/ prefix
  final pulumi.Input<String> orgId;
  /// Password for the Private Key if it's encrypted
  final pulumi.Input<String>? password;
  final pulumi.Input<KeystoresAliasesKeyCertFileTimeouts>? timeouts;

  /// Creates a new [KeystoresAliasesKeyCertFileArgs].
  /// [alias] Alias Name
  /// [cert] Cert content
  /// [environment] Environment associated with the alias
  /// [key] Private Key content, omit if uploading to truststore
  /// [keystore] Keystore Name
  /// [orgId] Organization ID associated with the alias, without organization/ prefix
  /// [password] Password for the Private Key if it's encrypted
  /// [timeouts] Optional.
  KeystoresAliasesKeyCertFileArgs({
    required String alias,
    required String cert,
    required String environment,
    String? key,
    required String keystore,
    required String orgId,
    String? password,
    KeystoresAliasesKeyCertFileTimeouts? timeouts,
  }) :
      alias = pulumi.Input.asInput<String>(alias),
      cert = pulumi.Input.asInput<String>(cert),
      environment = pulumi.Input.asInput<String>(environment),
      key = pulumi.Input.asOptionalInput<String>(key),
      keystore = pulumi.Input.asInput<String>(keystore),
      orgId = pulumi.Input.asInput<String>(orgId),
      password = pulumi.Input.asOptionalInput<String>(password),
      timeouts = pulumi.Input.asOptionalInput<KeystoresAliasesKeyCertFileTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'cert': cert,
      'environment': environment,
      'key': ?key,
      'keystore': keystore,
      'orgId': orgId,
      'password': ?password,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<KeystoresAliasesKeyCertFileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory KeystoresAliasesKeyCertFileArgs.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesKeyCertFileArgs(
      alias: map['alias'] as String,
      cert: map['cert'] as String,
      environment: map['environment'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      keystore: map['keystore'] as String,
      orgId: map['orgId'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      timeouts: map['timeouts'] == null ? null : KeystoresAliasesKeyCertFileTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

