// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'frontend_ipconfiguration.dart';
import 'private_link_service_ip_configuration.dart';
import 'private_link_service_properties_auto_approval.dart';
import 'private_link_service_properties_visibility.dart';

/// {@template pulumi_network_private_link_service_args_doc}
/// The set of arguments for PrivateLinkService.
/// {@endtemplate}
/// {@macro pulumi_network_private_link_service_args_doc}
class PrivateLinkServiceArgs {
  /// The auto-approval list of the private link service.
  final pulumi.Input<PrivateLinkServicePropertiesAutoApproval>? autoApproval;
  /// The destination IP address of the private link service.
  final pulumi.Input<String>? destinationIPAddress;
  /// Whether the private link service is enabled for proxy protocol or not.
  final pulumi.Input<bool>? enableProxyProtocol;
  /// The extended location of the load balancer.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The list of Fqdn.
  final pulumi.Input<List<String>>? fqdns;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// An array of private link service IP configurations.
  final pulumi.Input<List<PrivateLinkServiceIpConfiguration>>? ipConfigurations;
  /// An array of references to the load balancer IP configurations.
  final pulumi.Input<List<FrontendIPConfiguration>>? loadBalancerFrontendIpConfigurations;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the private link service.
  final pulumi.Input<String>? serviceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The visibility list of the private link service.
  final pulumi.Input<PrivateLinkServicePropertiesVisibility>? visibility;

  /// Creates a new [PrivateLinkServiceArgs].
  /// [autoApproval] The auto-approval list of the private link service.
  /// [destinationIPAddress] The destination IP address of the private link service.
  /// [enableProxyProtocol] Whether the private link service is enabled for proxy protocol or not.
  /// [extendedLocation] The extended location of the load balancer.
  /// [fqdns] The list of Fqdn.
  /// [id] Resource ID.
  /// [ipConfigurations] An array of private link service IP configurations.
  /// [loadBalancerFrontendIpConfigurations] An array of references to the load balancer IP configurations.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceName] The name of the private link service.
  /// [tags] Resource tags.
  /// [visibility] The visibility list of the private link service.
  PrivateLinkServiceArgs({
    PrivateLinkServicePropertiesAutoApproval? autoApproval,
    String? destinationIPAddress,
    bool? enableProxyProtocol,
    ExtendedLocation? extendedLocation,
    List<String>? fqdns,
    String? id,
    List<PrivateLinkServiceIpConfiguration>? ipConfigurations,
    List<FrontendIPConfiguration>? loadBalancerFrontendIpConfigurations,
    String? location,
    required String resourceGroupName,
    String? serviceName,
    Map<String, String>? tags,
    PrivateLinkServicePropertiesVisibility? visibility,
  }) :
      autoApproval = pulumi.Input.asOptionalInput<PrivateLinkServicePropertiesAutoApproval>(autoApproval),
      destinationIPAddress = pulumi.Input.asOptionalInput<String>(destinationIPAddress),
      enableProxyProtocol = pulumi.Input.asOptionalInput<bool>(enableProxyProtocol),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      fqdns = pulumi.Input.asOptionalInput<List<String>>(fqdns),
      id = pulumi.Input.asOptionalInput<String>(id),
      ipConfigurations = pulumi.Input.asOptionalInput<List<PrivateLinkServiceIpConfiguration>>(ipConfigurations),
      loadBalancerFrontendIpConfigurations = pulumi.Input.asOptionalInput<List<FrontendIPConfiguration>>(loadBalancerFrontendIpConfigurations),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      visibility = pulumi.Input.asOptionalInput<PrivateLinkServicePropertiesVisibility>(visibility);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApproval': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServicePropertiesAutoApproval, Map<String, dynamic>>(autoApproval, (value) => value.toMap()),
      'destinationIPAddress': ?destinationIPAddress,
      'enableProxyProtocol': ?enableProxyProtocol,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'fqdns': ?fqdns,
      'id': ?id,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<PrivateLinkServiceIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerFrontendIpConfigurations': ?pulumi.Input.mapOptionalInputValue<List<FrontendIPConfiguration>, List<Map<String, dynamic>>>(loadBalancerFrontendIpConfigurations, (value) => pulumi.Input.encodeList<FrontendIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'serviceName': ?serviceName,
      'tags': ?tags,
      'visibility': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServicePropertiesVisibility, Map<String, dynamic>>(visibility, (value) => value.toMap()),
    };
  }

  factory PrivateLinkServiceArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceArgs(
      autoApproval: map['autoApproval'] == null ? null : PrivateLinkServicePropertiesAutoApproval.fromMap((map['autoApproval'] as Map).cast<String, dynamic>()),
      destinationIPAddress: map['destinationIPAddress'] == null ? null : map['destinationIPAddress'] as String,
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : map['enableProxyProtocol'] as bool,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      fqdns: map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<PrivateLinkServiceIpConfiguration>(map['ipConfigurations'], (value) => PrivateLinkServiceIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerFrontendIpConfigurations: map['loadBalancerFrontendIpConfigurations'] == null ? null : pulumi.Input.decodeList<FrontendIPConfiguration>(map['loadBalancerFrontendIpConfigurations'], (value) => FrontendIPConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      visibility: map['visibility'] == null ? null : PrivateLinkServicePropertiesVisibility.fromMap((map['visibility'] as Map).cast<String, dynamic>()),
    );
  }
}

