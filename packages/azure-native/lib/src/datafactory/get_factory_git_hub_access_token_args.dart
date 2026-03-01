// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_client_secret.dart';

/// {@template pulumi_datafactory_get_factory_git_hub_access_token_args_doc}
/// Arguments for getFactoryGitHubAccessToken.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_factory_git_hub_access_token_args_doc}
class GetFactoryGitHubAccessTokenArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// GitHub access code.
  final pulumi.Input<String> gitHubAccessCode;
  /// GitHub access token base URL.
  final pulumi.Input<String> gitHubAccessTokenBaseUrl;
  /// GitHub application client ID.
  final pulumi.Input<String>? gitHubClientId;
  /// GitHub bring your own app client secret information.
  final pulumi.Input<GitHubClientSecret>? gitHubClientSecret;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFactoryGitHubAccessTokenArgs].
  /// [factoryName] The factory name.
  /// [gitHubAccessCode] GitHub access code.
  /// [gitHubAccessTokenBaseUrl] GitHub access token base URL.
  /// [gitHubClientId] GitHub application client ID.
  /// [gitHubClientSecret] GitHub bring your own app client secret information.
  /// [resourceGroupName] The resource group name.
  GetFactoryGitHubAccessTokenArgs({
    required String factoryName,
    required String gitHubAccessCode,
    required String gitHubAccessTokenBaseUrl,
    String? gitHubClientId,
    GitHubClientSecret? gitHubClientSecret,
    required String resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      gitHubAccessCode = pulumi.Input.asInput<String>(gitHubAccessCode),
      gitHubAccessTokenBaseUrl = pulumi.Input.asInput<String>(gitHubAccessTokenBaseUrl),
      gitHubClientId = pulumi.Input.asOptionalInput<String>(gitHubClientId),
      gitHubClientSecret = pulumi.Input.asOptionalInput<GitHubClientSecret>(gitHubClientSecret),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'gitHubAccessCode': gitHubAccessCode,
      'gitHubAccessTokenBaseUrl': gitHubAccessTokenBaseUrl,
      'gitHubClientId': ?gitHubClientId,
      'gitHubClientSecret': ?pulumi.Input.mapOptionalInputValue<GitHubClientSecret, Map<String, dynamic>>(gitHubClientSecret, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFactoryGitHubAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetFactoryGitHubAccessTokenArgs(
      factoryName: map['factoryName'] as String,
      gitHubAccessCode: map['gitHubAccessCode'] as String,
      gitHubAccessTokenBaseUrl: map['gitHubAccessTokenBaseUrl'] as String,
      gitHubClientId: map['gitHubClientId'] == null ? null : map['gitHubClientId'] as String,
      gitHubClientSecret: map['gitHubClientSecret'] == null ? null : GitHubClientSecret.fromMap((map['gitHubClientSecret'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

