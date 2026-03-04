// ignore_for_file: unused_element, unnecessary_cast

import 'auto_upgrade_node_image_selection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAutoUpgradeProfile.
class GetAutoUpgradeProfileResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Configures how auto-upgrade will be run.
  final String channel;

  /// If set to False: the auto upgrade has effect - target managed clusters will be upgraded on schedule.
  /// If set to True: the auto upgrade has no effect - no upgrade will be run on the target managed clusters.
  /// This is a boolean and not an enum because enabled/disabled are all available states of the auto upgrade profile.
  /// By default, this is set to False.
  final bool? disabled;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String eTag;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// The node image upgrade to be applied to the target clusters in auto upgrade.
  final AutoUpgradeNodeImageSelectionResponse? nodeImageSelection;

  /// The provisioning state of the AutoUpgradeProfile resource.
  final String provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// The resource id of the UpdateStrategy resource to reference. If not specified, the auto upgrade will run on all clusters which are members of the fleet.
  final String? updateStrategyId;

  /// Creates a new [GetAutoUpgradeProfileResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [channel] Configures how auto-upgrade will be run.
  /// [disabled] If set to False: the auto upgrade has effect - target managed clusters will be upgraded on schedule.
  /// [eTag] If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [nodeImageSelection] The node image upgrade to be applied to the target clusters in auto upgrade.
  /// [provisioningState] The provisioning state of the AutoUpgradeProfile resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updateStrategyId] The resource id of the UpdateStrategy resource to reference. If not specified, the auto upgrade will run on all clusters which are members of the fleet.
  GetAutoUpgradeProfileResult({
    required this.azureApiVersion,
    required this.channel,
    this.disabled,
    required this.eTag,
    required this.id,
    required this.name,
    this.nodeImageSelection,
    required this.provisioningState,
    required this.systemData,
    required this.type,
    this.updateStrategyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'channel': channel,
      'disabled': ?disabled,
      'eTag': eTag,
      'id': id,
      'name': name,
      'nodeImageSelection': ?nodeImageSelection?.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
      'updateStrategyId': ?updateStrategyId,
    };
  }

  factory GetAutoUpgradeProfileResult.fromMap(Map<String, dynamic> map) {
    return GetAutoUpgradeProfileResult(
      azureApiVersion: map['azureApiVersion'] as String,
      channel: map['channel'] as String,
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      eTag: map['eTag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      nodeImageSelection: (() {
        final guardedValue = map['nodeImageSelection'];
        if (guardedValue == null) return null;
        return AutoUpgradeNodeImageSelectionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      updateStrategyId: (() {
        final guardedValue = map['updateStrategyId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
