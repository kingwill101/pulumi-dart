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
    required pulumi.Output<int> bandwidth,
    pulumi.Output<String>? clientIp,
    pulumi.Output<String>? kmsEncryptedPassword,
    pulumi.Output<Map<String, String>>? kmsEncryptionContext,
    pulumi.Output<String>? password,
    required pulumi.Output<String> sagId,
    required pulumi.Output<String> userMail,
    pulumi.Output<String>? userName,
  }) :
      bandwidth = pulumi.Input.asInput<int>(bandwidth),
      clientIp = pulumi.Input.asOptionalInput<String>(clientIp),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext),
      password = pulumi.Input.asOptionalInput<String>(password),
      sagId = pulumi.Input.asInput<String>(sagId),
      userMail = pulumi.Input.asInput<String>(userMail),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      bandwidth: pulumi.Output.create<int>(map['bandwidth'] as int),
      clientIp: map['clientIp'] == null ? null : pulumi.Output.create<String>(map['clientIp'] as String),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptedPassword'] as String),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['kmsEncryptionContext'] as Map).cast<String, String>()),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      sagId: pulumi.Output.create<String>(map['sagId'] as String),
      userMail: pulumi.Output.create<String>(map['userMail'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

