// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_tool_config_agentcore_gateway_outbound_auth_oauth.dart';

class AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuth {
  /// Set to `true` to use AWS IAM authentication.
  final pulumi.Input<bool>? awsIam;
  /// Set to `true` to disable authentication.
  final pulumi.Input<bool>? none;
  /// OAuth credential provider configuration. See `oauth` Block below.
  final pulumi.Input<AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuthOauth>? oauth;

  /// Creates a new [AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuth].
  /// [awsIam] Set to `true` to use AWS IAM authentication.
  /// [none] Set to `true` to disable authentication.
  /// [oauth] OAuth credential provider configuration. See `oauth` Block below.
  const AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuth({
    this.awsIam,
    this.none,
    this.oauth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsIam': ?awsIam,
      'none': ?none,
      'oauth': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuthOauth, Map<String, dynamic>>(oauth, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuth.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuth(
      awsIam: (() { final guardedValue = map['awsIam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      none: (() { final guardedValue = map['none']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      oauth: (() { final guardedValue = map['oauth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessToolConfigAgentcoreGatewayOutboundAuthOauth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
