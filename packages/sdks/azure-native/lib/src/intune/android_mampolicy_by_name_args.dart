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
  AndroidMAMPolicyByNameArgs({
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
      accessRecheckOfflineTimeout: map['accessRecheckOfflineTimeout'] == null ? null : (map['accessRecheckOfflineTimeout'] as String).input(),
      accessRecheckOnlineTimeout: map['accessRecheckOnlineTimeout'] == null ? null : (map['accessRecheckOnlineTimeout'] as String).input(),
      appSharingFromLevel: map['appSharingFromLevel'] == null ? null : (map['appSharingFromLevel'] as String).input(),
      appSharingToLevel: map['appSharingToLevel'] == null ? null : (map['appSharingToLevel'] as String).input(),
      authentication: map['authentication'] == null ? null : (map['authentication'] as String).input(),
      clipboardSharingLevel: map['clipboardSharingLevel'] == null ? null : (map['clipboardSharingLevel'] as String).input(),
      dataBackup: map['dataBackup'] == null ? null : (map['dataBackup'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      deviceCompliance: map['deviceCompliance'] == null ? null : (map['deviceCompliance'] as String).input(),
      fileEncryption: map['fileEncryption'] == null ? null : (map['fileEncryption'] as String).input(),
      fileSharingSaveAs: map['fileSharingSaveAs'] == null ? null : (map['fileSharingSaveAs'] as String).input(),
      friendlyName: (map['friendlyName'] as String).input(),
      hostName: (map['hostName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedBrowser: map['managedBrowser'] == null ? null : (map['managedBrowser'] as String).input(),
      offlineWipeTimeout: map['offlineWipeTimeout'] == null ? null : (map['offlineWipeTimeout'] as String).input(),
      pin: map['pin'] == null ? null : (map['pin'] as String).input(),
      pinNumRetry: map['pinNumRetry'] == null ? null : (map['pinNumRetry'] as int).input(),
      policyName: map['policyName'] == null ? null : (map['policyName'] as String).input(),
      screenCapture: map['screenCapture'] == null ? null : (map['screenCapture'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

