// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_rules_response.dart';
import 'replication_status_response.dart';
import 'system_data_response.dart';
import 'target_region_response.dart';

/// Result data returned by getGalleryInVMAccessControlProfileVersion.
class GetGalleryInVMAccessControlProfileVersionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// This property allows you to specify if the requests will be allowed to access the host endpoints. Possible values are: 'Allow', 'Deny'.
  final String defaultAccess;
  /// If set to true, Virtual Machines deployed from the latest version of the Resource Profile won't use this Profile version.
  final bool? excludeFromLatest;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// This property allows you to specify whether the access control rules are in Audit mode, in Enforce mode or Disabled. Possible values are: 'Audit', 'Enforce' or 'Disabled'.
  final String mode;
  /// The name of the resource
  final String name;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// The timestamp for when the Resource Profile Version is published.
  final String publishedDate;
  /// This is the replication status of the gallery image version.
  final ReplicationStatusResponse replicationStatus;
  /// This is the Access Control Rules specification for an inVMAccessControlProfile version.
  final AccessControlRulesResponse? rules;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The target regions where the Resource Profile version is going to be replicated to. This property is updatable.
  final List<TargetRegionResponse>? targetLocations;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetGalleryInVMAccessControlProfileVersionResult({
    required this.azureApiVersion,
    required this.defaultAccess,
    this.excludeFromLatest,
    required this.id,
    required this.location,
    required this.mode,
    required this.name,
    required this.provisioningState,
    required this.publishedDate,
    required this.replicationStatus,
    this.rules,
    required this.systemData,
    this.tags,
    this.targetLocations,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'defaultAccess': defaultAccess,
      'excludeFromLatest': ?excludeFromLatest,
      'id': id,
      'location': location,
      'mode': mode,
      'name': name,
      'provisioningState': provisioningState,
      'publishedDate': publishedDate,
      'replicationStatus': replicationStatus.toMap(),
      'rules': ?rules == null ? null : rules!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'targetLocations': ?targetLocations == null ? null : pulumi.Input.encodeList<TargetRegionResponse, Map<String, dynamic>>(targetLocations!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetGalleryInVMAccessControlProfileVersionResult.fromMap(Map<String, dynamic> map) {
    return GetGalleryInVMAccessControlProfileVersionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      defaultAccess: map['defaultAccess'] as String,
      excludeFromLatest: map['excludeFromLatest'] == null ? null : map['excludeFromLatest']! as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      mode: map['mode'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publishedDate: map['publishedDate'] as String,
      replicationStatus: ReplicationStatusResponse.fromMap((map['replicationStatus'] as Map).cast<String, dynamic>()),
      rules: map['rules'] == null ? null : AccessControlRulesResponse.fromMap((map['rules']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      targetLocations: map['targetLocations'] == null ? null : pulumi.Input.decodeList<TargetRegionResponse>(map['targetLocations']!, (value) => TargetRegionResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

