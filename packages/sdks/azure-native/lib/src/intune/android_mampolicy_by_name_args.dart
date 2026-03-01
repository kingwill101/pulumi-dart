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
    pulumi.Output<String>? accessRecheckOfflineTimeout,
    pulumi.Output<String>? accessRecheckOnlineTimeout,
    pulumi.Output<String>? appSharingFromLevel,
    pulumi.Output<String>? appSharingToLevel,
    pulumi.Output<String>? authentication,
    pulumi.Output<String>? clipboardSharingLevel,
    pulumi.Output<String>? dataBackup,
    pulumi.Output<String>? description,
    pulumi.Output<String>? deviceCompliance,
    pulumi.Output<String>? fileEncryption,
    pulumi.Output<String>? fileSharingSaveAs,
    required pulumi.Output<String> friendlyName,
    required pulumi.Output<String> hostName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedBrowser,
    pulumi.Output<String>? offlineWipeTimeout,
    pulumi.Output<String>? pin,
    pulumi.Output<int>? pinNumRetry,
    pulumi.Output<String>? policyName,
    pulumi.Output<String>? screenCapture,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessRecheckOfflineTimeout = pulumi.Input.asOptionalInput<String>(accessRecheckOfflineTimeout),
      accessRecheckOnlineTimeout = pulumi.Input.asOptionalInput<String>(accessRecheckOnlineTimeout),
      appSharingFromLevel = pulumi.Input.asOptionalInput<String>(appSharingFromLevel),
      appSharingToLevel = pulumi.Input.asOptionalInput<String>(appSharingToLevel),
      authentication = pulumi.Input.asOptionalInput<String>(authentication),
      clipboardSharingLevel = pulumi.Input.asOptionalInput<String>(clipboardSharingLevel),
      dataBackup = pulumi.Input.asOptionalInput<String>(dataBackup),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceCompliance = pulumi.Input.asOptionalInput<String>(deviceCompliance),
      fileEncryption = pulumi.Input.asOptionalInput<String>(fileEncryption),
      fileSharingSaveAs = pulumi.Input.asOptionalInput<String>(fileSharingSaveAs),
      friendlyName = pulumi.Input.asInput<String>(friendlyName),
      hostName = pulumi.Input.asInput<String>(hostName),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBrowser = pulumi.Input.asOptionalInput<String>(managedBrowser),
      offlineWipeTimeout = pulumi.Input.asOptionalInput<String>(offlineWipeTimeout),
      pin = pulumi.Input.asOptionalInput<String>(pin),
      pinNumRetry = pulumi.Input.asOptionalInput<int>(pinNumRetry),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      screenCapture = pulumi.Input.asOptionalInput<String>(screenCapture),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accessRecheckOfflineTimeout: map['accessRecheckOfflineTimeout'] == null ? null : pulumi.Output.create<String>(map['accessRecheckOfflineTimeout'] as String),
      accessRecheckOnlineTimeout: map['accessRecheckOnlineTimeout'] == null ? null : pulumi.Output.create<String>(map['accessRecheckOnlineTimeout'] as String),
      appSharingFromLevel: map['appSharingFromLevel'] == null ? null : pulumi.Output.create<String>(map['appSharingFromLevel'] as String),
      appSharingToLevel: map['appSharingToLevel'] == null ? null : pulumi.Output.create<String>(map['appSharingToLevel'] as String),
      authentication: map['authentication'] == null ? null : pulumi.Output.create<String>(map['authentication'] as String),
      clipboardSharingLevel: map['clipboardSharingLevel'] == null ? null : pulumi.Output.create<String>(map['clipboardSharingLevel'] as String),
      dataBackup: map['dataBackup'] == null ? null : pulumi.Output.create<String>(map['dataBackup'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      deviceCompliance: map['deviceCompliance'] == null ? null : pulumi.Output.create<String>(map['deviceCompliance'] as String),
      fileEncryption: map['fileEncryption'] == null ? null : pulumi.Output.create<String>(map['fileEncryption'] as String),
      fileSharingSaveAs: map['fileSharingSaveAs'] == null ? null : pulumi.Output.create<String>(map['fileSharingSaveAs'] as String),
      friendlyName: pulumi.Output.create<String>(map['friendlyName'] as String),
      hostName: pulumi.Output.create<String>(map['hostName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedBrowser: map['managedBrowser'] == null ? null : pulumi.Output.create<String>(map['managedBrowser'] as String),
      offlineWipeTimeout: map['offlineWipeTimeout'] == null ? null : pulumi.Output.create<String>(map['offlineWipeTimeout'] as String),
      pin: map['pin'] == null ? null : pulumi.Output.create<String>(map['pin'] as String),
      pinNumRetry: map['pinNumRetry'] == null ? null : pulumi.Output.create<int>(map['pinNumRetry'] as int),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      screenCapture: map['screenCapture'] == null ? null : pulumi.Output.create<String>(map['screenCapture'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

