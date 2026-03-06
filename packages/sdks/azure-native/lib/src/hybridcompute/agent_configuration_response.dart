// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_extension_response.dart';

/// Configurable properties that the user can set locally via the azcmagent config command, or remotely via ARM.
class AgentConfigurationResponse {
  /// Name of configuration mode to use. Modes are pre-defined configurations of security controls, extension allowlists and guest configuration, maintained by Microsoft.
  final pulumi.Input<String> configMode;
  /// Array of extensions that are allowed to be installed or updated.
  final pulumi.Input<List<ConfigurationExtensionResponse>> extensionsAllowList;
  /// Array of extensions that are blocked (cannot be installed or updated)
  final pulumi.Input<List<ConfigurationExtensionResponse>> extensionsBlockList;
  /// Specifies whether the extension service is enabled or disabled.
  final pulumi.Input<String> extensionsEnabled;
  /// Specified whether the guest configuration service is enabled or disabled.
  final pulumi.Input<String> guestConfigurationEnabled;
  /// Specifies the list of ports that the agent will be able to listen on.
  final pulumi.Input<List<String>> incomingConnectionsPorts;
  /// List of service names which should not use the specified proxy server.
  final pulumi.Input<List<String>> proxyBypass;
  /// Specifies the URL of the proxy to be used.
  final pulumi.Input<String> proxyUrl;

  /// Creates a new [AgentConfigurationResponse].
  /// [configMode] Name of configuration mode to use. Modes are pre-defined configurations of security controls, extension allowlists and guest configuration, maintained by Microsoft.
  /// [extensionsAllowList] Array of extensions that are allowed to be installed or updated.
  /// [extensionsBlockList] Array of extensions that are blocked (cannot be installed or updated)
  /// [extensionsEnabled] Specifies whether the extension service is enabled or disabled.
  /// [guestConfigurationEnabled] Specified whether the guest configuration service is enabled or disabled.
  /// [incomingConnectionsPorts] Specifies the list of ports that the agent will be able to listen on.
  /// [proxyBypass] List of service names which should not use the specified proxy server.
  /// [proxyUrl] Specifies the URL of the proxy to be used.
  const AgentConfigurationResponse({
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
      'extensionsAllowList': pulumi.Input.mapInputValue<List<ConfigurationExtensionResponse>, List<Map<String, dynamic>>>(extensionsAllowList, (value) => pulumi.Input.encodeList<ConfigurationExtensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensionsBlockList': pulumi.Input.mapInputValue<List<ConfigurationExtensionResponse>, List<Map<String, dynamic>>>(extensionsBlockList, (value) => pulumi.Input.encodeList<ConfigurationExtensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensionsEnabled': extensionsEnabled,
      'guestConfigurationEnabled': guestConfigurationEnabled,
      'incomingConnectionsPorts': incomingConnectionsPorts,
      'proxyBypass': proxyBypass,
      'proxyUrl': proxyUrl,
    };
  }

  factory AgentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AgentConfigurationResponse(
      configMode: pulumi.Input.fromValue(map['configMode'] as String),
      extensionsAllowList: pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationExtensionResponse>(map['extensionsAllowList']!, (value) => ConfigurationExtensionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      extensionsBlockList: pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationExtensionResponse>(map['extensionsBlockList']!, (value) => ConfigurationExtensionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      extensionsEnabled: pulumi.Input.fromValue(map['extensionsEnabled'] as String),
      guestConfigurationEnabled: pulumi.Input.fromValue(map['guestConfigurationEnabled'] as String),
      incomingConnectionsPorts: pulumi.Input.fromValue((map['incomingConnectionsPorts'] as List).cast<String>()),
      proxyBypass: pulumi.Input.fromValue((map['proxyBypass'] as List).cast<String>()),
      proxyUrl: pulumi.Input.fromValue(map['proxyUrl'] as String),
    );
  }
}

