// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SAS token information.
class SasTokenInformationResponse {
  /// The access token for the associated Azure Storage Container.
  final pulumi.Input<String> accessToken;

  /// Creates a new [SasTokenInformationResponse].
  /// [accessToken] The access token for the associated Azure Storage Container.
  const SasTokenInformationResponse({
    required this.accessToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
    };
  }

  factory SasTokenInformationResponse.fromMap(Map<String, dynamic> map) {
    return SasTokenInformationResponse(
      accessToken: pulumi.Input.fromValue(map['accessToken'] as String),
    );
  }
}

