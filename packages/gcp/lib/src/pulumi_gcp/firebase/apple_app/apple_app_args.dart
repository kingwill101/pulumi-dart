// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AppleApp.
class AppleAppArgs {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AppleApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AppleApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final Input<String>? apiKeyId;

  /// The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  final Input<String>? appStoreId;

  /// The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  final Input<String> bundleId;
  final Input<String>? deletionPolicy;

  /// The user-assigned display name of the App.
  final Input<String> displayName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The Apple Developer Team ID associated with the App in the App Store.
  final Input<String>? teamId;

  AppleAppArgs({
    this.apiKeyId,
    this.appStoreId,
    required this.bundleId,
    this.deletionPolicy,
    required this.displayName,
    this.project,
    this.teamId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyIdValue = apiKeyId;
    if (apiKeyIdValue != null) {
      map['apiKeyId'] = apiKeyIdValue;
    }
    final appStoreIdValue = appStoreId;
    if (appStoreIdValue != null) {
      map['appStoreId'] = appStoreIdValue;
    }
    map['bundleId'] = bundleId;
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    map['displayName'] = displayName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final teamIdValue = teamId;
    if (teamIdValue != null) {
      map['teamId'] = teamIdValue;
    }
    return map;
  }

  factory AppleAppArgs.fromMap(Map<String, dynamic> map) {
    return AppleAppArgs(
      apiKeyId: Input.asOptionalInput<String>(map['apiKeyId']),
      appStoreId: Input.asOptionalInput<String>(map['appStoreId']),
      bundleId: Input.asInput<String>(map['bundleId']),
      deletionPolicy: Input.asOptionalInput<String>(map['deletionPolicy']),
      displayName: Input.asInput<String>(map['displayName']),
      project: Input.asOptionalInput<String>(map['project']),
      teamId: Input.asOptionalInput<String>(map['teamId']),
    );
  }
}
