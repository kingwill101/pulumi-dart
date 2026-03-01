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
      'instances': pulumi.Input.encodeList<GetInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
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
      architectureType: map['architectureType'] == null ? null : map['architectureType'] as String,
      editionType: map['editionType'] == null ? null : map['editionType'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion'] as String,
      expired: map['expired'] == null ? null : map['expired'] as String,
      globalInstance: map['globalInstance'] == null ? null : map['globalInstance'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceClass: map['instanceClass'] == null ? null : map['instanceClass'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      instances: pulumi.Input.decodeList<GetInstancesInstance>(map['instances'], (value) => GetInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      searchKey: map['searchKey'] == null ? null : map['searchKey'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

