// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_route_policy.dart';
import 'external_network_properties_option_aproperties.dart';
import 'import_route_policy.dart';
import 'l3_option_bproperties.dart';

/// {@template pulumi_managednetworkfabric_external_network_args_doc}
/// The set of arguments for ExternalNetwork.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_external_network_args_doc}
class ExternalNetworkArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Export Route Policy either IPv4 or IPv6.
  final pulumi.Input<ExportRoutePolicy>? exportRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  final pulumi.Input<String>? exportRoutePolicyId;
  /// Name of the External Network.
  final pulumi.Input<String>? externalNetworkName;
  /// Import Route Policy either IPv4 or IPv6.
  final pulumi.Input<ImportRoutePolicy>? importRoutePolicy;
  /// ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  final pulumi.Input<String>? importRoutePolicyId;
  /// Name of the L3 Isolation Domain.
  final pulumi.Input<String> l3IsolationDomainName;
  /// ARM Resource ID of the networkToNetworkInterconnectId of the ExternalNetwork resource.
  final pulumi.Input<String>? networkToNetworkInterconnectId;
  /// option A properties object
  final pulumi.Input<ExternalNetworkPropertiesOptionAProperties>? optionAProperties;
  /// option B properties object
  final pulumi.Input<L3OptionBProperties>? optionBProperties;
  /// Peering option list.
  final pulumi.Input<String> peeringOption;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ExternalNetworkArgs].
  /// [annotation] Switch configuration description.
  /// [exportRoutePolicy] Export Route Policy either IPv4 or IPv6.
  /// [exportRoutePolicyId] ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  /// [externalNetworkName] Name of the External Network.
  /// [importRoutePolicy] Import Route Policy either IPv4 or IPv6.
  /// [importRoutePolicyId] ARM Resource ID of the RoutePolicy. This is used for the backward compatibility.
  /// [l3IsolationDomainName] Name of the L3 Isolation Domain.
  /// [networkToNetworkInterconnectId] ARM Resource ID of the networkToNetworkInterconnectId of the ExternalNetwork resource.
  /// [optionAProperties] option A properties object
  /// [optionBProperties] option B properties object
  /// [peeringOption] Peering option list.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ExternalNetworkArgs({
    this.annotation,
    this.exportRoutePolicy,
    this.exportRoutePolicyId,
    this.externalNetworkName,
    this.importRoutePolicy,
    this.importRoutePolicyId,
    required this.l3IsolationDomainName,
    this.networkToNetworkInterconnectId,
    this.optionAProperties,
    this.optionBProperties,
    required this.peeringOption,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'exportRoutePolicy': ?pulumi.Input.mapOptionalInputValue<ExportRoutePolicy, Map<String, dynamic>>(exportRoutePolicy, (value) => value.toMap()),
      'exportRoutePolicyId': ?exportRoutePolicyId,
      'externalNetworkName': ?externalNetworkName,
      'importRoutePolicy': ?pulumi.Input.mapOptionalInputValue<ImportRoutePolicy, Map<String, dynamic>>(importRoutePolicy, (value) => value.toMap()),
      'importRoutePolicyId': ?importRoutePolicyId,
      'l3IsolationDomainName': l3IsolationDomainName,
      'networkToNetworkInterconnectId': ?networkToNetworkInterconnectId,
      'optionAProperties': ?pulumi.Input.mapOptionalInputValue<ExternalNetworkPropertiesOptionAProperties, Map<String, dynamic>>(optionAProperties, (value) => value.toMap()),
      'optionBProperties': ?pulumi.Input.mapOptionalInputValue<L3OptionBProperties, Map<String, dynamic>>(optionBProperties, (value) => value.toMap()),
      'peeringOption': peeringOption,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ExternalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return ExternalNetworkArgs(
      annotation: map['annotation'] == null ? null : (map['annotation']! as String).input(),
      exportRoutePolicy: map['exportRoutePolicy'] == null ? null : (ExportRoutePolicy.fromMap((map['exportRoutePolicy']! as Map).cast<String, dynamic>())).input(),
      exportRoutePolicyId: map['exportRoutePolicyId'] == null ? null : (map['exportRoutePolicyId']! as String).input(),
      externalNetworkName: map['externalNetworkName'] == null ? null : (map['externalNetworkName']! as String).input(),
      importRoutePolicy: map['importRoutePolicy'] == null ? null : (ImportRoutePolicy.fromMap((map['importRoutePolicy']! as Map).cast<String, dynamic>())).input(),
      importRoutePolicyId: map['importRoutePolicyId'] == null ? null : (map['importRoutePolicyId']! as String).input(),
      l3IsolationDomainName: (map['l3IsolationDomainName'] as String).input(),
      networkToNetworkInterconnectId: map['networkToNetworkInterconnectId'] == null ? null : (map['networkToNetworkInterconnectId']! as String).input(),
      optionAProperties: map['optionAProperties'] == null ? null : (ExternalNetworkPropertiesOptionAProperties.fromMap((map['optionAProperties']! as Map).cast<String, dynamic>())).input(),
      optionBProperties: map['optionBProperties'] == null ? null : (L3OptionBProperties.fromMap((map['optionBProperties']! as Map).cast<String, dynamic>())).input(),
      peeringOption: (map['peeringOption'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

