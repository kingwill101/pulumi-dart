// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kvstore_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_kvstore_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// The type of the architecture. Valid values: `cluster`, `standard` and `SplitRW`.
  final pulumi.Input<String>? architectureType;

  /// Used to retrieve instances belong to specified `vswitch` resources.  Valid values: `Enterprise`, `Community`.
  final pulumi.Input<String>? editionType;

  /// Default to `false`. Set it to true can output more details.
  final pulumi.Input<bool>? enableDetails;

  /// The engine version. Valid values: `2.8`, `4.0`, `5.0`, `6.0`, `7.0`.
  final pulumi.Input<String>? engineVersion;

  /// The expiration status of the instance.
  final pulumi.Input<String>? expired;

  /// Whether to create a distributed cache.
  final pulumi.Input<bool>? globalInstance;

  /// A list of KVStore DBInstance IDs.
  final pulumi.Input<List<String>>? ids;

  /// Type of the applied Tair (Redis OSS-Compatible) And Memcache (KVStore) Classic Instance. For more information, see [Instance type table](https://help.aliyun.com/zh/redis/developer-reference/instance-types).
  final pulumi.Input<String>? instanceClass;

  /// The engine type of the KVStore DBInstance. Options are `Memcache`, and `Redis`. If no value is specified, all types are returned.
  final pulumi.Input<String>? instanceType;

  /// A regex string to apply to the instance name.
  final pulumi.Input<String>? nameRegex;

  /// The type of the network. Valid values: `CLASSIC`, `VPC`.
  final pulumi.Input<String>? networkType;

  /// The name of file that can save the collection of instances after running `pulumi preview`.
  final pulumi.Input<String>? outputFile;

  /// The payment type. Valid values: `PostPaid`, `PrePaid`.
  final pulumi.Input<String>? paymentType;

  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;

  /// The name of the instance.
  final pulumi.Input<String>? searchKey;

  /// The status of the KVStore DBInstance. Valid values: `Changing`, `CleaningUpExpiredData`, `Creating`, `Flushing`, `HASwitching`, `Inactive`, `MajorVersionUpgrading`, `Migrating`, `NetworkModifying`, `Normal`, `Rebooting`, `SSLModifying`, `Transforming`, `ZoneMigrating`.
  final pulumi.Input<String>? status;

  /// Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  final pulumi.Input<Map<String, String>>? tags;

  /// Used to retrieve instances belong to specified VPC.
  final pulumi.Input<String>? vpcId;

  /// Used to retrieve instances belong to specified `vswitch` resources.
  final pulumi.Input<String>? vswitchId;

  /// The ID of the zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetInstancesArgs].
  /// [architectureType] The type of the architecture. Valid values: `cluster`, `standard` and `SplitRW`.
  /// [editionType] Used to retrieve instances belong to specified `vswitch` resources.  Valid values: `Enterprise`, `Community`.
  /// [enableDetails] Default to `false`. Set it to true can output more details.
  /// [engineVersion] The engine version. Valid values: `2.8`, `4.0`, `5.0`, `6.0`, `7.0`.
  /// [expired] The expiration status of the instance.
  /// [globalInstance] Whether to create a distributed cache.
  /// [ids] A list of KVStore DBInstance IDs.
  /// [instanceClass] Type of the applied Tair (Redis OSS-Compatible) And Memcache (KVStore) Classic Instance. For more information, see [Instance type table](https://help.aliyun.com/zh/redis/developer-reference/instance-types).
  /// [instanceType] The engine type of the KVStore DBInstance. Options are `Memcache`, and `Redis`. If no value is specified, all types are returned.
  /// [nameRegex] A regex string to apply to the instance name.
  /// [networkType] The type of the network. Valid values: `CLASSIC`, `VPC`.
  /// [outputFile] The name of file that can save the collection of instances after running `pulumi preview`.
  /// [paymentType] The payment type. Valid values: `PostPaid`, `PrePaid`.
  /// [resourceGroupId] The ID of the resource group.
  /// [searchKey] The name of the instance.
  /// [status] The status of the KVStore DBInstance. Valid values: `Changing`, `CleaningUpExpiredData`, `Creating`, `Flushing`, `HASwitching`, `Inactive`, `MajorVersionUpgrading`, `Migrating`, `NetworkModifying`, `Normal`, `Rebooting`, `SSLModifying`, `Transforming`, `ZoneMigrating`.
  /// [tags] Query the instance bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  /// [vpcId] Used to retrieve instances belong to specified VPC.
  /// [vswitchId] Used to retrieve instances belong to specified `vswitch` resources.
  /// [zoneId] The ID of the zone.
  GetInstancesArgs({
    this.architectureType,
    this.editionType,
    this.enableDetails,
    this.engineVersion,
    this.expired,
    this.globalInstance,
    this.ids,
    this.instanceClass,
    this.instanceType,
    this.nameRegex,
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
      'ids': ?ids,
      'instanceClass': ?instanceClass,
      'instanceType': ?instanceType,
      'nameRegex': ?nameRegex,
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

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      architectureType: (() {
        final guardedValue = map['architectureType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      editionType: (() {
        final guardedValue = map['editionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      engineVersion: (() {
        final guardedValue = map['engineVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expired: (() {
        final guardedValue = map['expired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalInstance: (() {
        final guardedValue = map['globalInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceClass: (() {
        final guardedValue = map['instanceClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
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
      searchKey: (() {
        final guardedValue = map['searchKey'];
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
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
