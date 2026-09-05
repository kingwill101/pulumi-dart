// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessToolConfigRemoteMcp {
  /// Map of HTTP headers to include in requests to the MCP server.
  final pulumi.Input<Map<String, String>?>? headers;
  /// URL of the remote MCP server.
  final pulumi.Input<String> url;

  /// Creates a new [AgentcoreHarnessToolConfigRemoteMcp].
  /// [headers] Map of HTTP headers to include in requests to the MCP server.
  /// [url] URL of the remote MCP server.
  const AgentcoreHarnessToolConfigRemoteMcp({
    this.headers,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers,
      'url': url,
    };
  }

  factory AgentcoreHarnessToolConfigRemoteMcp.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessToolConfigRemoteMcp(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
