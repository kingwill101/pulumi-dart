// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../keystores_aliases_key_cert_file_timeouts/keystores_aliases_key_cert_file_timeouts.dart';

/// The set of arguments for KeystoresAliasesKeyCertFile.
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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          KeystoresAliasesKeyCertFileTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory KeystoresAliasesKeyCertFileArgs.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesKeyCertFileArgs(
      alias: pulumi.Input.asInput<String>(map['alias']),
      cert: pulumi.Input.asInput<String>(map['cert']),
      environment: pulumi.Input.asInput<String>(map['environment']),
      key: pulumi.Input.asOptionalInput<String>(map['key']),
      keystore: pulumi.Input.asInput<String>(map['keystore']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      password: pulumi.Input.asOptionalInput<String>(map['password']),
      timeouts:
          pulumi.Input.asOptionalInput<KeystoresAliasesKeyCertFileTimeouts>(
              map['timeouts']),
    );
  }
}
