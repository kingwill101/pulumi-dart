// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for WebApp.
class WebAppArgs {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the WebApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the WebApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final pulumi.Input<String>? apiKeyId;
  final pulumi.Input<String>? deletionPolicy;

  /// The user-assigned display name of the App.
  final pulumi.Input<String> displayName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  WebAppArgs({
    this.apiKeyId,
    this.deletionPolicy,
    required this.displayName,
    this.project,
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
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory WebAppArgs.fromMap(Map<String, dynamic> map) {
    return WebAppArgs(
      apiKeyId: pulumi.Input.asOptionalInput<String>(map['apiKeyId']),
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
