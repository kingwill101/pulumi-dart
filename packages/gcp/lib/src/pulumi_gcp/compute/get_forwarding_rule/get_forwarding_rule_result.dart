// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_forwarding_rule_service_directory_registration/get_forwarding_rule_service_directory_registration.dart';

/// Result data returned by getForwardingRule.
class GetForwardingRuleResult {
  final bool allPorts;
  final bool allowGlobalAccess;
  final bool allowPscGlobalAccess;
  final String backendService;
  final String baseForwardingRule;
  final String creationTimestamp;
  final String description;
  final Map<String, String> effectiveLabels;
  final int forwardingRuleId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipAddress;
  final String ipCollection;
  final String ipProtocol;
  final String ipVersion;
  final bool isMirroringCollector;
  final String labelFingerprint;
  final Map<String, String> labels;
  final String loadBalancingScheme;
  final String name;
  final String network;
  final String networkTier;
  final bool noAutomateDnsZone;
  final String portRange;
  final List<String> ports;
  final String? project;
  final String pscConnectionId;
  final String pscConnectionStatus;
  final Map<String, String> pulumiLabels;
  final bool recreateClosedPsc;
  final String? region;
  final String selfLink;
  final List<GetForwardingRuleServiceDirectoryRegistration>
      serviceDirectoryRegistrations;
  final String serviceLabel;
  final String serviceName;
  final List<String> sourceIpRanges;
  final String subnetwork;
  final String target;

  GetForwardingRuleResult({
    required this.allPorts,
    required this.allowGlobalAccess,
    required this.allowPscGlobalAccess,
    required this.backendService,
    required this.baseForwardingRule,
    required this.creationTimestamp,
    required this.description,
    required this.effectiveLabels,
    required this.forwardingRuleId,
    required this.id,
    required this.ipAddress,
    required this.ipCollection,
    required this.ipProtocol,
    required this.ipVersion,
    required this.isMirroringCollector,
    required this.labelFingerprint,
    required this.labels,
    required this.loadBalancingScheme,
    required this.name,
    required this.network,
    required this.networkTier,
    required this.noAutomateDnsZone,
    required this.portRange,
    required this.ports,
    this.project,
    required this.pscConnectionId,
    required this.pscConnectionStatus,
    required this.pulumiLabels,
    required this.recreateClosedPsc,
    this.region,
    required this.selfLink,
    required this.serviceDirectoryRegistrations,
    required this.serviceLabel,
    required this.serviceName,
    required this.sourceIpRanges,
    required this.subnetwork,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allPorts'] = allPorts;
    map['allowGlobalAccess'] = allowGlobalAccess;
    map['allowPscGlobalAccess'] = allowPscGlobalAccess;
    map['backendService'] = backendService;
    map['baseForwardingRule'] = baseForwardingRule;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['effectiveLabels'] = effectiveLabels;
    map['forwardingRuleId'] = forwardingRuleId;
    map['id'] = id;
    map['ipAddress'] = ipAddress;
    map['ipCollection'] = ipCollection;
    map['ipProtocol'] = ipProtocol;
    map['ipVersion'] = ipVersion;
    map['isMirroringCollector'] = isMirroringCollector;
    map['labelFingerprint'] = labelFingerprint;
    map['labels'] = labels;
    map['loadBalancingScheme'] = loadBalancingScheme;
    map['name'] = name;
    map['network'] = network;
    map['networkTier'] = networkTier;
    map['noAutomateDnsZone'] = noAutomateDnsZone;
    map['portRange'] = portRange;
    map['ports'] = ports;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pscConnectionId'] = pscConnectionId;
    map['pscConnectionStatus'] = pscConnectionStatus;
    map['pulumiLabels'] = pulumiLabels;
    map['recreateClosedPsc'] = recreateClosedPsc;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['selfLink'] = selfLink;
    map['serviceDirectoryRegistrations'] = pulumi.Input.encodeList<
            GetForwardingRuleServiceDirectoryRegistration,
            Map<String, dynamic>>(
        serviceDirectoryRegistrations, (value) => value.toMap());
    map['serviceLabel'] = serviceLabel;
    map['serviceName'] = serviceName;
    map['sourceIpRanges'] = sourceIpRanges;
    map['subnetwork'] = subnetwork;
    map['target'] = target;
    return map;
  }

  factory GetForwardingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleResult(
      allPorts: map['allPorts'] as bool,
      allowGlobalAccess: map['allowGlobalAccess'] as bool,
      allowPscGlobalAccess: map['allowPscGlobalAccess'] as bool,
      backendService: map['backendService'] as String,
      baseForwardingRule: map['baseForwardingRule'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      forwardingRuleId: map['forwardingRuleId'] as int,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      ipCollection: map['ipCollection'] as String,
      ipProtocol: map['ipProtocol'] as String,
      ipVersion: map['ipVersion'] as String,
      isMirroringCollector: map['isMirroringCollector'] as bool,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      loadBalancingScheme: map['loadBalancingScheme'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      networkTier: map['networkTier'] as String,
      noAutomateDnsZone: map['noAutomateDnsZone'] as bool,
      portRange: map['portRange'] as String,
      ports: (map['ports'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
      pscConnectionStatus: map['pscConnectionStatus'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      recreateClosedPsc: map['recreateClosedPsc'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      selfLink: map['selfLink'] as String,
      serviceDirectoryRegistrations: pulumi.Input.decodeList<
              GetForwardingRuleServiceDirectoryRegistration>(
          map['serviceDirectoryRegistrations'],
          (value) => GetForwardingRuleServiceDirectoryRegistration.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceLabel: map['serviceLabel'] as String,
      serviceName: map['serviceName'] as String,
      sourceIpRanges: (map['sourceIpRanges'] as List).cast<String>(),
      subnetwork: map['subnetwork'] as String,
      target: map['target'] as String,
    );
  }
}
