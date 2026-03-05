// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_client_user_client_user_args_doc}
/// The set of arguments for ClientUser.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_client_user_client_user_args_doc}
class ClientUserArgs {
  /// The SAG APP bandwidth that the user can use. Unit: Kbit/s. Maximum value: 2000 Kbit/s.
  final pulumi.Input<int> bandwidth;
  /// The IP address of the SAG APP. If you specify this parameter, the current account always uses the specified IP address.Note The IP address must be in the private CIDR block of the SAG client.If you do not specify this parameter, the system automatically allocates an IP address from the private CIDR block of the SAG client. In this case, each re-connection uses a different IP address.
  final pulumi.Input<String>? clientIp;
  /// The password of the KMS Encryption.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// The context of the KMS Encryption.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// The password used to log on to the SAG APP.Both the user name and the password must be specified. If you specify the user name, the password must be specified, too.
  final pulumi.Input<String>? password;
  /// The ID of the SAG instance created for the SAG APP.
  final pulumi.Input<String> sagId;
  /// The email address of the user. The administrator uses this address to send the account information for logging on to the APP to the user.
  final pulumi.Input<String> userMail;
  /// The user name. User names in the same SAG APP must be unique.Both the user name and the password must be specified. If you specify the user name, the password must be specified, too.
  final pulumi.Input<String>? userName;

  /// Creates a new [ClientUserArgs].
  /// [bandwidth] The SAG APP bandwidth that the user can use. Unit: Kbit/s. Maximum value: 2000 Kbit/s.
  /// [clientIp] The IP address of the SAG APP. If you specify this parameter, the current account always uses the specified IP address.Note The IP address must be in the private CIDR block of the SAG client.If you do not specify this parameter, the system automatically allocates an IP address from the private CIDR block of the SAG client. In this case, each re-connection uses a different IP address.
  /// [kmsEncryptedPassword] The password of the KMS Encryption.
  /// [kmsEncryptionContext] The context of the KMS Encryption.
  /// [password] The password used to log on to the SAG APP.Both the user name and the password must be specified. If you specify the user name, the password must be specified, too.
  /// [sagId] The ID of the SAG instance created for the SAG APP.
  /// [userMail] The email address of the user. The administrator uses this address to send the account information for logging on to the APP to the user.
  /// [userName] The user name. User names in the same SAG APP must be unique.Both the user name and the password must be specified. If you specify the user name, the password must be specified, too.
  ClientUserArgs({
    required this.bandwidth,
    this.clientIp,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
    this.password,
    required this.sagId,
    required this.userMail,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'clientIp': ?clientIp,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'password': ?password,
      'sagId': sagId,
      'userMail': userMail,
      'userName': ?userName,
    };
  }

  factory ClientUserArgs.fromMap(Map<String, dynamic> map) {
    return ClientUserArgs(
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      clientIp: (() { final guardedValue = map['clientIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsEncryptedPassword: (() { final guardedValue = map['kmsEncryptedPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsEncryptionContext: (() { final guardedValue = map['kmsEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sagId: pulumi.Input.fromValue(map['sagId'] as String),
      userMail: pulumi.Input.fromValue(map['userMail'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

