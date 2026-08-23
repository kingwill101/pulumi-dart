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
  const BastionHostArgs({
    this.bastionHostName,
    this.disableCopyPaste,
    this.dnsName,
    this.enableFileCopy,
    this.enableIpConnect,
    this.enableKerberos,
    this.enablePrivateOnlyBastion,
    this.enableSessionRecording,
    this.enableShareableLink,
    this.enableTunneling,
    this.id,
    this.ipConfigurations,
    this.location,
    this.networkAcls,
    required this.resourceGroupName,
    this.scaleUnits,
    this.sku,
    this.tags,
    this.virtualNetwork,
    this.zones,
  });

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
      bastionHostName: (() { final guardedValue = map['bastionHostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableCopyPaste: (() { final guardedValue = map['disableCopyPaste']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableFileCopy: (() { final guardedValue = map['enableFileCopy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIpConnect: (() { final guardedValue = map['enableIpConnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableKerberos: (() { final guardedValue = map['enableKerberos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivateOnlyBastion: (() { final guardedValue = map['enablePrivateOnlyBastion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSessionRecording: (() { final guardedValue = map['enableSessionRecording']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableShareableLink: (() { final guardedValue = map['enableShareableLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableTunneling: (() { final guardedValue = map['enableTunneling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BastionHostIPConfiguration>(guardedValue, (value) => BastionHostIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BastionHostPropertiesFormatNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scaleUnits: (() { final guardedValue = map['scaleUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetwork: (() { final guardedValue = map['virtualNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
