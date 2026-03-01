// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_source_control_token_source_control_token_args_doc}
/// The set of arguments for SourceControlToken.
/// {@endtemplate}
/// {@macro pulumi_appservice_source_control_token_source_control_token_args_doc}
class SourceControlTokenArgs {
  /// The Access Token.
  final pulumi.Input<String> token;
  /// The Access Token Secret.
  ///
  /// > **Note:** The token used for deploying App Service needs the following permissions: `repo` and `workflow`.
  final pulumi.Input<String>? tokenSecret;
  /// The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`.
  final pulumi.Input<String> type;

  /// Creates a new [SourceControlTokenArgs].
  /// [token] The Access Token.
  /// [tokenSecret] The Access Token Secret.
  /// [type] The Token type. Possible values include `Bitbucket`, `Dropbox`, `Github`, and `OneDrive`.
  SourceControlTokenArgs({
    required String token,
    String? tokenSecret,
    required String type,
  }) :
      token = pulumi.Input.asInput<String>(token),
      tokenSecret = pulumi.Input.asOptionalInput<String>(tokenSecret),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'tokenSecret': ?tokenSecret,
      'type': type,
    };
  }

  factory SourceControlTokenArgs.fromMap(Map<String, dynamic> map) {
    return SourceControlTokenArgs(
      token: map['token'] as String,
      tokenSecret: map['tokenSecret'] == null ? null : map['tokenSecret'] as String,
      type: map['type'] as String,
    );
  }
}

