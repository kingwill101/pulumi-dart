// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_extensions_allow_list.dart';
import 'get_agent_extensions_block_list.dart';

class GetAgent {
  /// A `extensions_allow_list` block as defined below.
  final List<GetAgentExtensionsAllowList> extensionsAllowLists;
  /// A `extensions_block_list` block as defined below.
  final List<GetAgentExtensionsBlockList> extensionsBlockLists;
  /// Specifies whether the extension service is enabled or disabled.
  final bool extensionsEnabled;
  /// Specified whether the guest configuration service is enabled or disabled.
  final bool guestConfigurationEnabled;
  /// Specifies the list of ports that the agent will be able to listen on.
  final List<String> incomingConnectionsPorts;
  /// List of service names which should not use the specified proxy server.
  final List<String> proxyBypasses;
  /// Specifies the URL of the proxy to be used.
  final String proxyUrl;

  /// Creates a new [GetAgent].
  /// [extensionsAllowLists] A `extensions_allow_list` block as defined below.
  /// [extensionsBlockLists] A `extensions_block_list` block as defined below.
  /// [extensionsEnabled] Specifies whether the extension service is enabled or disabled.
  /// [guestConfigurationEnabled] Specified whether the guest configuration service is enabled or disabled.
  /// [incomingConnectionsPorts] Specifies the list of ports that the agent will be able to listen on.
  /// [proxyBypasses] List of service names which should not use the specified proxy server.
  /// [proxyUrl] Specifies the URL of the proxy to be used.
  GetAgent({
    required this.extensionsAllowLists,
    required this.extensionsBlockLists,
    required this.extensionsEnabled,
    required this.guestConfigurationEnabled,
    required this.incomingConnectionsPorts,
    required this.proxyBypasses,
    required this.proxyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionsAllowLists': pulumi.Input.encodeList<GetAgentExtensionsAllowList, Map<String, dynamic>>(extensionsAllowLists, (value) => value.toMap()),
      'extensionsBlockLists': pulumi.Input.encodeList<GetAgentExtensionsBlockList, Map<String, dynamic>>(extensionsBlockLists, (value) => value.toMap()),
      'extensionsEnabled': extensionsEnabled,
      'guestConfigurationEnabled': guestConfigurationEnabled,
      'incomingConnectionsPorts': incomingConnectionsPorts,
      'proxyBypasses': proxyBypasses,
      'proxyUrl': proxyUrl,
    };
  }

  factory GetAgent.fromMap(Map<String, dynamic> map) {
    return GetAgent(
      extensionsAllowLists: pulumi.Input.decodeList<GetAgentExtensionsAllowList>(map['extensionsAllowLists'], (value) => GetAgentExtensionsAllowList.fromMap((value as Map).cast<String, dynamic>())),
      extensionsBlockLists: pulumi.Input.decodeList<GetAgentExtensionsBlockList>(map['extensionsBlockLists'], (value) => GetAgentExtensionsBlockList.fromMap((value as Map).cast<String, dynamic>())),
      extensionsEnabled: map['extensionsEnabled'] as bool,
      guestConfigurationEnabled: map['guestConfigurationEnabled'] as bool,
      incomingConnectionsPorts: (map['incomingConnectionsPorts'] as List).cast<String>(),
      proxyBypasses: (map['proxyBypasses'] as List).cast<String>(),
      proxyUrl: map['proxyUrl'] as String,
    );
  }
}

