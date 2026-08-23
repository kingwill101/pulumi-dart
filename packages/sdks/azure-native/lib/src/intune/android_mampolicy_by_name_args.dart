// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_intune_android_mampolicy_by_name_args_doc}
/// The set of arguments for AndroidMAMPolicyByName.
/// {@endtemplate}
/// {@macro pulumi_intune_android_mampolicy_by_name_args_doc}
class AndroidMAMPolicyByNameArgs {
  final pulumi.Input<String>? accessRecheckOfflineTimeout;
  final pulumi.Input<String>? accessRecheckOnlineTimeout;
  final pulumi.Input<String>? appSharingFromLevel;
  final pulumi.Input<String>? appSharingToLevel;
  final pulumi.Input<String>? authentication;
  final pulumi.Input<String>? clipboardSharingLevel;
  final pulumi.Input<String>? dataBackup;
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? deviceCompliance;
  final pulumi.Input<String>? fileEncryption;
  final pulumi.Input<String>? fileSharingSaveAs;
  final pulumi.Input<String> friendlyName;
  /// Location hostName for the tenant
  final pulumi.Input<String> hostName;
  /// Resource Location
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? managedBrowser;
  final pulumi.Input<String>? offlineWipeTimeout;
  final pulumi.Input<String>? pin;
  final pulumi.Input<int>? pinNumRetry;
  /// Unique name for the policy
  final pulumi.Input<String>? policyName;
  final pulumi.Input<String>? screenCapture;
  /// Resource Tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AndroidMAMPolicyByNameArgs].
  /// [accessRecheckOfflineTimeout] Optional.
  /// [accessRecheckOnlineTimeout] Optional.
  /// [appSharingFromLevel] Optional.
  /// [appSharingToLevel] Optional.
  /// [authentication] Optional.
  /// [clipboardSharingLevel] Optional.
  /// [dataBackup] Optional.
  /// [description] Optional.
  /// [deviceCompliance] Optional.
  /// [fileEncryption] Optional.
  /// [fileSharingSaveAs] Optional.
  /// [friendlyName] Required.
  /// [hostName] Location hostName for the tenant
  /// [location] Resource Location
  /// [managedBrowser] Optional.
  /// [offlineWipeTimeout] Optional.
  /// [pin] Optional.
  /// [pinNumRetry] Optional.
  /// [policyName] Unique name for the policy
  /// [screenCapture] Optional.
  /// [tags] Resource Tags
  const AndroidMAMPolicyByNameArgs({
    this.accessRecheckOfflineTimeout,
    this.accessRecheckOnlineTimeout,
    this.appSharingFromLevel,
    this.appSharingToLevel,
    this.authentication,
    this.clipboardSharingLevel,
    this.dataBackup,
    this.description,
    this.deviceCompliance,
    this.fileEncryption,
    this.fileSharingSaveAs,
    required this.friendlyName,
    required this.hostName,
    this.location,
    this.managedBrowser,
    this.offlineWipeTimeout,
    this.pin,
    this.pinNumRetry,
    this.policyName,
    this.screenCapture,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRecheckOfflineTimeout': ?accessRecheckOfflineTimeout,
      'accessRecheckOnlineTimeout': ?accessRecheckOnlineTimeout,
      'appSharingFromLevel': ?appSharingFromLevel,
      'appSharingToLevel': ?appSharingToLevel,
      'authentication': ?authentication,
      'clipboardSharingLevel': ?clipboardSharingLevel,
      'dataBackup': ?dataBackup,
      'description': ?description,
      'deviceCompliance': ?deviceCompliance,
      'fileEncryption': ?fileEncryption,
      'fileSharingSaveAs': ?fileSharingSaveAs,
      'friendlyName': friendlyName,
      'hostName': hostName,
      'location': ?location,
      'managedBrowser': ?managedBrowser,
      'offlineWipeTimeout': ?offlineWipeTimeout,
      'pin': ?pin,
      'pinNumRetry': ?pinNumRetry,
      'policyName': ?policyName,
      'screenCapture': ?screenCapture,
      'tags': ?tags,
    };
  }

  factory AndroidMAMPolicyByNameArgs.fromMap(Map<String, dynamic> map) {
    return AndroidMAMPolicyByNameArgs(
      accessRecheckOfflineTimeout: (() { final guardedValue = map['accessRecheckOfflineTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessRecheckOnlineTimeout: (() { final guardedValue = map['accessRecheckOnlineTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appSharingFromLevel: (() { final guardedValue = map['appSharingFromLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appSharingToLevel: (() { final guardedValue = map['appSharingToLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clipboardSharingLevel: (() { final guardedValue = map['clipboardSharingLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataBackup: (() { final guardedValue = map['dataBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceCompliance: (() { final guardedValue = map['deviceCompliance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileEncryption: (() { final guardedValue = map['fileEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSharingSaveAs: (() { final guardedValue = map['fileSharingSaveAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: pulumi.Input.fromValue(map['friendlyName'] as String),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBrowser: (() { final guardedValue = map['managedBrowser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offlineWipeTimeout: (() { final guardedValue = map['offlineWipeTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pin: (() { final guardedValue = map['pin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pinNumRetry: (() { final guardedValue = map['pinNumRetry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      screenCapture: (() { final guardedValue = map['screenCapture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
