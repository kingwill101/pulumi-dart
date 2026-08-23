// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAuthorizationCredentialApiKeyCredential {
  /// API key.
  final pulumi.Input<String> apiKey;

  /// Creates a new [AppAuthorizationCredentialApiKeyCredential].
  /// [apiKey] API key.
  const AppAuthorizationCredentialApiKeyCredential({
    required this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
    };
  }

  factory AppAuthorizationCredentialApiKeyCredential.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationCredentialApiKeyCredential(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
    );
  }
}
