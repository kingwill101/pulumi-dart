// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for KeystoresAliasesPkcs12.
class KeystoresAliasesPkcs12Args {
  /// Alias Name
  final Input<String> alias;

  /// Environment associated with the alias
  final Input<String> environment;

  /// PKCS12 file content
  ///
  /// - - -
  final Input<String> file;

  /// Hash of the pkcs file
  final Input<String> filehash;

  /// Keystore Name
  final Input<String> keystore;

  /// Organization ID associated with the alias, without organization/ prefix
  final Input<String> orgId;

  /// Password for the PKCS12 file if it's encrypted
  final Input<String>? password;

  KeystoresAliasesPkcs12Args({
    required this.alias,
    required this.environment,
    required this.file,
    required this.filehash,
    required this.keystore,
    required this.orgId,
    this.password,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alias'] = alias;
    map['environment'] = environment;
    map['file'] = file;
    map['filehash'] = filehash;
    map['keystore'] = keystore;
    map['orgId'] = orgId;
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    return map;
  }

  factory KeystoresAliasesPkcs12Args.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesPkcs12Args(
      alias: Input.asInput<String>(map['alias']),
      environment: Input.asInput<String>(map['environment']),
      file: Input.asInput<String>(map['file']),
      filehash: Input.asInput<String>(map['filehash']),
      keystore: Input.asInput<String>(map['keystore']),
      orgId: Input.asInput<String>(map['orgId']),
      password: Input.asOptionalInput<String>(map['password']),
    );
  }
}
