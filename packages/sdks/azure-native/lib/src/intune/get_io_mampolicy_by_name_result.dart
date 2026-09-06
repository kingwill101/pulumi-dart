// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIoMAMPolicyByName.
class GetIoMAMPolicyByNameResult {
  final String? accessRecheckOfflineTimeout;
  final String? accessRecheckOnlineTimeout;
  final String? appSharingFromLevel;
  final String? appSharingToLevel;
  final String? authentication;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  final String? clipboardSharingLevel;
  final String? dataBackup;
  final String? description;
  final String? deviceCompliance;
  final String? fileEncryptionLevel;
  final String? fileSharingSaveAs;
  final String? friendlyName;
  final String? groupStatus;
  /// Resource Id
  final String? id;
  final String? lastModifiedTime;
  /// Resource Location
  final String? location;
  final String? managedBrowser;
  /// Resource name
  final String? name;
  final int? numOfApps;
  final String? offlineWipeTimeout;
  final String? pin;
  final int? pinNumRetry;
  /// Resource Tags
  final Map<String, String>? tags;
  final String? touchId;
  /// Resource type
  final String? type;

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
  /// [friendlyName] Optional.
  /// [groupStatus] Optional.
  /// [id] Resource Id
  /// [lastModifiedTime] Optional.
  /// [location] Resource Location
  /// [managedBrowser] Optional.
  /// [name] Resource name
  /// [numOfApps] Optional.
  /// [offlineWipeTimeout] Optional.
  /// [pin] Optional.
  /// [pinNumRetry] Optional.
  /// [tags] Resource Tags
  /// [touchId] Optional.
  /// [type] Resource type
  GetIoMAMPolicyByNameResult({
    this.accessRecheckOfflineTimeout,
    this.accessRecheckOnlineTimeout,
    String? appSharingFromLevel,
    String? appSharingToLevel,
    String? authentication,
    this.azureApiVersion,
    String? clipboardSharingLevel,
    String? dataBackup,
    this.description,
    String? deviceCompliance,
    String? fileEncryptionLevel,
    String? fileSharingSaveAs,
    this.friendlyName,
    String? groupStatus,
    this.id,
    this.lastModifiedTime,
    this.location,
    String? managedBrowser,
    this.name,
    this.numOfApps,
    this.offlineWipeTimeout,
    String? pin,
    this.pinNumRetry,
    this.tags,
    String? touchId,
    this.type,
  }) : appSharingFromLevel = appSharingFromLevel ?? 'none', appSharingToLevel = appSharingToLevel ?? 'none', authentication = authentication ?? 'required', clipboardSharingLevel = clipboardSharingLevel ?? 'blocked', dataBackup = dataBackup ?? 'allow', deviceCompliance = deviceCompliance ?? 'enable', fileEncryptionLevel = fileEncryptionLevel ?? 'deviceLocked', fileSharingSaveAs = fileSharingSaveAs ?? 'allow', groupStatus = groupStatus ?? 'notTargeted', managedBrowser = managedBrowser ?? 'required', pin = pin ?? 'required', touchId = touchId ?? 'enable';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRecheckOfflineTimeout': ?accessRecheckOfflineTimeout,
      'accessRecheckOnlineTimeout': ?accessRecheckOnlineTimeout,
      'appSharingFromLevel': ?appSharingFromLevel,
      'appSharingToLevel': ?appSharingToLevel,
      'authentication': ?authentication,
      'azureApiVersion': ?azureApiVersion,
      'clipboardSharingLevel': ?clipboardSharingLevel,
      'dataBackup': ?dataBackup,
      'description': ?description,
      'deviceCompliance': ?deviceCompliance,
      'fileEncryptionLevel': ?fileEncryptionLevel,
      'fileSharingSaveAs': ?fileSharingSaveAs,
      'friendlyName': ?friendlyName,
      'groupStatus': ?groupStatus,
      'id': ?id,
      'lastModifiedTime': ?lastModifiedTime,
      'location': ?location,
      'managedBrowser': ?managedBrowser,
      'name': ?name,
      'numOfApps': ?numOfApps,
      'offlineWipeTimeout': ?offlineWipeTimeout,
      'pin': ?pin,
      'pinNumRetry': ?pinNumRetry,
      'tags': ?tags,
      'touchId': ?touchId,
      'type': ?type,
    };
  }

  factory GetIoMAMPolicyByNameResult.fromMap(Map<String, dynamic> map) {
    return GetIoMAMPolicyByNameResult(
      accessRecheckOfflineTimeout: (() { final guardedValue = map['accessRecheckOfflineTimeout']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accessRecheckOnlineTimeout: (() { final guardedValue = map['accessRecheckOnlineTimeout']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appSharingFromLevel: (() { final guardedValue = map['appSharingFromLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appSharingToLevel: (() { final guardedValue = map['appSharingToLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clipboardSharingLevel: (() { final guardedValue = map['clipboardSharingLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataBackup: (() { final guardedValue = map['dataBackup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceCompliance: (() { final guardedValue = map['deviceCompliance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileEncryptionLevel: (() { final guardedValue = map['fileEncryptionLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSharingSaveAs: (() { final guardedValue = map['fileSharingSaveAs']; if (guardedValue == null) return null; return guardedValue as String; })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupStatus: (() { final guardedValue = map['groupStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBrowser: (() { final guardedValue = map['managedBrowser']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numOfApps: (() { final guardedValue = map['numOfApps']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      offlineWipeTimeout: (() { final guardedValue = map['offlineWipeTimeout']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pin: (() { final guardedValue = map['pin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pinNumRetry: (() { final guardedValue = map['pinNumRetry']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      touchId: (() { final guardedValue = map['touchId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
