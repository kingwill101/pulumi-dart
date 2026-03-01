// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_load_balancers_get_load_balancers_args_doc}
/// Arguments for getLoadBalancers.
/// {@endtemplate}
/// {@macro pulumi_alb_get_load_balancers_get_load_balancers_args_doc}
class GetLoadBalancersArgs {
  /// The type of IP address that the ALB instance uses to provide services. Valid values: `Intranet`, `Internet`.
  final pulumi.Input<String>? addressType;
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Load Balancer IDs.
  final pulumi.Input<List<String>>? ids;
  /// Load Balancing of the Service Status. Valid Values: `Abnormal`and `Normal`.
  final pulumi.Input<String>? loadBalancerBusinessStatus;
  /// Field `load_balancer_bussiness_status` has been deprecated from provider version 1.142.0. New field `load_balancer_business_status` instead.
  final pulumi.Input<String>? loadBalancerBussinessStatus;
  /// The load balancer ids.
  final pulumi.Input<List<String>>? loadBalancerIds;
  /// The name of the resource.
  final pulumi.Input<String>? loadBalancerName;
  /// A regex string to filter results by Load Balancer name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) where the ALB instance is deployed.
  final pulumi.Input<String>? vpcId;
  /// The vpc ids.
  final pulumi.Input<List<String>>? vpcIds;
  /// The zone ID of the resource.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetLoadBalancersArgs].
  /// [addressType] The type of IP address that the ALB instance uses to provide services. Valid values: `Intranet`, `Internet`.
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Load Balancer IDs.
  /// [loadBalancerBusinessStatus] Load Balancing of the Service Status. Valid Values: `Abnormal`and `Normal`.
  /// [loadBalancerBussinessStatus] Field `load_balancer_bussiness_status` has been deprecated from provider version 1.142.0. New field `load_balancer_business_status` instead.
  /// [loadBalancerIds] The load balancer ids.
  /// [loadBalancerName] The name of the resource.
  /// [nameRegex] A regex string to filter results by Load Balancer name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The load balancer status. Valid values: `Active`, `Configuring`, `CreateFailed`, `Inactive` and `Provisioning`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the virtual private cloud (VPC) where the ALB instance is deployed.
  /// [vpcIds] The vpc ids.
  /// [zoneId] The zone ID of the resource.
  GetLoadBalancersArgs({
    String? addressType,
    bool? enableDetails,
    List<String>? ids,
    String? loadBalancerBusinessStatus,
    String? loadBalancerBussinessStatus,
    List<String>? loadBalancerIds,
    String? loadBalancerName,
    String? nameRegex,
    String? outputFile,
    String? resourceGroupId,
    String? status,
    Map<String, String>? tags,
    String? vpcId,
    List<String>? vpcIds,
    String? zoneId,
  }) :
      addressType = pulumi.Input.asOptionalInput<String>(addressType),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      loadBalancerBusinessStatus = pulumi.Input.asOptionalInput<String>(loadBalancerBusinessStatus),
      loadBalancerBussinessStatus = pulumi.Input.asOptionalInput<String>(loadBalancerBussinessStatus),
      loadBalancerIds = pulumi.Input.asOptionalInput<List<String>>(loadBalancerIds),
      loadBalancerName = pulumi.Input.asOptionalInput<String>(loadBalancerName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpcIds = pulumi.Input.asOptionalInput<List<String>>(vpcIds),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressType': ?addressType,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'loadBalancerBusinessStatus': ?loadBalancerBusinessStatus,
      'loadBalancerBussinessStatus': ?loadBalancerBussinessStatus,
      'loadBalancerIds': ?loadBalancerIds,
      'loadBalancerName': ?loadBalancerName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vpcIds': ?vpcIds,
      'zoneId': ?zoneId,
    };
  }

  factory GetLoadBalancersArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersArgs(
      addressType: map['addressType'] == null ? null : map['addressType'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      loadBalancerBusinessStatus: map['loadBalancerBusinessStatus'] == null ? null : map['loadBalancerBusinessStatus'] as String,
      loadBalancerBussinessStatus: map['loadBalancerBussinessStatus'] == null ? null : map['loadBalancerBussinessStatus'] as String,
      loadBalancerIds: map['loadBalancerIds'] == null ? null : (map['loadBalancerIds'] as List).cast<String>(),
      loadBalancerName: map['loadBalancerName'] == null ? null : map['loadBalancerName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vpcIds: map['vpcIds'] == null ? null : (map['vpcIds'] as List).cast<String>(),
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

