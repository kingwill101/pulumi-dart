// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_web_application_firewall_status_attack_signatures_package.dart';
import 'deployment_web_application_firewall_status_bot_signatures_package.dart';
import 'deployment_web_application_firewall_status_component_version.dart';
import 'deployment_web_application_firewall_status_threat_campaigns_package.dart';

class DeploymentWebApplicationFirewallStatus {
  /// One or more `attack_signatures_package` blocks as defined below.
  final List<DeploymentWebApplicationFirewallStatusAttackSignaturesPackage>? attackSignaturesPackages;
  /// One or more `bot_signatures_package` blocks as defined below.
  final List<DeploymentWebApplicationFirewallStatusBotSignaturesPackage>? botSignaturesPackages;
  /// One or more `component_versions` blocks as defined below.
  final List<DeploymentWebApplicationFirewallStatusComponentVersion>? componentVersions;
  /// One or more `threat_campaigns_package` blocks as defined below.
  final List<DeploymentWebApplicationFirewallStatusThreatCampaignsPackage>? threatCampaignsPackages;

  /// Creates a new [DeploymentWebApplicationFirewallStatus].
  /// [attackSignaturesPackages] One or more `attack_signatures_package` blocks as defined below.
  /// [botSignaturesPackages] One or more `bot_signatures_package` blocks as defined below.
  /// [componentVersions] One or more `component_versions` blocks as defined below.
  /// [threatCampaignsPackages] One or more `threat_campaigns_package` blocks as defined below.
  DeploymentWebApplicationFirewallStatus({
    this.attackSignaturesPackages,
    this.botSignaturesPackages,
    this.componentVersions,
    this.threatCampaignsPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackSignaturesPackages': ?attackSignaturesPackages == null ? null : pulumi.Input.encodeList<DeploymentWebApplicationFirewallStatusAttackSignaturesPackage, Map<String, dynamic>>(attackSignaturesPackages!, (value) => value.toMap()),
      'botSignaturesPackages': ?botSignaturesPackages == null ? null : pulumi.Input.encodeList<DeploymentWebApplicationFirewallStatusBotSignaturesPackage, Map<String, dynamic>>(botSignaturesPackages!, (value) => value.toMap()),
      'componentVersions': ?componentVersions == null ? null : pulumi.Input.encodeList<DeploymentWebApplicationFirewallStatusComponentVersion, Map<String, dynamic>>(componentVersions!, (value) => value.toMap()),
      'threatCampaignsPackages': ?threatCampaignsPackages == null ? null : pulumi.Input.encodeList<DeploymentWebApplicationFirewallStatusThreatCampaignsPackage, Map<String, dynamic>>(threatCampaignsPackages!, (value) => value.toMap()),
    };
  }

  factory DeploymentWebApplicationFirewallStatus.fromMap(Map<String, dynamic> map) {
    return DeploymentWebApplicationFirewallStatus(
      attackSignaturesPackages: map['attackSignaturesPackages'] == null ? null : pulumi.Input.decodeList<DeploymentWebApplicationFirewallStatusAttackSignaturesPackage>(map['attackSignaturesPackages'], (value) => DeploymentWebApplicationFirewallStatusAttackSignaturesPackage.fromMap((value as Map).cast<String, dynamic>())),
      botSignaturesPackages: map['botSignaturesPackages'] == null ? null : pulumi.Input.decodeList<DeploymentWebApplicationFirewallStatusBotSignaturesPackage>(map['botSignaturesPackages'], (value) => DeploymentWebApplicationFirewallStatusBotSignaturesPackage.fromMap((value as Map).cast<String, dynamic>())),
      componentVersions: map['componentVersions'] == null ? null : pulumi.Input.decodeList<DeploymentWebApplicationFirewallStatusComponentVersion>(map['componentVersions'], (value) => DeploymentWebApplicationFirewallStatusComponentVersion.fromMap((value as Map).cast<String, dynamic>())),
      threatCampaignsPackages: map['threatCampaignsPackages'] == null ? null : pulumi.Input.decodeList<DeploymentWebApplicationFirewallStatusThreatCampaignsPackage>(map['threatCampaignsPackages'], (value) => DeploymentWebApplicationFirewallStatusThreatCampaignsPackage.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

