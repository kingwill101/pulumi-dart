// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_service_nat_ip_configuration.dart';

/// {@template pulumi_privatedns_link_service_link_service_args_doc}
/// The set of arguments for LinkService.
/// {@endtemplate}
/// {@macro pulumi_privatedns_link_service_link_service_args_doc}
class LinkServiceArgs {
  /// A list of Subscription UUID/GUID's that will be automatically be able to use this Private Link Service.
  final pulumi.Input<List<String>>? autoApprovalSubscriptionIds;
  /// The destination IP address of the Private Link Service.
  final pulumi.Input<String>? destinationIpAddress;
  /// Should the Private Link Service support the Proxy Protocol?
  final pulumi.Input<bool>? enableProxyProtocol;
  /// List of FQDNs allowed for the Private Link Service.
  final pulumi.Input<List<String>>? fqdns;
  /// A list of Frontend IP Configuration IDs from a Standard Load Balancer, where traffic from the Private Link Service should be routed. You can use Load Balancer Rules to direct this traffic to appropriate backend pools where your applications are running. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? loadBalancerFrontendIpConfigurationIds;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Private Link Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more (up to 8) `nat_ip_configuration` block as defined below.
  final pulumi.Input<List<LinkServiceNatIpConfiguration>> natIpConfigurations;
  /// The name of the Resource Group where the Private Link Service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of Subscription UUID/GUID's that will be able to see this Private Link Service.
  ///
  /// > **Note:** If no Subscription IDs are specified then Azure allows every Subscription to see this Private Link Service.
  final pulumi.Input<List<String>>? visibilitySubscriptionIds;

  /// Creates a new [LinkServiceArgs].
  /// [autoApprovalSubscriptionIds] A list of Subscription UUID/GUID's that will be automatically be able to use this Private Link Service.
  /// [destinationIpAddress] The destination IP address of the Private Link Service.
  /// [enableProxyProtocol] Should the Private Link Service support the Proxy Protocol?
  /// [fqdns] List of FQDNs allowed for the Private Link Service.
  /// [loadBalancerFrontendIpConfigurationIds] A list of Frontend IP Configuration IDs from a Standard Load Balancer, where traffic from the Private Link Service should be routed. You can use Load Balancer Rules to direct this traffic to appropriate backend pools where your applications are running. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Private Link Service. Changing this forces a new resource to be created.
  /// [natIpConfigurations] One or more (up to 8) `nat_ip_configuration` block as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Private Link Service should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [visibilitySubscriptionIds] A list of Subscription UUID/GUID's that will be able to see this Private Link Service.
  LinkServiceArgs({
    List<String>? autoApprovalSubscriptionIds,
    String? destinationIpAddress,
    bool? enableProxyProtocol,
    List<String>? fqdns,
    List<String>? loadBalancerFrontendIpConfigurationIds,
    String? location,
    String? name,
    required List<LinkServiceNatIpConfiguration> natIpConfigurations,
    required String resourceGroupName,
    Map<String, String>? tags,
    List<String>? visibilitySubscriptionIds,
  }) :
      autoApprovalSubscriptionIds = pulumi.Input.asOptionalInput<List<String>>(autoApprovalSubscriptionIds),
      destinationIpAddress = pulumi.Input.asOptionalInput<String>(destinationIpAddress),
      enableProxyProtocol = pulumi.Input.asOptionalInput<bool>(enableProxyProtocol),
      fqdns = pulumi.Input.asOptionalInput<List<String>>(fqdns),
      loadBalancerFrontendIpConfigurationIds = pulumi.Input.asOptionalInput<List<String>>(loadBalancerFrontendIpConfigurationIds),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      natIpConfigurations = pulumi.Input.asInput<List<LinkServiceNatIpConfiguration>>(natIpConfigurations),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      visibilitySubscriptionIds = pulumi.Input.asOptionalInput<List<String>>(visibilitySubscriptionIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApprovalSubscriptionIds': ?autoApprovalSubscriptionIds,
      'destinationIpAddress': ?destinationIpAddress,
      'enableProxyProtocol': ?enableProxyProtocol,
      'fqdns': ?fqdns,
      'loadBalancerFrontendIpConfigurationIds': ?loadBalancerFrontendIpConfigurationIds,
      'location': ?location,
      'name': ?name,
      'natIpConfigurations': pulumi.Input.mapInputValue<List<LinkServiceNatIpConfiguration>, List<Map<String, dynamic>>>(natIpConfigurations, (value) => pulumi.Input.encodeList<LinkServiceNatIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'visibilitySubscriptionIds': ?visibilitySubscriptionIds,
    };
  }

  factory LinkServiceArgs.fromMap(Map<String, dynamic> map) {
    return LinkServiceArgs(
      autoApprovalSubscriptionIds: map['autoApprovalSubscriptionIds'] == null ? null : (map['autoApprovalSubscriptionIds'] as List).cast<String>(),
      destinationIpAddress: map['destinationIpAddress'] == null ? null : map['destinationIpAddress'] as String,
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : map['enableProxyProtocol'] as bool,
      fqdns: map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      loadBalancerFrontendIpConfigurationIds: map['loadBalancerFrontendIpConfigurationIds'] == null ? null : (map['loadBalancerFrontendIpConfigurationIds'] as List).cast<String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      natIpConfigurations: pulumi.Input.decodeList<LinkServiceNatIpConfiguration>(map['natIpConfigurations'], (value) => LinkServiceNatIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      visibilitySubscriptionIds: map['visibilitySubscriptionIds'] == null ? null : (map['visibilitySubscriptionIds'] as List).cast<String>(),
    );
  }
}

