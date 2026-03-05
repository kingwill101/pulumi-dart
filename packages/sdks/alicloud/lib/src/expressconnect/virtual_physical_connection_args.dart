// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_virtual_physical_connection_virtual_physical_connection_args_doc}
/// The set of arguments for VirtualPhysicalConnection.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_virtual_physical_connection_virtual_physical_connection_args_doc}
class VirtualPhysicalConnectionArgs {
  /// The description of the physical connection.
  final pulumi.Input<String>? description;
  /// Specifies whether to precheck the API request. Valid values: `true` and `false`.
  final pulumi.Input<bool>? dryRun;
  /// The estimated bandwidth value of the shared line. Valid values: `50M`, `100M`, `200M`, `300M`, `400M`, `500M`, `1G`, `2G`, `5G`, `8G`, and `10G`. **Note**: By default, the values of 2G, 5G, 8G, and 10G are unavailable. If you want to specify these values, contact your customer manager. Unit: **M** indicates Mbps, **G** indicates Gbps.
  final pulumi.Input<String>? expectSpec;
  /// The payment method of shared dedicated line. Value:
  /// - **PayByPhysicalConnectionOwner**: indicates that the owner of the physical line associated with the shared line pays.
  /// - **PayByVirtualPhysicalConnectionOwner**: indicates that the owner of the shared line pays.
  final pulumi.Input<String> orderMode;
  /// The ID of the instance of the physical connection.
  final pulumi.Input<String> parentPhysicalConnectionId;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;
  /// The bandwidth value of the shared line. Valid values: `50M`, `100M`, `200M`, `300M`, `400M`, `500M`, `1G`, `2G`, `5G`, `8G`, and `10G`. **Note**: By default, the values of 2G, 5G, 8G, and 10G are unavailable. If you want to specify these values, contact your customer manager. Unit: **M** indicates Mbps, **G** indicates Gbps.
  final pulumi.Input<String> spec;
  /// The name of the physical connection.
  final pulumi.Input<String>? virtualPhysicalConnectionName;
  /// The VLAN ID of the shared leased line. Valid values: `0` to `2999`.
  final pulumi.Input<int> vlanId;
  /// The ID of the Alibaba Cloud account (primary account) of the owner of the shared line.
  final pulumi.Input<String> vpconnAliUid;

  /// Creates a new [VirtualPhysicalConnectionArgs].
  /// [description] The description of the physical connection.
  /// [dryRun] Specifies whether to precheck the API request. Valid values: `true` and `false`.
  /// [expectSpec] The estimated bandwidth value of the shared line. Valid values: `50M`, `100M`, `200M`, `300M`, `400M`, `500M`, `1G`, `2G`, `5G`, `8G`, and `10G`. **Note**: By default, the values of 2G, 5G, 8G, and 10G are unavailable. If you want to specify these values, contact your customer manager. Unit: **M** indicates Mbps, **G** indicates Gbps.
  /// [orderMode] The payment method of shared dedicated line. Value:
  /// [parentPhysicalConnectionId] The ID of the instance of the physical connection.
  /// [resourceGroupId] The resource group id.
  /// [spec] The bandwidth value of the shared line. Valid values: `50M`, `100M`, `200M`, `300M`, `400M`, `500M`, `1G`, `2G`, `5G`, `8G`, and `10G`. **Note**: By default, the values of 2G, 5G, 8G, and 10G are unavailable. If you want to specify these values, contact your customer manager. Unit: **M** indicates Mbps, **G** indicates Gbps.
  /// [virtualPhysicalConnectionName] The name of the physical connection.
  /// [vlanId] The VLAN ID of the shared leased line. Valid values: `0` to `2999`.
  /// [vpconnAliUid] The ID of the Alibaba Cloud account (primary account) of the owner of the shared line.
  VirtualPhysicalConnectionArgs({
    this.description,
    this.dryRun,
    this.expectSpec,
    required this.orderMode,
    required this.parentPhysicalConnectionId,
    this.resourceGroupId,
    required this.spec,
    this.virtualPhysicalConnectionName,
    required this.vlanId,
    required this.vpconnAliUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dryRun': ?dryRun,
      'expectSpec': ?expectSpec,
      'orderMode': orderMode,
      'parentPhysicalConnectionId': parentPhysicalConnectionId,
      'resourceGroupId': ?resourceGroupId,
      'spec': spec,
      'virtualPhysicalConnectionName': ?virtualPhysicalConnectionName,
      'vlanId': vlanId,
      'vpconnAliUid': vpconnAliUid,
    };
  }

  factory VirtualPhysicalConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualPhysicalConnectionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expectSpec: (() { final guardedValue = map['expectSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderMode: pulumi.Input.fromValue(map['orderMode'] as String),
      parentPhysicalConnectionId: pulumi.Input.fromValue(map['parentPhysicalConnectionId'] as String),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: pulumi.Input.fromValue(map['spec'] as String),
      virtualPhysicalConnectionName: (() { final guardedValue = map['virtualPhysicalConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanId: pulumi.Input.fromValue(map['vlanId'] as int),
      vpconnAliUid: pulumi.Input.fromValue(map['vpconnAliUid'] as String),
    );
  }
}

