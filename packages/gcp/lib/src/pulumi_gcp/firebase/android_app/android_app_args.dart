// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AndroidApp.
class AndroidAppArgs {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AndroidApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final Input<String>? apiKeyId;
  final Input<String>? deletionPolicy;

  /// The user-assigned display name of the AndroidApp.
  final Input<String> displayName;

  /// The canonical package name of the Android app as would appear in the Google Play
  /// Developer Console.
  final Input<String> packageName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The SHA1 certificate hashes for the AndroidApp.
  final Input<List<String>>? sha1Hashes;

  /// The SHA256 certificate hashes for the AndroidApp.
  final Input<List<String>>? sha256Hashes;

  AndroidAppArgs({
    this.apiKeyId,
    this.deletionPolicy,
    required this.displayName,
    required this.packageName,
    this.project,
    this.sha1Hashes,
    this.sha256Hashes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyIdValue = apiKeyId;
    if (apiKeyIdValue != null) {
      map['apiKeyId'] = apiKeyIdValue;
    }
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    map['displayName'] = displayName;
    map['packageName'] = packageName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sha1HashesValue = sha1Hashes;
    if (sha1HashesValue != null) {
      map['sha1Hashes'] = sha1HashesValue;
    }
    final sha256HashesValue = sha256Hashes;
    if (sha256HashesValue != null) {
      map['sha256Hashes'] = sha256HashesValue;
    }
    return map;
  }

  factory AndroidAppArgs.fromMap(Map<String, dynamic> map) {
    return AndroidAppArgs(
      apiKeyId: Input.asOptionalInput<String>(map['apiKeyId']),
      deletionPolicy: Input.asOptionalInput<String>(map['deletionPolicy']),
      displayName: Input.asInput<String>(map['displayName']),
      packageName: Input.asInput<String>(map['packageName']),
      project: Input.asOptionalInput<String>(map['project']),
      sha1Hashes: Input.asOptionalInput<List<String>>(map['sha1Hashes']),
      sha256Hashes: Input.asOptionalInput<List<String>>(map['sha256Hashes']),
    );
  }
}
