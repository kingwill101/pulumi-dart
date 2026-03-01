// ignore_for_file: unused_element, unnecessary_cast


/// The sync properties of the connected registry with its parent.
class SyncPropertiesResponse {
  /// The gateway endpoint used by the connected registry to communicate with its parent.
  final String gatewayEndpoint;
  /// The last time a sync occurred between the connected registry and its parent.
  final String lastSyncTime;
  /// The period of time for which a message is available to sync before it is expired. Specify the duration using the format P[n]Y[n]M[n]DT[n]H[n]M[n]S as per ISO8601.
  final String messageTtl;
  /// The cron expression indicating the schedule that the connected registry will sync with its parent.
  final String? schedule;
  /// The time window during which sync is enabled for each schedule occurrence. Specify the duration using the format P[n]Y[n]M[n]DT[n]H[n]M[n]S as per ISO8601.
  final String? syncWindow;
  /// The resource ID of the ACR token used to authenticate the connected registry to its parent during sync.
  final String tokenId;

  /// Creates a new [SyncPropertiesResponse].
  /// [gatewayEndpoint] The gateway endpoint used by the connected registry to communicate with its parent.
  /// [lastSyncTime] The last time a sync occurred between the connected registry and its parent.
  /// [messageTtl] The period of time for which a message is available to sync before it is expired. Specify the duration using the format P[n]Y[n]M[n]DT[n]H[n]M[n]S as per ISO8601.
  /// [schedule] The cron expression indicating the schedule that the connected registry will sync with its parent.
  /// [syncWindow] The time window during which sync is enabled for each schedule occurrence. Specify the duration using the format P[n]Y[n]M[n]DT[n]H[n]M[n]S as per ISO8601.
  /// [tokenId] The resource ID of the ACR token used to authenticate the connected registry to its parent during sync.
  SyncPropertiesResponse({
    required this.gatewayEndpoint,
    required this.lastSyncTime,
    required this.messageTtl,
    this.schedule,
    this.syncWindow,
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayEndpoint': gatewayEndpoint,
      'lastSyncTime': lastSyncTime,
      'messageTtl': messageTtl,
      'schedule': ?schedule,
      'syncWindow': ?syncWindow,
      'tokenId': tokenId,
    };
  }

  factory SyncPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SyncPropertiesResponse(
      gatewayEndpoint: map['gatewayEndpoint'] as String,
      lastSyncTime: map['lastSyncTime'] as String,
      messageTtl: map['messageTtl'] as String,
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      syncWindow: map['syncWindow'] == null ? null : map['syncWindow'] as String,
      tokenId: map['tokenId'] as String,
    );
  }
}

