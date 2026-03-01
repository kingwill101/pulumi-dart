// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_keystores_aliases_pkcs12_keystores_aliases_pkcs12_args_doc}
/// The set of arguments for KeystoresAliasesPkcs12.
/// {@endtemplate}
/// {@macro pulumi_apigee_keystores_aliases_pkcs12_keystores_aliases_pkcs12_args_doc}
class KeystoresAliasesPkcs12Args {
  /// Alias Name
  final pulumi.Input<String> alias;
  /// Environment associated with the alias
  final pulumi.Input<String> environment;
  /// PKCS12 file content
  ///
  /// - - -
  final pulumi.Input<String> file;
  /// Hash of the pkcs file
  final pulumi.Input<String> filehash;
  /// Keystore Name
  final pulumi.Input<String> keystore;
  /// Organization ID associated with the alias, without organization/ prefix
  final pulumi.Input<String> orgId;
  /// Password for the PKCS12 file if it's encrypted
  final pulumi.Input<String>? password;

  /// Creates a new [KeystoresAliasesPkcs12Args].
  /// [alias] Alias Name
  /// [environment] Environment associated with the alias
  /// [file] PKCS12 file content
  /// [filehash] Hash of the pkcs file
  /// [keystore] Keystore Name
  /// [orgId] Organization ID associated with the alias, without organization/ prefix
  /// [password] Password for the PKCS12 file if it's encrypted
  KeystoresAliasesPkcs12Args({
    required String alias,
    required String environment,
    required String file,
    required String filehash,
    required String keystore,
    required String orgId,
    String? password,
  }) :
      alias = pulumi.Input.asInput<String>(alias),
      environment = pulumi.Input.asInput<String>(environment),
      file = pulumi.Input.asInput<String>(file),
      filehash = pulumi.Input.asInput<String>(filehash),
      keystore = pulumi.Input.asInput<String>(keystore),
      orgId = pulumi.Input.asInput<String>(orgId),
      password = pulumi.Input.asOptionalInput<String>(password);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'environment': environment,
      'file': file,
      'filehash': filehash,
      'keystore': keystore,
      'orgId': orgId,
      'password': ?password,
    };
  }

  factory KeystoresAliasesPkcs12Args.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesPkcs12Args(
      alias: map['alias'] as String,
      environment: map['environment'] as String,
      file: map['file'] as String,
      filehash: map['filehash'] as String,
      keystore: map['keystore'] as String,
      orgId: map['orgId'] as String,
      password: map['password'] == null ? null : map['password'] as String,
    );
  }
}

