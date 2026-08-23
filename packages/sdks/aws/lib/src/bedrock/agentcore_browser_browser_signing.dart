// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreBrowserBrowserSigning {
  /// Whether browser signing is enabled. When enabled, the browser cryptographically signs HTTP requests to identify itself as an AI agent to bot control vendors.
  final pulumi.Input<bool> enabled;

  /// Creates a new [AgentcoreBrowserBrowserSigning].
  /// [enabled] Whether browser signing is enabled. When enabled, the browser cryptographically signs HTTP requests to identify itself as an AI agent to bot control vendors.
  const AgentcoreBrowserBrowserSigning({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory AgentcoreBrowserBrowserSigning.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserBrowserSigning(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
