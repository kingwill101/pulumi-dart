// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_rules_response.dart';
import 'replication_status_response.dart';
import 'system_data_response.dart';
import 'target_region_response.dart';

/// Result data returned by getGalleryInVMAccessControlProfileVersion.
class GetGalleryInVMAccessControlProfileVersionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// This property allows you to specify if the requests will be allowed to access the host endpoints. Possible values are: 'Allow', 'Deny'.
  final String? defaultAccess;
  /// If set to true, Virtual Machines deployed from the latest version of the Resource Profile won't use this Profile version.
  final bool? excludeFromLatest;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// This property allows you to specify whether the access control rules are in Audit mode, in Enforce mode or Disabled. Possible values are: 'Audit', 'Enforce' or 'Disabled'.
  final String? mode;
  /// The name of the resource
  final String? name;
  /// The provisioning state, which only appears in the response.
  final String? provisioningState;
  /// The timestamp for when the Resource Profile Version is published.
  final String? publishedDate;
  /// This is the replication status of the gallery image version.
  final ReplicationStatusResponse? replicationStatus;
  /// This is the Access Control Rules specification for an inVMAccessControlProfile version.
  final AccessControlRulesResponse? rules;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The target regions where the Resource Profile version is going to be replicated to. This property is updatable.
  final List<TargetRegionResponse>? targetLocations;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetGalleryInVMAccessControlProfileVersionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultAccess] This property allows you to specify if the requests will be allowed to access the host endpoints. Possible values are: 'Allow', 'Deny'.
  /// [excludeFromLatest] If set to true, Virtual Machines deployed from the latest version of the Resource Profile won't use this Profile version.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [mode] This property allows you to specify whether the access control rules are in Audit mode, in Enforce mode or Disabled. Possible values are: 'Audit', 'Enforce' or 'Disabled'.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [publishedDate] The timestamp for when the Resource Profile Version is published.
  /// [replicationStatus] This is the replication status of the gallery image version.
  /// [rules] This is the Access Control Rules specification for an inVMAccessControlProfile version.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [targetLocations] The target regions where the Resource Profile version is going to be replicated to. This property is updatable.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGalleryInVMAccessControlProfileVersionResult({
    this.azureApiVersion,
    this.defaultAccess,
    this.excludeFromLatest,
    this.id,
    this.location,
    this.mode,
    this.name,
    this.provisioningState,
    this.publishedDate,
    this.replicationStatus,
    this.rules,
    this.systemData,
    this.tags,
    this.targetLocations,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'defaultAccess': ?defaultAccess,
      'excludeFromLatest': ?excludeFromLatest,
      'id': ?id,
      'location': ?location,
      'mode': ?mode,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'publishedDate': ?publishedDate,
      'replicationStatus': ?replicationStatus?.toMap(),
      'rules': ?rules?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'targetLocations': ?(() { final guardedValue = targetLocations; if (guardedValue == null) return null; return pulumi.Input.encodeList<TargetRegionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetGalleryInVMAccessControlProfileVersionResult.fromMap(Map<String, dynamic> map) {
    return GetGalleryInVMAccessControlProfileVersionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultAccess: (() { final guardedValue = map['defaultAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludeFromLatest: (() { final guardedValue = map['excludeFromLatest']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishedDate: (() { final guardedValue = map['publishedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationStatus: (() { final guardedValue = map['replicationStatus']; if (guardedValue == null) return null; return ReplicationStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return AccessControlRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetLocations: (() { final guardedValue = map['targetLocations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetRegionResponse>(guardedValue, (value) => TargetRegionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
