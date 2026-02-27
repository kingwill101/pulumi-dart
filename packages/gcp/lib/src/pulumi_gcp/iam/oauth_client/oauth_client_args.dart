// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OauthClient.
class OauthClientArgs {
  /// Required. The list of OAuth grant types is allowed for the OauthClient.
  final pulumi.Input<List<String>> allowedGrantTypes;

  /// Required. The list of redirect uris that is allowed to redirect back
  /// when authorization process is completed.
  final pulumi.Input<List<String>> allowedRedirectUris;

  /// Required. The list of scopes that the OauthClient is allowed to request during
  /// OAuth flows.
  /// The following scopes are supported:
  /// * `https://www.googleapis.com/auth/cloud-platform`: See, edit, configure,
  /// and delete your Google Cloud data and see the email address for your Google
  /// Account.
  final pulumi.Input<List<String>> allowedScopes;

  /// Immutable. The type of OauthClient. Either public or private.
  /// For private clients, the client secret can be managed using the dedicated
  /// OauthClientCredential resource.
  /// Possible values:
  /// CLIENT_TYPE_UNSPECIFIED
  /// PUBLIC_CLIENT
  /// CONFIDENTIAL_CLIENT
  final pulumi.Input<String>? clientType;

  /// A user-specified description of the OauthClient.
  /// Cannot exceed 256 characters.
  final pulumi.Input<String>? description;

  /// Whether the OauthClient is disabled. You cannot use a disabled OAuth
  /// client.
  final pulumi.Input<bool>? disabled;

  /// A user-specified display name of the OauthClient.
  /// Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// Required. The ID to use for the OauthClient, which becomes the final component of
  /// the resource name. This value should be a string of 6 to 63 lowercase
  /// letters, digits, or hyphens. It must start with a letter, and cannot have a
  /// trailing hyphen. The prefix `gcp-` is reserved for use by Google, and may
  /// not be specified.
  final pulumi.Input<String> oauthClientId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  OauthClientArgs({
    required this.allowedGrantTypes,
    required this.allowedRedirectUris,
    required this.allowedScopes,
    this.clientType,
    this.description,
    this.disabled,
    this.displayName,
    required this.location,
    required this.oauthClientId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedGrantTypes'] = allowedGrantTypes;
    map['allowedRedirectUris'] = allowedRedirectUris;
    map['allowedScopes'] = allowedScopes;
    final clientTypeValue = clientType;
    if (clientTypeValue != null) {
      map['clientType'] = clientTypeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    map['oauthClientId'] = oauthClientId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory OauthClientArgs.fromMap(Map<String, dynamic> map) {
    return OauthClientArgs(
      allowedGrantTypes:
          pulumi.Input.asInput<List<String>>(map['allowedGrantTypes']),
      allowedRedirectUris:
          pulumi.Input.asInput<List<String>>(map['allowedRedirectUris']),
      allowedScopes: pulumi.Input.asInput<List<String>>(map['allowedScopes']),
      clientType: pulumi.Input.asOptionalInput<String>(map['clientType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asInput<String>(map['location']),
      oauthClientId: pulumi.Input.asInput<String>(map['oauthClientId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
