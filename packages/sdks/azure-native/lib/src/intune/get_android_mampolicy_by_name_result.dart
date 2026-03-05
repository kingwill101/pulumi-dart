// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAndroidMAMPolicyByName.
class GetAndroidMAMPolicyByNameResult {
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
  final String? fileEncryption;
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
  final String? screenCapture;
  /// Resource Tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;

  /// Creates a new [GetAndroidMAMPolicyByNameResult].
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
  /// [fileEncryption] Optional.
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
  /// [screenCapture] Optional.
  /// [tags] Resource Tags
  /// [type] Resource type
  GetAndroidMAMPolicyByNameResult({
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
    this.fileEncryption,
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
    this.screenCapture,
    this.tags,
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
      'fileEncryption': ?fileEncryption,
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
      'screenCapture': ?screenCapture,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAndroidMAMPolicyByNameResult.fromMap(Map<String, dynamic> map) {
    return GetAndroidMAMPolicyByNameResult(
      accessRecheckOfflineTimeout: (() { final guardedValue = map['accessRecheckOfflineTimeout']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accessRecheckOnlineTimeout: (() { final guardedValue = map['accessRecheckOnlineTimeout']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appSharingFromLevel: (() { final guardedValue = map['appSharingFromLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appSharingToLevel: (() { final guardedValue = map['appSharingToLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      clipboardSharingLevel: (() { final guardedValue = map['clipboardSharingLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataBackup: (() { final guardedValue = map['dataBackup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceCompliance: (() { final guardedValue = map['deviceCompliance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileEncryption: (() { final guardedValue = map['fileEncryption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSharingSaveAs: (() { final guardedValue = map['fileSharingSaveAs']; if (guardedValue == null) return null; return guardedValue as String; })(),
      friendlyName: map['friendlyName'] as String,
      groupStatus: map['groupStatus'] as String,
      id: map['id'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBrowser: (() { final guardedValue = map['managedBrowser']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      numOfApps: map['numOfApps'] as int,
      offlineWipeTimeout: (() { final guardedValue = map['offlineWipeTimeout']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pin: (() { final guardedValue = map['pin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pinNumRetry: (() { final guardedValue = map['pinNumRetry']; if (guardedValue == null) return null; return guardedValue as int; })(),
      screenCapture: (() { final guardedValue = map['screenCapture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

