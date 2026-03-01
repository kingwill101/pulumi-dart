// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_settings_response.dart';
import 'extended_location_response.dart';
import 'ip_tag_response.dart';
import 'ipconfiguration_response.dart';
import 'nat_gateway_response.dart';
import 'public_ipaddress_dns_settings_response.dart';
import 'public_ipaddress_sku_response.dart';
import 'sub_resource_response.dart';

/// Public IP address resource.
class PublicIPAddressResponse {
  /// The DDoS protection custom policy associated with the public IP address.
  final DdosSettingsResponse? ddosSettings;
  /// Specify what happens to the public IP address when the VM using it is deleted
  final String? deleteOption;
  /// The FQDN of the DNS record associated with the public IP address.
  final PublicIPAddressDnsSettingsResponse? dnsSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The extended location of the public ip address.
  final ExtendedLocationResponse? extendedLocation;
  /// Resource ID.
  final String? id;
  /// The idle timeout of the public IP address.
  final int? idleTimeoutInMinutes;
  /// The IP address associated with the public IP address resource.
  final String? ipAddress;
  /// The IP configuration associated with the public IP address.
  final IPConfigurationResponse ipConfiguration;
  /// The list of tags associated with the public IP address.
  final List<IpTagResponse>? ipTags;
  /// The linked public IP address of the public IP address resource.
  final PublicIPAddressResponse? linkedPublicIPAddress;
  /// Resource location.
  final String? location;
  /// Migration phase of Public IP Address.
  final String? migrationPhase;
  /// Resource name.
  final String name;
  /// The NatGateway for the Public IP address.
  final NatGatewayResponse? natGateway;
  /// The provisioning state of the public IP address resource.
  final String provisioningState;
  /// The public IP address version.
  final String? publicIPAddressVersion;
  /// The public IP address allocation method.
  final String? publicIPAllocationMethod;
  /// The Public IP Prefix this Public IP Address should be allocated from.
  final SubResourceResponse? publicIPPrefix;
  /// The resource GUID property of the public IP address resource.
  final String resourceGuid;
  /// The service public IP address of the public IP address resource.
  final PublicIPAddressResponse? servicePublicIPAddress;
  /// The public IP address SKU.
  final PublicIPAddressSkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final List<String>? zones;

  /// Creates a new [PublicIPAddressResponse].
  /// [ddosSettings] The DDoS protection custom policy associated with the public IP address.
  /// [deleteOption] Specify what happens to the public IP address when the VM using it is deleted
  /// [dnsSettings] The FQDN of the DNS record associated with the public IP address.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [extendedLocation] The extended location of the public ip address.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The idle timeout of the public IP address.
  /// [ipAddress] The IP address associated with the public IP address resource.
  /// [ipConfiguration] The IP configuration associated with the public IP address.
  /// [ipTags] The list of tags associated with the public IP address.
  /// [linkedPublicIPAddress] The linked public IP address of the public IP address resource.
  /// [location] Resource location.
  /// [migrationPhase] Migration phase of Public IP Address.
  /// [name] Resource name.
  /// [natGateway] The NatGateway for the Public IP address.
  /// [provisioningState] The provisioning state of the public IP address resource.
  /// [publicIPAddressVersion] The public IP address version.
  /// [publicIPAllocationMethod] The public IP address allocation method.
  /// [publicIPPrefix] The Public IP Prefix this Public IP Address should be allocated from.
  /// [resourceGuid] The resource GUID property of the public IP address resource.
  /// [servicePublicIPAddress] The service public IP address of the public IP address resource.
  /// [sku] The public IP address SKU.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  PublicIPAddressResponse({
    this.ddosSettings,
    this.deleteOption,
    this.dnsSettings,
    required this.etag,
    this.extendedLocation,
    this.id,
    this.idleTimeoutInMinutes,
    this.ipAddress,
    required this.ipConfiguration,
    this.ipTags,
    this.linkedPublicIPAddress,
    this.location,
    this.migrationPhase,
    required this.name,
    this.natGateway,
    required this.provisioningState,
    this.publicIPAddressVersion,
    this.publicIPAllocationMethod,
    this.publicIPPrefix,
    required this.resourceGuid,
    this.servicePublicIPAddress,
    this.sku,
    this.tags,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosSettings': ?ddosSettings == null ? null : ddosSettings!.toMap(),
      'deleteOption': ?deleteOption,
      'dnsSettings': ?dnsSettings == null ? null : dnsSettings!.toMap(),
      'etag': etag,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipAddress': ?ipAddress,
      'ipConfiguration': ipConfiguration.toMap(),
      'ipTags': ?ipTags == null ? null : pulumi.Input.encodeList<IpTagResponse, Map<String, dynamic>>(ipTags!, (value) => value.toMap()),
      'linkedPublicIPAddress': ?linkedPublicIPAddress == null ? null : linkedPublicIPAddress!.toMap(),
      'location': ?location,
      'migrationPhase': ?migrationPhase,
      'name': name,
      'natGateway': ?natGateway == null ? null : natGateway!.toMap(),
      'provisioningState': provisioningState,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?publicIPPrefix == null ? null : publicIPPrefix!.toMap(),
      'resourceGuid': resourceGuid,
      'servicePublicIPAddress': ?servicePublicIPAddress == null ? null : servicePublicIPAddress!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory PublicIPAddressResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressResponse(
      ddosSettings: map['ddosSettings'] == null ? null : DdosSettingsResponse.fromMap((map['ddosSettings'] as Map).cast<String, dynamic>()),
      deleteOption: map['deleteOption'] == null ? null : map['deleteOption'] as String,
      dnsSettings: map['dnsSettings'] == null ? null : PublicIPAddressDnsSettingsResponse.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipConfiguration: IPConfigurationResponse.fromMap((map['ipConfiguration'] as Map).cast<String, dynamic>()),
      ipTags: map['ipTags'] == null ? null : pulumi.Input.decodeList<IpTagResponse>(map['ipTags'], (value) => IpTagResponse.fromMap((value as Map).cast<String, dynamic>())),
      linkedPublicIPAddress: map['linkedPublicIPAddress'] == null ? null : PublicIPAddressResponse.fromMap((map['linkedPublicIPAddress'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      migrationPhase: map['migrationPhase'] == null ? null : map['migrationPhase'] as String,
      name: map['name'] as String,
      natGateway: map['natGateway'] == null ? null : NatGatewayResponse.fromMap((map['natGateway'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : map['publicIPAddressVersion'] as String,
      publicIPAllocationMethod: map['publicIPAllocationMethod'] == null ? null : map['publicIPAllocationMethod'] as String,
      publicIPPrefix: map['publicIPPrefix'] == null ? null : SubResourceResponse.fromMap((map['publicIPPrefix'] as Map).cast<String, dynamic>()),
      resourceGuid: map['resourceGuid'] as String,
      servicePublicIPAddress: map['servicePublicIPAddress'] == null ? null : PublicIPAddressResponse.fromMap((map['servicePublicIPAddress'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : PublicIPAddressSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

