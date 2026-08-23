// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret.dart';

/// Image repository credential.
class ImageRepositoryCredential {
  /// Image repository url (e.g.: mcr.microsoft.com).
  final pulumi.Input<String> imageRepositoryUrl;
  /// Repository user password.
  final pulumi.Input<AsymmetricEncryptedSecret>? password;
  /// Repository user name.
  final pulumi.Input<String> userName;

  /// Creates a new [ImageRepositoryCredential].
  /// [imageRepositoryUrl] Image repository url (e.g.: mcr.microsoft.com).
  /// [password] Repository user password.
  /// [userName] Repository user name.
  const ImageRepositoryCredential({
    required this.imageRepositoryUrl,
    this.password,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageRepositoryUrl': imageRepositoryUrl,
      'password': ?pulumi.Input.mapOptionalInputValue<AsymmetricEncryptedSecret, Map<String, dynamic>>(password, (value) => value.toMap()),
      'userName': userName,
    };
  }

  factory ImageRepositoryCredential.fromMap(Map<String, dynamic> map) {
    return ImageRepositoryCredential(
      imageRepositoryUrl: pulumi.Input.fromValue(map['imageRepositoryUrl'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AsymmetricEncryptedSecret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
