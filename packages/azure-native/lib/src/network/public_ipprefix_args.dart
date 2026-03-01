// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'ip_tag.dart';
import 'nat_gateway_network.dart';
import 'public_ipprefix_sku.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_public_ipprefix_args_doc}
/// The set of arguments for PublicIPPrefix.
/// {@endtemplate}
/// {@macro pulumi_network_public_ipprefix_args_doc}
class PublicIPPrefixArgs {
  /// The customIpPrefix that this prefix is associated with.
  final pulumi.Input<SubResource>? customIPPrefix;
  /// The extended location of the public ip address.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The list of tags associated with the public IP prefix.
  final pulumi.Input<List<IpTag>>? ipTags;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// NatGateway of Public IP Prefix.
  final pulumi.Input<NatGatewayNetwork>? natGateway;
  /// The Length of the Public IP Prefix.
  final pulumi.Input<int>? prefixLength;
  /// The public IP address version.
  final pulumi.Input<String>? publicIPAddressVersion;
  /// The name of the public IP prefix.
  final pulumi.Input<String>? publicIpPrefixName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The public IP prefix SKU.
  final pulumi.Input<PublicIPPrefixSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PublicIPPrefixArgs].
  /// [customIPPrefix] The customIpPrefix that this prefix is associated with.
  /// [extendedLocation] The extended location of the public ip address.
  /// [id] Resource ID.
  /// [ipTags] The list of tags associated with the public IP prefix.
  /// [location] Resource location.
  /// [natGateway] NatGateway of Public IP Prefix.
  /// [prefixLength] The Length of the Public IP Prefix.
  /// [publicIPAddressVersion] The public IP address version.
  /// [publicIpPrefixName] The name of the public IP prefix.
  /// [resourceGroupName] The name of the resource group.
  /// [sku] The public IP prefix SKU.
  /// [tags] Resource tags.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  PublicIPPrefixArgs({
    SubResource? customIPPrefix,
    ExtendedLocation? extendedLocation,
    String? id,
    List<IpTag>? ipTags,
    String? location,
    NatGatewayNetwork? natGateway,
    int? prefixLength,
    String? publicIPAddressVersion,
    String? publicIpPrefixName,
    required String resourceGroupName,
    PublicIPPrefixSku? sku,
    Map<String, String>? tags,
    List<String>? zones,
  }) :
      customIPPrefix = pulumi.Input.asOptionalInput<SubResource>(customIPPrefix),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      id = pulumi.Input.asOptionalInput<String>(id),
      ipTags = pulumi.Input.asOptionalInput<List<IpTag>>(ipTags),
      location = pulumi.Input.asOptionalInput<String>(location),
      natGateway = pulumi.Input.asOptionalInput<NatGatewayNetwork>(natGateway),
      prefixLength = pulumi.Input.asOptionalInput<int>(prefixLength),
      publicIPAddressVersion = pulumi.Input.asOptionalInput<String>(publicIPAddressVersion),
      publicIpPrefixName = pulumi.Input.asOptionalInput<String>(publicIpPrefixName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<PublicIPPrefixSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(customIPPrefix, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'id': ?id,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<IpTag>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<IpTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'natGateway': ?natGateway,
      'prefixLength': ?prefixLength,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIpPrefixName': ?publicIpPrefixName,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPPrefixSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory PublicIPPrefixArgs.fromMap(Map<String, dynamic> map) {
    return PublicIPPrefixArgs(
      customIPPrefix: map['customIPPrefix'] == null ? null : SubResource.fromMap((map['customIPPrefix'] as Map).cast<String, dynamic>()),
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      ipTags: map['ipTags'] == null ? null : pulumi.Input.decodeList<IpTag>(map['ipTags'], (value) => IpTag.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      natGateway: map['natGateway'] == null ? null : map['natGateway'] as NatGatewayNetwork,
      prefixLength: map['prefixLength'] == null ? null : map['prefixLength'] as int,
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : map['publicIPAddressVersion'] as String,
      publicIpPrefixName: map['publicIpPrefixName'] == null ? null : map['publicIpPrefixName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : PublicIPPrefixSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

