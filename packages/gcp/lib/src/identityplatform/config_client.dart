// ignore_for_file: unused_element, unnecessary_cast

import 'config_client_permissions.dart';

class ConfigClient {
  /// (Output)
  /// API key that can be used when making requests for this project.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? apiKey;

  /// (Output)
  /// Firebase subdomain.
  final String? firebaseSubdomain;

  /// Configuration related to restricting a user's ability to affect their account.
  /// Structure is documented below.
  final ConfigClientPermissions? permissions;

  /// Creates a new [ConfigClient].
  /// [apiKey] (Output)
  /// [firebaseSubdomain] (Output)
  /// [permissions] Configuration related to restricting a user's ability to affect their account.
  ConfigClient({this.apiKey, this.firebaseSubdomain, this.permissions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'firebaseSubdomain': ?firebaseSubdomain,
      'permissions': ?permissions == null ? null : permissions!.toMap(),
    };
  }

  factory ConfigClient.fromMap(Map<String, dynamic> map) {
    return ConfigClient(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
      firebaseSubdomain: map['firebaseSubdomain'] == null
          ? null
          : map['firebaseSubdomain'] as String,
      permissions: map['permissions'] == null
          ? null
          : ConfigClientPermissions.fromMap(
              (map['permissions'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
