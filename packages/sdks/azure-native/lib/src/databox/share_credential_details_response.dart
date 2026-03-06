// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credential details of the shares in account.
class ShareCredentialDetailsResponse {
  /// Password for the share.
  final pulumi.Input<String> password;
  /// Name of the share.
  final pulumi.Input<String> shareName;
  /// Type of the share.
  final pulumi.Input<String> shareType;
  /// Access protocols supported on the device.
  final pulumi.Input<List<String>> supportedAccessProtocols;
  /// User name for the share.
  final pulumi.Input<String> userName;

  /// Creates a new [ShareCredentialDetailsResponse].
  /// [password] Password for the share.
  /// [shareName] Name of the share.
  /// [shareType] Type of the share.
  /// [supportedAccessProtocols] Access protocols supported on the device.
  /// [userName] User name for the share.
  const ShareCredentialDetailsResponse({
    required this.password,
    required this.shareName,
    required this.shareType,
    required this.supportedAccessProtocols,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'shareName': shareName,
      'shareType': shareType,
      'supportedAccessProtocols': supportedAccessProtocols,
      'userName': userName,
    };
  }

  factory ShareCredentialDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ShareCredentialDetailsResponse(
      password: pulumi.Input.fromValue(map['password'] as String),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
      shareType: pulumi.Input.fromValue(map['shareType'] as String),
      supportedAccessProtocols: pulumi.Input.fromValue((map['supportedAccessProtocols'] as List).cast<String>()),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

