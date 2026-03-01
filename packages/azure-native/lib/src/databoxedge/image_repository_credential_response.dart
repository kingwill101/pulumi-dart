// ignore_for_file: unused_element, unnecessary_cast

import 'asymmetric_encrypted_secret_response.dart';

/// Image repository credential.
class ImageRepositoryCredentialResponse {
  /// Image repository url (e.g.: mcr.microsoft.com).
  final String imageRepositoryUrl;
  /// Repository user password.
  final AsymmetricEncryptedSecretResponse? password;
  /// Repository user name.
  final String userName;

  /// Creates a new [ImageRepositoryCredentialResponse].
  /// [imageRepositoryUrl] Image repository url (e.g.: mcr.microsoft.com).
  /// [password] Repository user password.
  /// [userName] Repository user name.
  ImageRepositoryCredentialResponse({
    required this.imageRepositoryUrl,
    this.password,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageRepositoryUrl': imageRepositoryUrl,
      'password': ?password == null ? null : password!.toMap(),
      'userName': userName,
    };
  }

  factory ImageRepositoryCredentialResponse.fromMap(Map<String, dynamic> map) {
    return ImageRepositoryCredentialResponse(
      imageRepositoryUrl: map['imageRepositoryUrl'] as String,
      password: map['password'] == null ? null : AsymmetricEncryptedSecretResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      userName: map['userName'] as String,
    );
  }
}

