// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../keystores_aliases_key_cert_file_timeouts/keystores_aliases_key_cert_file_timeouts.dart';

/// The set of arguments for KeystoresAliasesKeyCertFile.
class KeystoresAliasesKeyCertFileArgs {
  /// Alias Name
  final Input<String> alias;

  /// Cert content
  ///
  ///
  /// - - -
  final Input<String> cert;

  /// Environment associated with the alias
  final Input<String> environment;

  /// Private Key content, omit if uploading to truststore
  final Input<String>? key;

  /// Keystore Name
  final Input<String> keystore;

  /// Organization ID associated with the alias, without organization/ prefix
  final Input<String> orgId;

  /// Password for the Private Key if it's encrypted
  final Input<String>? password;
  final Input<KeystoresAliasesKeyCertFileTimeouts>? timeouts;

  KeystoresAliasesKeyCertFileArgs({
    required this.alias,
    required this.cert,
    required this.environment,
    this.key,
    required this.keystore,
    required this.orgId,
    this.password,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alias'] = alias;
    map['cert'] = cert;
    map['environment'] = environment;
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    map['keystore'] = keystore;
    map['orgId'] = orgId;
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          KeystoresAliasesKeyCertFileTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory KeystoresAliasesKeyCertFileArgs.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesKeyCertFileArgs(
      alias: Input.asInput<String>(map['alias']),
      cert: Input.asInput<String>(map['cert']),
      environment: Input.asInput<String>(map['environment']),
      key: Input.asOptionalInput<String>(map['key']),
      keystore: Input.asInput<String>(map['keystore']),
      orgId: Input.asInput<String>(map['orgId']),
      password: Input.asOptionalInput<String>(map['password']),
      timeouts: Input.asOptionalInput<KeystoresAliasesKeyCertFileTimeouts>(
          map['timeouts']),
    );
  }
}
