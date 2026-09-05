// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuthOauth {
  /// Map of custom parameters.
  final pulumi.Input<Map<String, String>?>? customParameters;
  /// Default return URL for OAuth flow.
  final pulumi.Input<String?>? defaultReturnUrl;
  /// OAuth grant type.
  final pulumi.Input<String?>? grantType;
  /// ARN of the OAuth credential provider.
  final pulumi.Input<String> providerArn;
  /// List of OAuth scopes.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuthOauth].
  /// [customParameters] Map of custom parameters.
  /// [defaultReturnUrl] Default return URL for OAuth flow.
  /// [grantType] OAuth grant type.
  /// [providerArn] ARN of the OAuth credential provider.
  /// [scopes] List of OAuth scopes.
  const AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuthOauth({
    this.customParameters,
    this.defaultReturnUrl,
    this.grantType,
    required this.providerArn,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customParameters': ?customParameters,
      'defaultReturnUrl': ?defaultReturnUrl,
      'grantType': ?grantType,
      'providerArn': providerArn,
      'scopes': scopes,
    };
  }

  factory AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuthOauth.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuthOauth(
      customParameters: (() { final guardedValue = map['customParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultReturnUrl: (() { final guardedValue = map['defaultReturnUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantType: (() { final guardedValue = map['grantType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerArn: pulumi.Input.fromValue(map['providerArn'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}
