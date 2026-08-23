// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_update_actions_update_action.dart';

/// Result data returned by getServiceUpdateActions.
class GetServiceUpdateActionsResult {
  /// ID of Cache Cluster this update action applies to.
  final String? cacheClusterId;
  final String region;
  /// ID of Replication Group this update action applies to.
  final String? replicationGroupId;
  /// Availability of the update. One of `available`, `cancelled`, or `expired`.
  final List<String>? serviceUpdateStatuses;
  /// Set of Service Update Actions. Each element has the following attributes:
  final List<GetServiceUpdateActionsUpdateAction> updateActions;

  /// Creates a new [GetServiceUpdateActionsResult].
  /// [cacheClusterId] ID of Cache Cluster this update action applies to.
  /// [region] Required.
  /// [replicationGroupId] ID of Replication Group this update action applies to.
  /// [serviceUpdateStatuses] Availability of the update. One of `available`, `cancelled`, or `expired`.
  /// [updateActions] Set of Service Update Actions. Each element has the following attributes:
  const GetServiceUpdateActionsResult({
    this.cacheClusterId,
    required this.region,
    this.replicationGroupId,
    this.serviceUpdateStatuses,
    required this.updateActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheClusterId': ?cacheClusterId,
      'region': region,
      'replicationGroupId': ?replicationGroupId,
      'serviceUpdateStatuses': ?serviceUpdateStatuses,
      'updateActions': pulumi.Input.encodeList<GetServiceUpdateActionsUpdateAction, Map<String, dynamic>>(updateActions, (value) => value.toMap()),
    };
  }

  factory GetServiceUpdateActionsResult.fromMap(Map<String, dynamic> map) {
    return GetServiceUpdateActionsResult(
      cacheClusterId: (() { final guardedValue = map['cacheClusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      replicationGroupId: (() { final guardedValue = map['replicationGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceUpdateStatuses: (() { final guardedValue = map['serviceUpdateStatuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updateActions: pulumi.Input.decodeList<GetServiceUpdateActionsUpdateAction>(map['updateActions']!, (value) => GetServiceUpdateActionsUpdateAction.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
