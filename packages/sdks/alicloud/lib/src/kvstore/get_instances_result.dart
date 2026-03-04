// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  /// The architecture type of the instance.
  final String? architectureType;
  final String? editionType;
  final bool? enableDetails;

  /// The engine version of the instance.
  final String? engineVersion;
  final String? expired;
  final bool? globalInstance;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of KVStore Instance IDs.
  final List<String> ids;

  /// Type of the applied Tair (Redis OSS-Compatible) And Memcached (KVStore) Classic Instance. For more information, see [Instance type table](https://www.alibabacloud.com/help/en/redis/product-overview/overview-4).
  final String? instanceClass;

  /// Database type. Valid Values: `Memcache`, `Redis`. If no value is specified, all types are returned.
  final String? instanceType;

  /// A list of KVStore Instances. Its every element contains the following attributes:
  final List<GetInstancesInstance> instances;
  final String? nameRegex;

  /// A list of KVStore Instance names.
  final List<String> names;

  /// The network type of the instance.
  final String? networkType;
  final String? outputFile;

  /// Billing method. Valid Values: `PostPaid` for  Pay-As-You-Go and `PrePaid` for subscription.
  final String? paymentType;

  /// The ID of the resource group to which the instance belongs.
  final String? resourceGroupId;

  /// The keyword used for fuzzy search. The keyword can be based on an instance name or an instance ID.
  final String? searchKey;

  /// Status of the instance.
  final String? status;

  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// VPC ID the instance belongs to.
  final String? vpcId;

  /// VSwitch ID the instance belongs to.
  final String? vswitchId;

  /// The ID of zone.
  final String? zoneId;

  /// Creates a new [GetInstancesResult].
  /// [architectureType] The architecture type of the instance.
  /// [editionType] Optional.
  /// [enableDetails] Optional.
  /// [engineVersion] The engine version of the instance.
  /// [expired] Optional.
  /// [globalInstance] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of KVStore Instance IDs.
  /// [instanceClass] Type of the applied Tair (Redis OSS-Compatible) And Memcached (KVStore) Classic Instance. For more information, see [Instance type table](https://www.alibabacloud.com/help/en/redis/product-overview/overview-4).
  /// [instanceType] Database type. Valid Values: `Memcache`, `Redis`. If no value is specified, all types are returned.
  /// [instances] A list of KVStore Instances. Its every element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of KVStore Instance names.
  /// [networkType] The network type of the instance.
  /// [outputFile] Optional.
  /// [paymentType] Billing method. Valid Values: `PostPaid` for  Pay-As-You-Go and `PrePaid` for subscription.
  /// [resourceGroupId] The ID of the resource group to which the instance belongs.
  /// [searchKey] The keyword used for fuzzy search. The keyword can be based on an instance name or an instance ID.
  /// [status] Status of the instance.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] VPC ID the instance belongs to.
  /// [vswitchId] VSwitch ID the instance belongs to.
  /// [zoneId] The ID of zone.
  GetInstancesResult({
    this.architectureType,
    this.editionType,
    this.enableDetails,
    this.engineVersion,
    this.expired,
    this.globalInstance,
    required this.id,
    required this.ids,
    this.instanceClass,
    this.instanceType,
    required this.instances,
    this.nameRegex,
    required this.names,
    this.networkType,
    this.outputFile,
    this.paymentType,
    this.resourceGroupId,
    this.searchKey,
    this.status,
    this.tags,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectureType': ?architectureType,
      'editionType': ?editionType,
      'enableDetails': ?enableDetails,
      'engineVersion': ?engineVersion,
      'expired': ?expired,
      'globalInstance': ?globalInstance,
      'id': id,
      'ids': ids,
      'instanceClass': ?instanceClass,
      'instanceType': ?instanceType,
      'instances':
          pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(
            instances,
            (value) => value.toMap(),
          ),
      'nameRegex': ?nameRegex,
      'names': names,
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'searchKey': ?searchKey,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      architectureType: (() {
        final guardedValue = map['architectureType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      editionType: (() {
        final guardedValue = map['editionType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      engineVersion: (() {
        final guardedValue = map['engineVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      expired: (() {
        final guardedValue = map['expired'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      globalInstance: (() {
        final guardedValue = map['globalInstance'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceClass: (() {
        final guardedValue = map['instanceClass'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      instances: pulumi.Input.decodeList<GetInstancesInstance>(
        map['instances']!,
        (value) => GetInstancesInstance.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      networkType: (() {
        final guardedValue = map['networkType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      searchKey: (() {
        final guardedValue = map['searchKey'];
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
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
