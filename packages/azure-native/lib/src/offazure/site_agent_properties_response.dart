// ignore_for_file: unused_element, unnecessary_cast


/// Class for site agent properties.
class SiteAgentPropertiesResponse {
  /// Gets the ID of the agent.
  final String id;
  /// Gets or sets the key vault ARM Id.
  final String? keyVaultId;
  /// Gets or sets the key vault URI.
  final String? keyVaultUri;
  /// Gets the last heartbeat time of the agent in UTC.
  final String lastHeartBeatUtc;
  /// Gets the version of the agent.
  final String version;

  /// Creates a new [SiteAgentPropertiesResponse].
  /// [id] Gets the ID of the agent.
  /// [keyVaultId] Gets or sets the key vault ARM Id.
  /// [keyVaultUri] Gets or sets the key vault URI.
  /// [lastHeartBeatUtc] Gets the last heartbeat time of the agent in UTC.
  /// [version] Gets the version of the agent.
  SiteAgentPropertiesResponse({
    required this.id,
    this.keyVaultId,
    this.keyVaultUri,
    required this.lastHeartBeatUtc,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keyVaultId': ?keyVaultId,
      'keyVaultUri': ?keyVaultUri,
      'lastHeartBeatUtc': lastHeartBeatUtc,
      'version': version,
    };
  }

  factory SiteAgentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SiteAgentPropertiesResponse(
      id: map['id'] as String,
      keyVaultId: map['keyVaultId'] == null ? null : map['keyVaultId'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      lastHeartBeatUtc: map['lastHeartBeatUtc'] as String,
      version: map['version'] as String,
    );
  }
}

