// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_web_application_firewall_status.dart';

class DeploymentWebApplicationFirewall {
  /// Whether WAF is enabled/disabled for this NGINX Deployment.
  final bool activationStateEnabled;
  /// A `status` block as defined below.
  final List<DeploymentWebApplicationFirewallStatus>? statuses;

  /// Creates a new [DeploymentWebApplicationFirewall].
  /// [activationStateEnabled] Whether WAF is enabled/disabled for this NGINX Deployment.
  /// [statuses] A `status` block as defined below.
  DeploymentWebApplicationFirewall({
    required this.activationStateEnabled,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationStateEnabled': activationStateEnabled,
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<DeploymentWebApplicationFirewallStatus, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
    };
  }

  factory DeploymentWebApplicationFirewall.fromMap(Map<String, dynamic> map) {
    return DeploymentWebApplicationFirewall(
      activationStateEnabled: map['activationStateEnabled'] as bool,
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<DeploymentWebApplicationFirewallStatus>(map['statuses'], (value) => DeploymentWebApplicationFirewallStatus.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

