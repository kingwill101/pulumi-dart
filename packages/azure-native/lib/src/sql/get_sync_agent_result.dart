// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSyncAgent.
class GetSyncAgentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Expiration time of the sync agent version.
  final String expiryTime;
  /// Resource ID.
  final String id;
  /// If the sync agent version is up to date.
  final bool isUpToDate;
  /// Last alive time of the sync agent.
  final String lastAliveTime;
  /// Resource name.
  final String name;
  /// State of the sync agent.
  final String state;
  /// ARM resource id of the sync database in the sync agent.
  final String? syncDatabaseId;
  /// Resource type.
  final String type;
  /// Version of the sync agent.
  final String version;

  /// Creates a new [GetSyncAgentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [expiryTime] Expiration time of the sync agent version.
  /// [id] Resource ID.
  /// [isUpToDate] If the sync agent version is up to date.
  /// [lastAliveTime] Last alive time of the sync agent.
  /// [name] Resource name.
  /// [state] State of the sync agent.
  /// [syncDatabaseId] ARM resource id of the sync database in the sync agent.
  /// [type] Resource type.
  /// [version] Version of the sync agent.
  GetSyncAgentResult({
    required this.azureApiVersion,
    required this.expiryTime,
    required this.id,
    required this.isUpToDate,
    required this.lastAliveTime,
    required this.name,
    required this.state,
    this.syncDatabaseId,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'expiryTime': expiryTime,
      'id': id,
      'isUpToDate': isUpToDate,
      'lastAliveTime': lastAliveTime,
      'name': name,
      'state': state,
      'syncDatabaseId': ?syncDatabaseId,
      'type': type,
      'version': version,
    };
  }

  factory GetSyncAgentResult.fromMap(Map<String, dynamic> map) {
    return GetSyncAgentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      expiryTime: map['expiryTime'] as String,
      id: map['id'] as String,
      isUpToDate: map['isUpToDate'] as bool,
      lastAliveTime: map['lastAliveTime'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      syncDatabaseId: map['syncDatabaseId'] == null ? null : map['syncDatabaseId'] as String,
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

