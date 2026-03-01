// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_settings_response.dart';

/// Upstream auth settings. If not set, no auth is used for upstream messages.
class UpstreamAuthSettingsResponse {
  /// Managed identity settings for upstream.
  final ManagedIdentitySettingsResponse? managedIdentity;
  /// Upstream auth type enum.
  final String? type;

  /// Creates a new [UpstreamAuthSettingsResponse].
  /// [managedIdentity] Managed identity settings for upstream.
  /// [type] Upstream auth type enum.
  UpstreamAuthSettingsResponse({
    this.managedIdentity,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedIdentity': ?managedIdentity == null ? null : managedIdentity!.toMap(),
      'type': ?type,
    };
  }

  factory UpstreamAuthSettingsResponse.fromMap(Map<String, dynamic> map) {
    return UpstreamAuthSettingsResponse(
      managedIdentity: map['managedIdentity'] == null ? null : ManagedIdentitySettingsResponse.fromMap((map['managedIdentity'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

