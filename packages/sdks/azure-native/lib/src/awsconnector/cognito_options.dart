// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CognitoOptions
class CognitoOptions {
  /// &lt;p&gt;Whether to enable or disable Amazon Cognito authentication for OpenSearch Dashboards.&lt;/p&gt;
  final pulumi.Input<bool>? enabled;

  /// &lt;p&gt;The Amazon Cognito identity pool ID that you want OpenSearch Service to use for OpenSearch Dashboards authentication.&lt;/p&gt;
  final pulumi.Input<String>? identityPoolId;

  /// &lt;p&gt;The &lt;code&gt;AmazonOpenSearchServiceCognitoAccess&lt;/code&gt; role that allows OpenSearch Service to configure your user pool and identity pool.&lt;/p&gt;
  final pulumi.Input<String>? roleArn;

  /// &lt;p&gt;The Amazon Cognito user pool ID that you want OpenSearch Service to use for OpenSearch Dashboards authentication.&lt;/p&gt;
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [CognitoOptions].
  /// [enabled] &lt;p&gt;Whether to enable or disable Amazon Cognito authentication for OpenSearch Dashboards.&lt;/p&gt;
  /// [identityPoolId] &lt;p&gt;The Amazon Cognito identity pool ID that you want OpenSearch Service to use for OpenSearch Dashboards authentication.&lt;/p&gt;
  /// [roleArn] &lt;p&gt;The &lt;code&gt;AmazonOpenSearchServiceCognitoAccess&lt;/code&gt; role that allows OpenSearch Service to configure your user pool and identity pool.&lt;/p&gt;
  /// [userPoolId] &lt;p&gt;The Amazon Cognito user pool ID that you want OpenSearch Service to use for OpenSearch Dashboards authentication.&lt;/p&gt;
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
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      identityPoolId: (() {
        final guardedValue = map['identityPoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleArn: (() {
        final guardedValue = map['roleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPoolId: (() {
        final guardedValue = map['userPoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
