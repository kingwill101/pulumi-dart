// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_group_instance_view_response.dart';
import 'dedicated_host_group_properties_additional_capabilities_response.dart';
import 'sub_resource_read_only_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDedicatedHostGroup.
class GetDedicatedHostGroupResult {
  /// Enables or disables a capability on the dedicated host group. Minimum api-version: 2022-03-01.
  final DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse? additionalCapabilities;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A list of references to all dedicated hosts in the dedicated host group.
  final List<SubResourceReadOnlyResponse> hosts;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The dedicated host group instance view, which has the list of instance view of the dedicated hosts under the dedicated host group.
  final DedicatedHostGroupInstanceViewResponse instanceView;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Number of fault domains that the host group can span.
  final int platformFaultDomainCount;
  /// Specifies whether virtual machines or virtual machine scale sets can be placed automatically on the dedicated host group. Automatic placement means resources are allocated on dedicated hosts, that are chosen by Azure, under the dedicated host group. The value is defaulted to 'false' when not provided. Minimum api-version: 2020-06-01.
  final bool? supportAutomaticPlacement;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The availability zones.
  final List<String>? zones;

  /// Creates a new [GetDedicatedHostGroupResult].
  /// [additionalCapabilities] Enables or disables a capability on the dedicated host group. Minimum api-version: 2022-03-01.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hosts] A list of references to all dedicated hosts in the dedicated host group.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [instanceView] The dedicated host group instance view, which has the list of instance view of the dedicated hosts under the dedicated host group.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [platformFaultDomainCount] Number of fault domains that the host group can span.
  /// [supportAutomaticPlacement] Specifies whether virtual machines or virtual machine scale sets can be placed automatically on the dedicated host group. Automatic placement means resources are allocated on dedicated hosts, that are chosen by Azure, under the dedicated host group. The value is defaulted to 'false' when not provided. Minimum api-version: 2020-06-01.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [zones] The availability zones.
  GetDedicatedHostGroupResult({
    this.additionalCapabilities,
    required this.azureApiVersion,
    required this.hosts,
    required this.id,
    required this.instanceView,
    required this.location,
    required this.name,
    required this.platformFaultDomainCount,
    this.supportAutomaticPlacement,
    required this.systemData,
    this.tags,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?additionalCapabilities?.toMap(),
      'azureApiVersion': azureApiVersion,
      'hosts': pulumi.Input.encodeList<SubResourceReadOnlyResponse, Map<String, dynamic>>(hosts, (value) => value.toMap()),
      'id': id,
      'instanceView': instanceView.toMap(),
      'location': location,
      'name': name,
      'platformFaultDomainCount': platformFaultDomainCount,
      'supportAutomaticPlacement': ?supportAutomaticPlacement,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory GetDedicatedHostGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupResult(
      additionalCapabilities: (() { final guardedValue = map['additionalCapabilities']; if (guardedValue == null) return null; return DedicatedHostGroupPropertiesAdditionalCapabilitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      hosts: pulumi.Input.decodeList<SubResourceReadOnlyResponse>(map['hosts']!, (value) => SubResourceReadOnlyResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceView: DedicatedHostGroupInstanceViewResponse.fromMap((map['instanceView']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      platformFaultDomainCount: map['platformFaultDomainCount'] as int,
      supportAutomaticPlacement: (() { final guardedValue = map['supportAutomaticPlacement']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

