// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_android_app_android_app_args_doc}
/// The set of arguments for AndroidApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_android_app_android_app_args_doc}
class AndroidAppArgs {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AndroidApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final pulumi.Input<String>? apiKeyId;
  final pulumi.Input<String>? deletionPolicy;

  /// The user-assigned display name of the AndroidApp.
  final pulumi.Input<String> displayName;

  /// The canonical package name of the Android app as would appear in the Google Play
  /// Developer Console.
  final pulumi.Input<String> packageName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The SHA1 certificate hashes for the AndroidApp.
  final pulumi.Input<List<String>>? sha1Hashes;

  /// The SHA256 certificate hashes for the AndroidApp.
  final pulumi.Input<List<String>>? sha256Hashes;

  /// Creates a new [AndroidAppArgs].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
  /// [deletionPolicy] Optional.
  /// [displayName] The user-assigned display name of the AndroidApp.
  /// [packageName] The canonical package name of the Android app as would appear in the Google Play
  /// [project] The ID of the project in which the resource belongs.
  /// [sha1Hashes] The SHA1 certificate hashes for the AndroidApp.
  /// [sha256Hashes] The SHA256 certificate hashes for the AndroidApp.
  AndroidAppArgs({
    String? apiKeyId,
    String? deletionPolicy,
    required String displayName,
    required String packageName,
    String? project,
    List<String>? sha1Hashes,
    List<String>? sha256Hashes,
  })  : apiKeyId = pulumi.Input.asOptionalInput<String>(apiKeyId),
        deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
        displayName = pulumi.Input.asInput<String>(displayName),
        packageName = pulumi.Input.asInput<String>(packageName),
        project = pulumi.Input.asOptionalInput<String>(project),
        sha1Hashes = pulumi.Input.asOptionalInput<List<String>>(sha1Hashes),
        sha256Hashes = pulumi.Input.asOptionalInput<List<String>>(sha256Hashes);

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
      apiKeyId: map['apiKeyId'] == null ? null : map['apiKeyId'] as String,
      deletionPolicy: map['deletionPolicy'] == null
          ? null
          : map['deletionPolicy'] as String,
      displayName: map['displayName'] as String,
      packageName: map['packageName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sha1Hashes: map['sha1Hashes'] == null
          ? null
          : (map['sha1Hashes'] as List).cast<String>(),
      sha256Hashes: map['sha256Hashes'] == null
          ? null
          : (map['sha256Hashes'] as List).cast<String>(),
    );
  }
}
