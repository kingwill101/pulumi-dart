// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'frontend_ipconfiguration.dart';
import 'private_link_service_ip_configuration.dart';
import 'private_link_service_properties_auto_approval.dart';
import 'private_link_service_properties_visibility.dart';

/// Private link service resource.
class PrivateLinkService {
  /// The auto-approval list of the private link service.
  final PrivateLinkServicePropertiesAutoApproval? autoApproval;
  /// The destination IP address of the private link service.
  final String? destinationIPAddress;
  /// Whether the private link service is enabled for proxy protocol or not.
  final bool? enableProxyProtocol;
  /// The extended location of the load balancer.
  final ExtendedLocation? extendedLocation;
  /// The list of Fqdn.
  final List<String>? fqdns;
  /// Resource ID.
  final String? id;
  /// An array of private link service IP configurations.
  final List<PrivateLinkServiceIpConfiguration>? ipConfigurations;
  /// An array of references to the load balancer IP configurations.
  final List<FrontendIPConfiguration>? loadBalancerFrontendIpConfigurations;
  /// Resource location.
  final String? location;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The visibility list of the private link service.
  final PrivateLinkServicePropertiesVisibility? visibility;

  /// Creates a new [PrivateLinkService].
  /// [autoApproval] The auto-approval list of the private link service.
  /// [destinationIPAddress] The destination IP address of the private link service.
  /// [enableProxyProtocol] Whether the private link service is enabled for proxy protocol or not.
  /// [extendedLocation] The extended location of the load balancer.
  /// [fqdns] The list of Fqdn.
  /// [id] Resource ID.
  /// [ipConfigurations] An array of private link service IP configurations.
  /// [loadBalancerFrontendIpConfigurations] An array of references to the load balancer IP configurations.
  /// [location] Resource location.
  /// [tags] Resource tags.
  /// [visibility] The visibility list of the private link service.
  PrivateLinkService({
    this.autoApproval,
    this.destinationIPAddress,
    this.enableProxyProtocol,
    this.extendedLocation,
    this.fqdns,
    this.id,
    this.ipConfigurations,
    this.loadBalancerFrontendIpConfigurations,
    this.location,
    this.tags,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApproval': ?autoApproval == null ? null : autoApproval!.toMap(),
      'destinationIPAddress': ?destinationIPAddress,
      'enableProxyProtocol': ?enableProxyProtocol,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'fqdns': ?fqdns,
      'id': ?id,
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<PrivateLinkServiceIpConfiguration, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
      'loadBalancerFrontendIpConfigurations': ?loadBalancerFrontendIpConfigurations == null ? null : pulumi.Input.encodeList<FrontendIPConfiguration, Map<String, dynamic>>(loadBalancerFrontendIpConfigurations!, (value) => value.toMap()),
      'location': ?location,
      'tags': ?tags,
      'visibility': ?visibility == null ? null : visibility!.toMap(),
    };
  }

  factory PrivateLinkService.fromMap(Map<String, dynamic> map) {
    return PrivateLinkService(
      autoApproval: map['autoApproval'] == null ? null : PrivateLinkServicePropertiesAutoApproval.fromMap((map['autoApproval'] as Map).cast<String, dynamic>()),
      destinationIPAddress: map['destinationIPAddress'] == null ? null : map['destinationIPAddress'] as String,
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : map['enableProxyProtocol'] as bool,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      fqdns: map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<PrivateLinkServiceIpConfiguration>(map['ipConfigurations'], (value) => PrivateLinkServiceIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerFrontendIpConfigurations: map['loadBalancerFrontendIpConfigurations'] == null ? null : pulumi.Input.decodeList<FrontendIPConfiguration>(map['loadBalancerFrontendIpConfigurations'], (value) => FrontendIPConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      visibility: map['visibility'] == null ? null : PrivateLinkServicePropertiesVisibility.fromMap((map['visibility'] as Map).cast<String, dynamic>()),
    );
  }
}

