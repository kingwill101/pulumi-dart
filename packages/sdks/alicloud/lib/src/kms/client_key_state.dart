// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClientKey resources.
class ClientKeyState {
  /// ClientKey's parent Application Access Point name.
  final pulumi.Input<String>? aapName;
  /// Create timestamp, e.g. "2022-08-10T08:03:30Z".
  final pulumi.Input<String>? createTime;
  /// The ClientKey expiration time. Example: "2027-08-10 T08:03:30Z".
  final pulumi.Input<String>? notAfter;
  /// The valid start time of the ClientKey. Example: "2022-08-10 T08:03:30Z".
  final pulumi.Input<String>? notBefore;
  /// To enhance security, set a password for the downloaded Client Key,When an application accesses KMS, you must use the ClientKey content and this password to initialize the SDK client.
  final pulumi.Input<String>? password;
  /// The name of file that can save access key id and access key secret. Strongly suggest you to specified it when you creating access key, otherwise, you wouldn't get its secret ever.
  final pulumi.Input<String>? privateKeyDataFile;

  /// Creates a new [ClientKeyState].
  /// [aapName] ClientKey's parent Application Access Point name.
  /// [createTime] Create timestamp, e.g. "2022-08-10T08:03:30Z".
  /// [notAfter] The ClientKey expiration time. Example: "2027-08-10 T08:03:30Z".
  /// [notBefore] The valid start time of the ClientKey. Example: "2022-08-10 T08:03:30Z".
  /// [password] To enhance security, set a password for the downloaded Client Key,When an application accesses KMS, you must use the ClientKey content and this password to initialize the SDK client.
  /// [privateKeyDataFile] The name of file that can save access key id and access key secret. Strongly suggest you to specified it when you creating access key, otherwise, you wouldn't get its secret ever.
  ClientKeyState({
    this.aapName,
    this.createTime,
    this.notAfter,
    this.notBefore,
    this.password,
    this.privateKeyDataFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aapName': ?aapName,
      'createTime': ?createTime,
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
      'password': ?password,
      'privateKeyDataFile': ?privateKeyDataFile,
    };
  }

  factory ClientKeyState.fromMap(Map<String, dynamic> map) {
    return ClientKeyState(
      aapName: map['aapName'] == null ? null : (map['aapName']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      notAfter: map['notAfter'] == null ? null : (map['notAfter']! as String).input(),
      notBefore: map['notBefore'] == null ? null : (map['notBefore']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      privateKeyDataFile: map['privateKeyDataFile'] == null ? null : (map['privateKeyDataFile']! as String).input(),
    );
  }
}

