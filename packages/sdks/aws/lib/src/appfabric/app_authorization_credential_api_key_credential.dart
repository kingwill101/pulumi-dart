// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAuthorizationCredentialApiKeyCredential {
  /// Contains API key credential information.
  final pulumi.Input<String> apiKey;

  /// Creates a new [AppAuthorizationCredentialApiKeyCredential].
  /// [apiKey] Contains API key credential information.
  AppAuthorizationCredentialApiKeyCredential({
    required this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
    };
  }

  factory AppAuthorizationCredentialApiKeyCredential.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationCredentialApiKeyCredential(
      apiKey: (map['apiKey'] as String).input(),
    );
  }
}

