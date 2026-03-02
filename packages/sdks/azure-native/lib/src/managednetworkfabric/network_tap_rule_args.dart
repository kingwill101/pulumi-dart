// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_dynamic_match_configuration.dart';
import 'network_tap_rule_match_configuration.dart';

/// {@template pulumi_managednetworkfabric_network_tap_rule_args_doc}
/// The set of arguments for NetworkTapRule.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_tap_rule_args_doc}
class NetworkTapRuleArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Input method to configure Network Tap Rule.
  final pulumi.Input<String> configurationType;
  /// List of dynamic match configurations.
  final pulumi.Input<List<CommonDynamicMatchConfiguration>>? dynamicMatchConfigurations;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// List of match configurations.
  final pulumi.Input<List<NetworkTapRuleMatchConfiguration>>? matchConfigurations;
  /// Name of the Network Tap Rule.
  final pulumi.Input<String>? networkTapRuleName;
  /// Polling interval in seconds.
  final pulumi.Input<int>? pollingIntervalInSeconds;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Network Tap Rules file URL.
  final pulumi.Input<String>? tapRulesUrl;

  /// Creates a new [NetworkTapRuleArgs].
  /// [annotation] Switch configuration description.
  /// [configurationType] Input method to configure Network Tap Rule.
  /// [dynamicMatchConfigurations] List of dynamic match configurations.
  /// [location] The geo-location where the resource lives
  /// [matchConfigurations] List of match configurations.
  /// [networkTapRuleName] Name of the Network Tap Rule.
  /// [pollingIntervalInSeconds] Polling interval in seconds.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [tapRulesUrl] Network Tap Rules file URL.
  NetworkTapRuleArgs({
    this.annotation,
    required this.configurationType,
    this.dynamicMatchConfigurations,
    this.location,
    this.matchConfigurations,
    this.networkTapRuleName,
    this.pollingIntervalInSeconds,
    required this.resourceGroupName,
    this.tags,
    this.tapRulesUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'configurationType': configurationType,
      'dynamicMatchConfigurations': ?pulumi.Input.mapOptionalInputValue<List<CommonDynamicMatchConfiguration>, List<Map<String, dynamic>>>(dynamicMatchConfigurations, (value) => pulumi.Input.encodeList<CommonDynamicMatchConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'matchConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkTapRuleMatchConfiguration>, List<Map<String, dynamic>>>(matchConfigurations, (value) => pulumi.Input.encodeList<NetworkTapRuleMatchConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkTapRuleName': ?networkTapRuleName,
      'pollingIntervalInSeconds': ?pollingIntervalInSeconds,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'tapRulesUrl': ?tapRulesUrl,
    };
  }

  factory NetworkTapRuleArgs.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleArgs(
      annotation: map['annotation'] == null ? null : (map['annotation'] as String).input(),
      configurationType: (map['configurationType'] as String).input(),
      dynamicMatchConfigurations: map['dynamicMatchConfigurations'] == null ? null : (pulumi.Input.decodeList<CommonDynamicMatchConfiguration>(map['dynamicMatchConfigurations'], (value) => CommonDynamicMatchConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      matchConfigurations: map['matchConfigurations'] == null ? null : (pulumi.Input.decodeList<NetworkTapRuleMatchConfiguration>(map['matchConfigurations'], (value) => NetworkTapRuleMatchConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkTapRuleName: map['networkTapRuleName'] == null ? null : (map['networkTapRuleName'] as String).input(),
      pollingIntervalInSeconds: map['pollingIntervalInSeconds'] == null ? null : (map['pollingIntervalInSeconds'] as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tapRulesUrl: map['tapRulesUrl'] == null ? null : (map['tapRulesUrl'] as String).input(),
    );
  }
}

