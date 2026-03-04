// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_application_load_balancers_get_application_load_balancers_args_doc}
/// Arguments for getApplicationLoadBalancers.
/// {@endtemplate}
/// {@macro pulumi_slb_get_application_load_balancers_get_application_load_balancers_args_doc}
class GetApplicationLoadBalancersArgs {
  /// Service address of the SLBs.
  final pulumi.Input<String>? address;

  /// The address ip version. Valid values `ipv4` and `ipv6`.
  final pulumi.Input<String>? addressIpVersion;

  /// The address type of the SLB. Valid values `internet` and `intranet`.
  final pulumi.Input<String>? addressType;
  final pulumi.Input<bool>? enableDetails;

  /// A list of SLBs IDs.
  final pulumi.Input<List<String>>? ids;

  /// The internet charge type. Valid values `PayByBandwidth` and `PayByTraffic`.
  final pulumi.Input<String>? internetChargeType;

  /// The name of the SLB.
  final pulumi.Input<String>? loadBalancerName;

  /// The master zone id of the SLB.
  final pulumi.Input<String>? masterZoneId;

  /// A regex string to filter results by SLB name.
  final pulumi.Input<String>? nameRegex;

  /// Network type of the SLBs. Valid values: `vpc` and `classic`.
  final pulumi.Input<String>? networkType;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// The payment type of SLB. Valid values `PayAsYouGo` and `Subscription`.
  final pulumi.Input<String>? paymentType;

  /// The Id of resource group which SLB belongs.
  final pulumi.Input<String>? resourceGroupId;

  /// The server ID.
  final pulumi.Input<String>? serverId;

  /// The server intranet address.
  final pulumi.Input<String>? serverIntranetAddress;

  /// The slave zone id of the SLB.
  final pulumi.Input<String>? slaveZoneId;

  /// SLB current status. Possible values: `inactive`, `active` and `locked`.
  final pulumi.Input<String>? status;

  /// A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  final pulumi.Input<Map<String, String>>? tags;

  /// ID of the VPC linked to the SLBs.
  final pulumi.Input<String>? vpcId;

  /// ID of the vSwitch linked to the SLBs.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetApplicationLoadBalancersArgs].
  /// [address] Service address of the SLBs.
  /// [addressIpVersion] The address ip version. Valid values `ipv4` and `ipv6`.
  /// [addressType] The address type of the SLB. Valid values `internet` and `intranet`.
  /// [enableDetails] Optional.
  /// [ids] A list of SLBs IDs.
  /// [internetChargeType] The internet charge type. Valid values `PayByBandwidth` and `PayByTraffic`.
  /// [loadBalancerName] The name of the SLB.
  /// [masterZoneId] The master zone id of the SLB.
  /// [nameRegex] A regex string to filter results by SLB name.
  /// [networkType] Network type of the SLBs. Valid values: `vpc` and `classic`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [paymentType] The payment type of SLB. Valid values `PayAsYouGo` and `Subscription`.
  /// [resourceGroupId] The Id of resource group which SLB belongs.
  /// [serverId] The server ID.
  /// [serverIntranetAddress] The server intranet address.
  /// [slaveZoneId] The slave zone id of the SLB.
  /// [status] SLB current status. Possible values: `inactive`, `active` and `locked`.
  /// [tags] A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  /// [vpcId] ID of the VPC linked to the SLBs.
  /// [vswitchId] ID of the vSwitch linked to the SLBs.
  GetApplicationLoadBalancersArgs({
    this.address,
    this.addressIpVersion,
    this.addressType,
    this.enableDetails,
    this.ids,
    this.internetChargeType,
    this.loadBalancerName,
    this.masterZoneId,
    this.nameRegex,
    this.networkType,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.paymentType,
    this.resourceGroupId,
    this.serverId,
    this.serverIntranetAddress,
    this.slaveZoneId,
    this.status,
    this.tags,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressIpVersion': ?addressIpVersion,
      'addressType': ?addressType,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'internetChargeType': ?internetChargeType,
      'loadBalancerName': ?loadBalancerName,
      'masterZoneId': ?masterZoneId,
      'nameRegex': ?nameRegex,
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'serverId': ?serverId,
      'serverIntranetAddress': ?serverIntranetAddress,
      'slaveZoneId': ?slaveZoneId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetApplicationLoadBalancersArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationLoadBalancersArgs(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addressIpVersion: (() {
        final guardedValue = map['addressIpVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addressType: (() {
        final guardedValue = map['addressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      internetChargeType: (() {
        final guardedValue = map['internetChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerName: (() {
        final guardedValue = map['loadBalancerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterZoneId: (() {
        final guardedValue = map['masterZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkType: (() {
        final guardedValue = map['networkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverId: (() {
        final guardedValue = map['serverId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverIntranetAddress: (() {
        final guardedValue = map['serverIntranetAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slaveZoneId: (() {
        final guardedValue = map['slaveZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
