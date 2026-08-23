// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetMetadataConfiguration {
  /// A set of URL query parameters that are allowed to be propagated from incoming gateway URL to the target. Maximum of 10 parameters.
  final pulumi.Input<List<String>>? allowedQueryParameters;
  /// A set of HTTP headers that are allowed to be propagated from incoming client requests to the target. Maximum of 10 headers.
  final pulumi.Input<List<String>>? allowedRequestHeaders;
  /// A set of HTTP headers that are allowed to be propagated from the target response back to the client. Maximum of 10 headers.
  ///
  /// &gt; **Note:** Header names must contain only alphanumeric characters, hyphens, and underscores. A large number of standard HTTP headers are restricted and cannot be configured for propagation, including authentication, content negotiation, caching, security, CORS, and connection management headers. Headers starting with `X-Amzn-` are prohibited except for `X-Amzn-Bedrock-AgentCore-Runtime-Custom-*` headers. These restrictions are enforced by schema validation. For the full list of restricted headers, see the [AWS documentation](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/gateway-headers.html).
  final pulumi.Input<List<String>>? allowedResponseHeaders;

  /// Creates a new [AgentcoreGatewayTargetMetadataConfiguration].
  /// [allowedQueryParameters] A set of URL query parameters that are allowed to be propagated from incoming gateway URL to the target. Maximum of 10 parameters.
  /// [allowedRequestHeaders] A set of HTTP headers that are allowed to be propagated from incoming client requests to the target. Maximum of 10 headers.
  /// [allowedResponseHeaders] A set of HTTP headers that are allowed to be propagated from the target response back to the client. Maximum of 10 headers.
  const AgentcoreGatewayTargetMetadataConfiguration({
    this.allowedQueryParameters,
    this.allowedRequestHeaders,
    this.allowedResponseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedQueryParameters': ?allowedQueryParameters,
      'allowedRequestHeaders': ?allowedRequestHeaders,
      'allowedResponseHeaders': ?allowedResponseHeaders,
    };
  }

  factory AgentcoreGatewayTargetMetadataConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetMetadataConfiguration(
      allowedQueryParameters: (() { final guardedValue = map['allowedQueryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedRequestHeaders: (() { final guardedValue = map['allowedRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedResponseHeaders: (() { final guardedValue = map['allowedResponseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
