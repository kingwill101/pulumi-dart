// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticache_get_service_update_actions_get_service_update_actions_args_doc}
/// Arguments for getServiceUpdateActions.
/// {@endtemplate}
/// {@macro pulumi_elasticache_get_service_update_actions_get_service_update_actions_args_doc}
class GetServiceUpdateActionsArgs {
  /// ID of Cache Cluster to list updates for. If neither `cacheClusterId` nor `replicationGroupId` are specified, all service update actions will be listed.
  final pulumi.Input<String?>? cacheClusterId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of Replication Group to list updates for. If neither `replicationGroupId` nor `cacheClusterId` are specified, all service update actions will be listed.
  final pulumi.Input<String?>? replicationGroupId;
  /// Service update statuses to include in list. Valid values are `available`, `cancelled`, and `expired`. If no value is specified, service updates in all statuses will be listed.
  final pulumi.Input<List<String>?>? serviceUpdateStatuses;

  /// Creates a new [GetServiceUpdateActionsArgs].
  /// [cacheClusterId] ID of Cache Cluster to list updates for. If neither `cacheClusterId` nor `replicationGroupId` are specified, all service update actions will be listed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationGroupId] ID of Replication Group to list updates for. If neither `replicationGroupId` nor `cacheClusterId` are specified, all service update actions will be listed.
  /// [serviceUpdateStatuses] Service update statuses to include in list. Valid values are `available`, `cancelled`, and `expired`. If no value is specified, service updates in all statuses will be listed.
  const GetServiceUpdateActionsArgs({
    this.cacheClusterId,
    this.region,
    this.replicationGroupId,
    this.serviceUpdateStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheClusterId': ?cacheClusterId,
      'region': ?region,
      'replicationGroupId': ?replicationGroupId,
      'serviceUpdateStatuses': ?serviceUpdateStatuses,
    };
  }

  factory GetServiceUpdateActionsArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceUpdateActionsArgs(
      cacheClusterId: (() { final guardedValue = map['cacheClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationGroupId: (() { final guardedValue = map['replicationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceUpdateStatuses: (() { final guardedValue = map['serviceUpdateStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
