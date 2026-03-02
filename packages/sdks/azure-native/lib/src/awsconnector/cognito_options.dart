// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CognitoOptions
class CognitoOptions {
  /// <p>Whether to enable or disable Amazon Cognito authentication for OpenSearch Dashboards.</p>
  final pulumi.Input<bool>? enabled;
  /// <p>The Amazon Cognito identity pool ID that you want OpenSearch Service to use for OpenSearch Dashboards authentication.</p>
  final pulumi.Input<String>? identityPoolId;
  /// <p>The <code>AmazonOpenSearchServiceCognitoAccess</code> role that allows OpenSearch Service to configure your user pool and identity pool.</p>
  final pulumi.Input<String>? roleArn;
  /// <p>The Amazon Cognito user pool ID that you want OpenSearch Service to use for OpenSearch Dashboards authentication.</p>
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [CognitoOptions].
  /// [enabled] <p>Whether to enable or disable Amazon Cognito authentication for OpenSearch Dashboards.</p>
  /// [identityPoolId] <p>The Amazon Cognito identity pool ID that you want OpenSearch Service to use for OpenSearch Dashboards authentication.</p>
  /// [roleArn] <p>The <code>AmazonOpenSearchServiceCognitoAccess</code> role that allows OpenSearch Service to configure your user pool and identity pool.</p>
  /// [userPoolId] <p>The Amazon Cognito user pool ID that you want OpenSearch Service to use for OpenSearch Dashboards authentication.</p>
  CognitoOptions({
    this.enabled,
    this.identityPoolId,
    this.roleArn,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'identityPoolId': ?identityPoolId,
      'roleArn': ?roleArn,
      'userPoolId': ?userPoolId,
    };
  }

  factory CognitoOptions.fromMap(Map<String, dynamic> map) {
    return CognitoOptions(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      identityPoolId: map['identityPoolId'] == null ? null : (map['identityPoolId'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      userPoolId: map['userPoolId'] == null ? null : (map['userPoolId'] as String).input(),
    );
  }
}

