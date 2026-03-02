// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIoMAMPolicyByName.
class GetIoMAMPolicyByNameResult {
  final String? accessRecheckOfflineTimeout;
  final String? accessRecheckOnlineTimeout;
  final String? appSharingFromLevel;
  final String? appSharingToLevel;
  final String? authentication;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String? clipboardSharingLevel;
  final String? dataBackup;
  final String? description;
  final String? deviceCompliance;
  final String? fileEncryptionLevel;
  final String? fileSharingSaveAs;
  final String friendlyName;
  final String groupStatus;
  /// Resource Id
  final String id;
  final String lastModifiedTime;
  /// Resource Location
  final String? location;
  final String? managedBrowser;
  /// Resource name
  final String name;
  final int numOfApps;
  final String? offlineWipeTimeout;
  final String? pin;
  final int? pinNumRetry;
  /// Resource Tags
  final Map<String, String>? tags;
  final String? touchId;
  /// Resource type
  final String type;

  /// Creates a new [GetIoMAMPolicyByNameResult].
  /// [accessRecheckOfflineTimeout] Optional.
  /// [accessRecheckOnlineTimeout] Optional.
  /// [appSharingFromLevel] Optional.
  /// [appSharingToLevel] Optional.
  /// [authentication] Optional.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clipboardSharingLevel] Optional.
  /// [dataBackup] Optional.
  /// [description] Optional.
  /// [deviceCompliance] Optional.
  /// [fileEncryptionLevel] Optional.
  /// [fileSharingSaveAs] Optional.
  /// [friendlyName] Required.
  /// [groupStatus] Required.
  /// [id] Resource Id
  /// [lastModifiedTime] Required.
  /// [location] Resource Location
  /// [managedBrowser] Optional.
  /// [name] Resource name
  /// [numOfApps] Required.
  /// [offlineWipeTimeout] Optional.
  /// [pin] Optional.
  /// [pinNumRetry] Optional.
  /// [tags] Resource Tags
  /// [touchId] Optional.
  /// [type] Resource type
  GetIoMAMPolicyByNameResult({
    this.accessRecheckOfflineTimeout,
    this.accessRecheckOnlineTimeout,
    this.appSharingFromLevel,
    this.appSharingToLevel,
    this.authentication,
    required this.azureApiVersion,
    this.clipboardSharingLevel,
    this.dataBackup,
    this.description,
    this.deviceCompliance,
    this.fileEncryptionLevel,
    this.fileSharingSaveAs,
    required this.friendlyName,
    required this.groupStatus,
    required this.id,
    required this.lastModifiedTime,
    this.location,
    this.managedBrowser,
    required this.name,
    required this.numOfApps,
    this.offlineWipeTimeout,
    this.pin,
    this.pinNumRetry,
    this.tags,
    this.touchId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRecheckOfflineTimeout': ?accessRecheckOfflineTimeout,
      'accessRecheckOnlineTimeout': ?accessRecheckOnlineTimeout,
      'appSharingFromLevel': ?appSharingFromLevel,
      'appSharingToLevel': ?appSharingToLevel,
      'authentication': ?authentication,
      'azureApiVersion': azureApiVersion,
      'clipboardSharingLevel': ?clipboardSharingLevel,
      'dataBackup': ?dataBackup,
      'description': ?description,
      'deviceCompliance': ?deviceCompliance,
      'fileEncryptionLevel': ?fileEncryptionLevel,
      'fileSharingSaveAs': ?fileSharingSaveAs,
      'friendlyName': friendlyName,
      'groupStatus': groupStatus,
      'id': id,
      'lastModifiedTime': lastModifiedTime,
      'location': ?location,
      'managedBrowser': ?managedBrowser,
      'name': name,
      'numOfApps': numOfApps,
      'offlineWipeTimeout': ?offlineWipeTimeout,
      'pin': ?pin,
      'pinNumRetry': ?pinNumRetry,
      'tags': ?tags,
      'touchId': ?touchId,
      'type': type,
    };
  }

  factory GetIoMAMPolicyByNameResult.fromMap(Map<String, dynamic> map) {
    return GetIoMAMPolicyByNameResult(
      accessRecheckOfflineTimeout: map['accessRecheckOfflineTimeout'] == null ? null : map['accessRecheckOfflineTimeout']! as String,
      accessRecheckOnlineTimeout: map['accessRecheckOnlineTimeout'] == null ? null : map['accessRecheckOnlineTimeout']! as String,
      appSharingFromLevel: map['appSharingFromLevel'] == null ? null : map['appSharingFromLevel']! as String,
      appSharingToLevel: map['appSharingToLevel'] == null ? null : map['appSharingToLevel']! as String,
      authentication: map['authentication'] == null ? null : map['authentication']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      clipboardSharingLevel: map['clipboardSharingLevel'] == null ? null : map['clipboardSharingLevel']! as String,
      dataBackup: map['dataBackup'] == null ? null : map['dataBackup']! as String,
      description: map['description'] == null ? null : map['description']! as String,
      deviceCompliance: map['deviceCompliance'] == null ? null : map['deviceCompliance']! as String,
      fileEncryptionLevel: map['fileEncryptionLevel'] == null ? null : map['fileEncryptionLevel']! as String,
      fileSharingSaveAs: map['fileSharingSaveAs'] == null ? null : map['fileSharingSaveAs']! as String,
      friendlyName: map['friendlyName'] as String,
      groupStatus: map['groupStatus'] as String,
      id: map['id'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      managedBrowser: map['managedBrowser'] == null ? null : map['managedBrowser']! as String,
      name: map['name'] as String,
      numOfApps: map['numOfApps'] as int,
      offlineWipeTimeout: map['offlineWipeTimeout'] == null ? null : map['offlineWipeTimeout']! as String,
      pin: map['pin'] == null ? null : map['pin']! as String,
      pinNumRetry: map['pinNumRetry'] == null ? null : map['pinNumRetry']! as int,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      touchId: map['touchId'] == null ? null : map['touchId']! as String,
      type: map['type'] as String,
    );
  }
}

