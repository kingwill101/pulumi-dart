// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devhub_get_git_hub_oauth_args_doc}
/// Arguments for getGitHubOAuth.
/// {@endtemplate}
/// {@macro pulumi_devhub_get_git_hub_oauth_args_doc}
class GetGitHubOAuthArgs {
  /// The name of Azure region.
  final pulumi.Input<String> location;
  /// The URL the client will redirect to on successful authentication. If empty, no redirect will occur.
  final pulumi.Input<String>? redirectUrl;

  /// Creates a new [GetGitHubOAuthArgs].
  /// [location] The name of Azure region.
  /// [redirectUrl] The URL the client will redirect to on successful authentication. If empty, no redirect will occur.
  GetGitHubOAuthArgs({
    required String location,
    String? redirectUrl,
  }) :
      location = pulumi.Input.asInput<String>(location),
      redirectUrl = pulumi.Input.asOptionalInput<String>(redirectUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'redirectUrl': ?redirectUrl,
    };
  }

  factory GetGitHubOAuthArgs.fromMap(Map<String, dynamic> map) {
    return GetGitHubOAuthArgs(
      location: map['location'] as String,
      redirectUrl: map['redirectUrl'] == null ? null : map['redirectUrl'] as String,
    );
  }
}

