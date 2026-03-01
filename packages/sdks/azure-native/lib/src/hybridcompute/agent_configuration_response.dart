// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_extension_response.dart';

/// Configurable properties that the user can set locally via the azcmagent config command, or remotely via ARM.
class AgentConfigurationResponse {
  /// Name of configuration mode to use. Modes are pre-defined configurations of security controls, extension allowlists and guest configuration, maintained by Microsoft.
  final String configMode;
  /// Array of extensions that are allowed to be installed or updated.
  final List<ConfigurationExtensionResponse> extensionsAllowList;
  /// Array of extensions that are blocked (cannot be installed or updated)
  final List<ConfigurationExtensionResponse> extensionsBlockList;
  /// Specifies whether the extension service is enabled or disabled.
  final String extensionsEnabled;
  /// Specified whether the guest configuration service is enabled or disabled.
  final String guestConfigurationEnabled;
  /// Specifies the list of ports that the agent will be able to listen on.
  final List<String> incomingConnectionsPorts;
  /// List of service names which should not use the specified proxy server.
  final List<String> proxyBypass;
  /// Specifies the URL of the proxy to be used.
  final String proxyUrl;

  /// Creates a new [AgentConfigurationResponse].
  /// [configMode] Name of configuration mode to use. Modes are pre-defined configurations of security controls, extension allowlists and guest configuration, maintained by Microsoft.
  /// [extensionsAllowList] Array of extensions that are allowed to be installed or updated.
  /// [extensionsBlockList] Array of extensions that are blocked (cannot be installed or updated)
  /// [extensionsEnabled] Specifies whether the extension service is enabled or disabled.
  /// [guestConfigurationEnabled] Specified whether the guest configuration service is enabled or disabled.
  /// [incomingConnectionsPorts] Specifies the list of ports that the agent will be able to listen on.
  /// [proxyBypass] List of service names which should not use the specified proxy server.
  /// [proxyUrl] Specifies the URL of the proxy to be used.
  AgentConfigurationResponse({
    required this.configMode,
    required this.extensionsAllowList,
    required this.extensionsBlockList,
    required this.extensionsEnabled,
    required this.guestConfigurationEnabled,
    required this.incomingConnectionsPorts,
    required this.proxyBypass,
    required this.proxyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMode': configMode,
      'extensionsAllowList': pulumi.Input.encodeList<ConfigurationExtensionResponse, Map<String, dynamic>>(extensionsAllowList, (value) => value.toMap()),
      'extensionsBlockList': pulumi.Input.encodeList<ConfigurationExtensionResponse, Map<String, dynamic>>(extensionsBlockList, (value) => value.toMap()),
      'extensionsEnabled': extensionsEnabled,
      'guestConfigurationEnabled': guestConfigurationEnabled,
      'incomingConnectionsPorts': incomingConnectionsPorts,
      'proxyBypass': proxyBypass,
      'proxyUrl': proxyUrl,
    };
  }

  factory AgentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AgentConfigurationResponse(
      configMode: map['configMode'] as String,
      extensionsAllowList: pulumi.Input.decodeList<ConfigurationExtensionResponse>(map['extensionsAllowList'], (value) => ConfigurationExtensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      extensionsBlockList: pulumi.Input.decodeList<ConfigurationExtensionResponse>(map['extensionsBlockList'], (value) => ConfigurationExtensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      extensionsEnabled: map['extensionsEnabled'] as String,
      guestConfigurationEnabled: map['guestConfigurationEnabled'] as String,
      incomingConnectionsPorts: (map['incomingConnectionsPorts'] as List).cast<String>(),
      proxyBypass: (map['proxyBypass'] as List).cast<String>(),
      proxyUrl: map['proxyUrl'] as String,
    );
  }
}

