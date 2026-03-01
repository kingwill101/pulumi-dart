// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_host_ipconfiguration.dart';
import 'bastion_host_properties_format_network_acls.dart';
import 'sku.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_bastion_host_args_doc}
/// The set of arguments for BastionHost.
/// {@endtemplate}
/// {@macro pulumi_network_bastion_host_args_doc}
class BastionHostArgs {
  /// The name of the Bastion Host.
  final pulumi.Input<String>? bastionHostName;
  /// Enable/Disable Copy/Paste feature of the Bastion Host resource.
  final pulumi.Input<bool>? disableCopyPaste;
  /// FQDN for the endpoint on which bastion host is accessible.
  final pulumi.Input<String>? dnsName;
  /// Enable/Disable File Copy feature of the Bastion Host resource.
  final pulumi.Input<bool>? enableFileCopy;
  /// Enable/Disable IP Connect feature of the Bastion Host resource.
  final pulumi.Input<bool>? enableIpConnect;
  /// Enable/Disable Kerberos feature of the Bastion Host resource.
  final pulumi.Input<bool>? enableKerberos;
  /// Enable/Disable Private Only feature of the Bastion Host resource.
  final pulumi.Input<bool>? enablePrivateOnlyBastion;
  /// Enable/Disable Session Recording feature of the Bastion Host resource.
  final pulumi.Input<bool>? enableSessionRecording;
  /// Enable/Disable Shareable Link of the Bastion Host resource.
  final pulumi.Input<bool>? enableShareableLink;
  /// Enable/Disable Tunneling feature of the Bastion Host resource.
  final pulumi.Input<bool>? enableTunneling;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// IP configuration of the Bastion Host resource.
  final pulumi.Input<List<BastionHostIPConfiguration>>? ipConfigurations;
  /// Resource location.
  final pulumi.Input<String>? location;
  final pulumi.Input<BastionHostPropertiesFormatNetworkAcls>? networkAcls;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The scale units for the Bastion Host resource.
  final pulumi.Input<int>? scaleUnits;
  /// The sku of this Bastion Host.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Reference to an existing virtual network required for Developer Bastion Host only.
  final pulumi.Input<SubResource>? virtualNetwork;
  /// A list of availability zones denoting where the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [BastionHostArgs].
  /// [bastionHostName] The name of the Bastion Host.
  /// [disableCopyPaste] Enable/Disable Copy/Paste feature of the Bastion Host resource.
  /// [dnsName] FQDN for the endpoint on which bastion host is accessible.
  /// [enableFileCopy] Enable/Disable File Copy feature of the Bastion Host resource.
  /// [enableIpConnect] Enable/Disable IP Connect feature of the Bastion Host resource.
  /// [enableKerberos] Enable/Disable Kerberos feature of the Bastion Host resource.
  /// [enablePrivateOnlyBastion] Enable/Disable Private Only feature of the Bastion Host resource.
  /// [enableSessionRecording] Enable/Disable Session Recording feature of the Bastion Host resource.
  /// [enableShareableLink] Enable/Disable Shareable Link of the Bastion Host resource.
  /// [enableTunneling] Enable/Disable Tunneling feature of the Bastion Host resource.
  /// [id] Resource ID.
  /// [ipConfigurations] IP configuration of the Bastion Host resource.
  /// [location] Resource location.
  /// [networkAcls] Optional.
  /// [resourceGroupName] The name of the resource group.
  /// [scaleUnits] The scale units for the Bastion Host resource.
  /// [sku] The sku of this Bastion Host.
  /// [tags] Resource tags.
  /// [virtualNetwork] Reference to an existing virtual network required for Developer Bastion Host only.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  BastionHostArgs({
    String? bastionHostName,
    bool? disableCopyPaste,
    String? dnsName,
    bool? enableFileCopy,
    bool? enableIpConnect,
    bool? enableKerberos,
    bool? enablePrivateOnlyBastion,
    bool? enableSessionRecording,
    bool? enableShareableLink,
    bool? enableTunneling,
    String? id,
    List<BastionHostIPConfiguration>? ipConfigurations,
    String? location,
    BastionHostPropertiesFormatNetworkAcls? networkAcls,
    required String resourceGroupName,
    int? scaleUnits,
    Sku? sku,
    Map<String, String>? tags,
    SubResource? virtualNetwork,
    List<String>? zones,
  }) :
      bastionHostName = pulumi.Input.asOptionalInput<String>(bastionHostName),
      disableCopyPaste = pulumi.Input.asOptionalInput<bool>(disableCopyPaste),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      enableFileCopy = pulumi.Input.asOptionalInput<bool>(enableFileCopy),
      enableIpConnect = pulumi.Input.asOptionalInput<bool>(enableIpConnect),
      enableKerberos = pulumi.Input.asOptionalInput<bool>(enableKerberos),
      enablePrivateOnlyBastion = pulumi.Input.asOptionalInput<bool>(enablePrivateOnlyBastion),
      enableSessionRecording = pulumi.Input.asOptionalInput<bool>(enableSessionRecording),
      enableShareableLink = pulumi.Input.asOptionalInput<bool>(enableShareableLink),
      enableTunneling = pulumi.Input.asOptionalInput<bool>(enableTunneling),
      id = pulumi.Input.asOptionalInput<String>(id),
      ipConfigurations = pulumi.Input.asOptionalInput<List<BastionHostIPConfiguration>>(ipConfigurations),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkAcls = pulumi.Input.asOptionalInput<BastionHostPropertiesFormatNetworkAcls>(networkAcls),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scaleUnits = pulumi.Input.asOptionalInput<int>(scaleUnits),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetwork = pulumi.Input.asOptionalInput<SubResource>(virtualNetwork),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bastionHostName': ?bastionHostName,
      'disableCopyPaste': ?disableCopyPaste,
      'dnsName': ?dnsName,
      'enableFileCopy': ?enableFileCopy,
      'enableIpConnect': ?enableIpConnect,
      'enableKerberos': ?enableKerberos,
      'enablePrivateOnlyBastion': ?enablePrivateOnlyBastion,
      'enableSessionRecording': ?enableSessionRecording,
      'enableShareableLink': ?enableShareableLink,
      'enableTunneling': ?enableTunneling,
      'id': ?id,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<BastionHostIPConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<BastionHostIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<BastionHostPropertiesFormatNetworkAcls, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scaleUnits': ?scaleUnits,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNetwork': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory BastionHostArgs.fromMap(Map<String, dynamic> map) {
    return BastionHostArgs(
      bastionHostName: map['bastionHostName'] == null ? null : map['bastionHostName'] as String,
      disableCopyPaste: map['disableCopyPaste'] == null ? null : map['disableCopyPaste'] as bool,
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      enableFileCopy: map['enableFileCopy'] == null ? null : map['enableFileCopy'] as bool,
      enableIpConnect: map['enableIpConnect'] == null ? null : map['enableIpConnect'] as bool,
      enableKerberos: map['enableKerberos'] == null ? null : map['enableKerberos'] as bool,
      enablePrivateOnlyBastion: map['enablePrivateOnlyBastion'] == null ? null : map['enablePrivateOnlyBastion'] as bool,
      enableSessionRecording: map['enableSessionRecording'] == null ? null : map['enableSessionRecording'] as bool,
      enableShareableLink: map['enableShareableLink'] == null ? null : map['enableShareableLink'] as bool,
      enableTunneling: map['enableTunneling'] == null ? null : map['enableTunneling'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<BastionHostIPConfiguration>(map['ipConfigurations'], (value) => BastionHostIPConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      networkAcls: map['networkAcls'] == null ? null : BastionHostPropertiesFormatNetworkAcls.fromMap((map['networkAcls'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      scaleUnits: map['scaleUnits'] == null ? null : map['scaleUnits'] as int,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualNetwork: map['virtualNetwork'] == null ? null : SubResource.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>()),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

