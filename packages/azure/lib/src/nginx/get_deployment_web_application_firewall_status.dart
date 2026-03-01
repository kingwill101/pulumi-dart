// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_web_application_firewall_status_attack_signatures_package.dart';
import 'get_deployment_web_application_firewall_status_bot_signatures_package.dart';
import 'get_deployment_web_application_firewall_status_component_version.dart';
import 'get_deployment_web_application_firewall_status_threat_campaigns_package.dart';

class GetDeploymentWebApplicationFirewallStatus {
  /// Indicates the version of the attack signatures package used by NGINX App Protect.
  final List<GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage> attackSignaturesPackages;
  /// Indicates the version of the bot signatures package used by NGINX App Protect.
  final List<GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage> botSignaturesPackages;
  /// Indicates the version of the WAF Engine and Nginx WAF Module used by NGINX App Protect.
  final List<GetDeploymentWebApplicationFirewallStatusComponentVersion> componentVersions;
  /// Indicates the version of the threat campaigns package used by NGINX App Protect.
  final List<GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage> threatCampaignsPackages;

  /// Creates a new [GetDeploymentWebApplicationFirewallStatus].
  /// [attackSignaturesPackages] Indicates the version of the attack signatures package used by NGINX App Protect.
  /// [botSignaturesPackages] Indicates the version of the bot signatures package used by NGINX App Protect.
  /// [componentVersions] Indicates the version of the WAF Engine and Nginx WAF Module used by NGINX App Protect.
  /// [threatCampaignsPackages] Indicates the version of the threat campaigns package used by NGINX App Protect.
  GetDeploymentWebApplicationFirewallStatus({
    required this.attackSignaturesPackages,
    required this.botSignaturesPackages,
    required this.componentVersions,
    required this.threatCampaignsPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackSignaturesPackages': pulumi.Input.encodeList<GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage, Map<String, dynamic>>(attackSignaturesPackages, (value) => value.toMap()),
      'botSignaturesPackages': pulumi.Input.encodeList<GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage, Map<String, dynamic>>(botSignaturesPackages, (value) => value.toMap()),
      'componentVersions': pulumi.Input.encodeList<GetDeploymentWebApplicationFirewallStatusComponentVersion, Map<String, dynamic>>(componentVersions, (value) => value.toMap()),
      'threatCampaignsPackages': pulumi.Input.encodeList<GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage, Map<String, dynamic>>(threatCampaignsPackages, (value) => value.toMap()),
    };
  }

  factory GetDeploymentWebApplicationFirewallStatus.fromMap(Map<String, dynamic> map) {
    return GetDeploymentWebApplicationFirewallStatus(
      attackSignaturesPackages: pulumi.Input.decodeList<GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage>(map['attackSignaturesPackages'], (value) => GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage.fromMap((value as Map).cast<String, dynamic>())),
      botSignaturesPackages: pulumi.Input.decodeList<GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage>(map['botSignaturesPackages'], (value) => GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage.fromMap((value as Map).cast<String, dynamic>())),
      componentVersions: pulumi.Input.decodeList<GetDeploymentWebApplicationFirewallStatusComponentVersion>(map['componentVersions'], (value) => GetDeploymentWebApplicationFirewallStatusComponentVersion.fromMap((value as Map).cast<String, dynamic>())),
      threatCampaignsPackages: pulumi.Input.decodeList<GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage>(map['threatCampaignsPackages'], (value) => GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

