// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OauthClientCredential.
class OauthClientCredentialArgs {
  /// Whether the OauthClientCredential is disabled. You cannot use a
  /// disabled OauthClientCredential.
  final pulumi.Input<bool>? disabled;

  /// A user-specified display name of the OauthClientCredential.
  /// Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// Required. The ID to use for the OauthClientCredential, which becomes the
  /// final component of the resource name. This value should be 4-32 characters,
  /// and may contain the characters [a-z0-9-]. The prefix `gcp-` is
  /// reserved for use by Google, and may not be specified.
  final pulumi.Input<String> oauthClientCredentialId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> oauthclient;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  OauthClientCredentialArgs({
    this.disabled,
    this.displayName,
    required this.location,
    required this.oauthClientCredentialId,
    required this.oauthclient,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    map['oauthClientCredentialId'] = oauthClientCredentialId;
    map['oauthclient'] = oauthclient;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory OauthClientCredentialArgs.fromMap(Map<String, dynamic> map) {
    return OauthClientCredentialArgs(
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asInput<String>(map['location']),
      oauthClientCredentialId:
          pulumi.Input.asInput<String>(map['oauthClientCredentialId']),
      oauthclient: pulumi.Input.asInput<String>(map['oauthclient']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
