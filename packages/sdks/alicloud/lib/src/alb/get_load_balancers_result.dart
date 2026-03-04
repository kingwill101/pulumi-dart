// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_balancer.dart';

/// Result data returned by getLoadBalancers.
class GetLoadBalancersResult {
  /// The type of IP address that the ALB instance uses to provide services.
  final String? addressType;

  /// A list of Alb Load Balancers. Each element contains the following attributes:
  final List<GetLoadBalancersBalancer> balancers;
  final bool? enableDetails;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// (Available since v1.142.0) Load Balancing of the Service Status.
  final String? loadBalancerBusinessStatus;

  /// (Deprecated since v1.142.0) Load Balancing of the Service Status. **NOTE:** Field `load_balancer_bussiness_status` has been deprecated from provider version 1.142.0. New field `load_balancer_business_status` instead.
  final String? loadBalancerBussinessStatus;
  final List<String>? loadBalancerIds;

  /// The name of the resource.
  final String? loadBalancerName;
  final String? nameRegex;

  /// A list of Load Balancer names.
  final List<String> names;
  final String? outputFile;

  /// The ID of the resource group.
  final String? resourceGroupId;

  /// (Available since v1.250.0) The zone status.
  final String? status;

  /// The tag of the resource.
  final Map<String, String>? tags;

  /// The ID of the virtual private cloud (VPC) where the ALB instance is deployed.
  final String? vpcId;
  final List<String>? vpcIds;

  /// The ID of the zone to which the ALB instance belongs.
  final String? zoneId;

  /// Creates a new [GetLoadBalancersResult].
  /// [addressType] The type of IP address that the ALB instance uses to provide services.
  /// [balancers] A list of Alb Load Balancers. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [loadBalancerBusinessStatus] (Available since v1.142.0) Load Balancing of the Service Status.
  /// [loadBalancerBussinessStatus] (Deprecated since v1.142.0) Load Balancing of the Service Status. **NOTE:** Field `load_balancer_bussiness_status` has been deprecated from provider version 1.142.0. New field `load_balancer_business_status` instead.
  /// [loadBalancerIds] Optional.
  /// [loadBalancerName] The name of the resource.
  /// [nameRegex] Optional.
  /// [names] A list of Load Balancer names.
  /// [outputFile] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] (Available since v1.250.0) The zone status.
  /// [tags] The tag of the resource.
  /// [vpcId] The ID of the virtual private cloud (VPC) where the ALB instance is deployed.
  /// [vpcIds] Optional.
  /// [zoneId] The ID of the zone to which the ALB instance belongs.
  GetLoadBalancersResult({
    this.addressType,
    required this.balancers,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.loadBalancerBusinessStatus,
    this.loadBalancerBussinessStatus,
    this.loadBalancerIds,
    this.loadBalancerName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vpcId,
    this.vpcIds,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressType': ?addressType,
      'balancers':
          pulumi.Input.encodeList<
            GetLoadBalancersBalancer,
            Map<String, dynamic>
          >(balancers, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'loadBalancerBusinessStatus': ?loadBalancerBusinessStatus,
      'loadBalancerBussinessStatus': ?loadBalancerBussinessStatus,
      'loadBalancerIds': ?loadBalancerIds,
      'loadBalancerName': ?loadBalancerName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vpcIds': ?vpcIds,
      'zoneId': ?zoneId,
    };
  }

  factory GetLoadBalancersResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResult(
      addressType: (() {
        final guardedValue = map['addressType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      balancers: pulumi.Input.decodeList<GetLoadBalancersBalancer>(
        map['balancers']!,
        (value) => GetLoadBalancersBalancer.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      loadBalancerBusinessStatus: (() {
        final guardedValue = map['loadBalancerBusinessStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      loadBalancerBussinessStatus: (() {
        final guardedValue = map['loadBalancerBussinessStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      loadBalancerIds: (() {
        final guardedValue = map['loadBalancerIds'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      loadBalancerName: (() {
        final guardedValue = map['loadBalancerName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      vpcIds: (() {
        final guardedValue = map['vpcIds'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
