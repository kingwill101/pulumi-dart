// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_client_key_client_key_args_doc}
/// The set of arguments for ClientKey.
/// {@endtemplate}
/// {@macro pulumi_kms_client_key_client_key_args_doc}
class ClientKeyArgs {
  /// ClientKey's parent Application Access Point name.
  final pulumi.Input<String> aapName;

  /// The ClientKey expiration time. Example: "2027-08-10 T08:03:30Z".
  final pulumi.Input<String>? notAfter;

  /// The valid start time of the ClientKey. Example: "2022-08-10 T08:03:30Z".
  final pulumi.Input<String>? notBefore;

  /// To enhance security, set a password for the downloaded Client Key,When an application accesses KMS, you must use the ClientKey content and this password to initialize the SDK client.
  final pulumi.Input<String> password;

  /// The name of file that can save access key id and access key secret. Strongly suggest you to specified it when you creating access key, otherwise, you wouldn't get its secret ever.
  final pulumi.Input<String>? privateKeyDataFile;

  /// Creates a new [ClientKeyArgs].
  /// [aapName] ClientKey's parent Application Access Point name.
  /// [notAfter] The ClientKey expiration time. Example: "2027-08-10 T08:03:30Z".
  /// [notBefore] The valid start time of the ClientKey. Example: "2022-08-10 T08:03:30Z".
  /// [password] To enhance security, set a password for the downloaded Client Key,When an application accesses KMS, you must use the ClientKey content and this password to initialize the SDK client.
  /// [privateKeyDataFile] The name of file that can save access key id and access key secret. Strongly suggest you to specified it when you creating access key, otherwise, you wouldn't get its secret ever.
  ClientKeyArgs({
    required this.aapName,
    this.notAfter,
    this.notBefore,
    required this.password,
    this.privateKeyDataFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aapName': aapName,
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
      'password': password,
      'privateKeyDataFile': ?privateKeyDataFile,
    };
  }

  factory ClientKeyArgs.fromMap(Map<String, dynamic> map) {
    return ClientKeyArgs(
      aapName: pulumi.Input.fromValue(map['aapName'] as String),
      notAfter: (() {
        final guardedValue = map['notAfter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notBefore: (() {
        final guardedValue = map['notBefore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      privateKeyDataFile: (() {
        final guardedValue = map['privateKeyDataFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
