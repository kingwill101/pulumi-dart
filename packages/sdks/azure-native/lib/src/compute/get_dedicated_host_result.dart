// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_instance_view_response.dart';
import 'sku_response.dart';
import 'sub_resource_read_only_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDedicatedHost.
class GetDedicatedHostResult {
  /// Specifies whether the dedicated host should be replaced automatically in case of a failure. The value is defaulted to 'true' when not provided.
  final bool? autoReplaceOnFailure;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique id generated and assigned to the dedicated host by the platform. Does not change throughout the lifetime of the host.
  final String hostId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The dedicated host instance view.
  final DedicatedHostInstanceViewResponse instanceView;
  /// Specifies the software license type that will be applied to the VMs deployed on the dedicated host. Possible values are: **None,** **Windows_Server_Hybrid,** **Windows_Server_Perpetual.** The default value is: **None.**
  final String? licenseType;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Fault domain of the dedicated host within a dedicated host group.
  final int? platformFaultDomain;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// The date when the host was first provisioned.
  final String provisioningTime;
  /// SKU of the dedicated host for Hardware Generation and VM family. Only name is required to be set. List Microsoft.Compute SKUs for a list of possible values.
  final SkuResponse sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Specifies the time at which the Dedicated Host resource was created. Minimum api-version: 2021-11-01.
  final String timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// A list of references to all virtual machines in the Dedicated Host.
  final List<SubResourceReadOnlyResponse> virtualMachines;

  /// Creates a new [GetDedicatedHostResult].
  /// [autoReplaceOnFailure] Specifies whether the dedicated host should be replaced automatically in case of a failure. The value is defaulted to 'true' when not provided.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hostId] A unique id generated and assigned to the dedicated host by the platform. Does not change throughout the lifetime of the host.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [instanceView] The dedicated host instance view.
  /// [licenseType] Specifies the software license type that will be applied to the VMs deployed on the dedicated host. Possible values are: **None,** **Windows_Server_Hybrid,** **Windows_Server_Perpetual.** The default value is: **None.**
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [platformFaultDomain] Fault domain of the dedicated host within a dedicated host group.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [provisioningTime] The date when the host was first provisioned.
  /// [sku] SKU of the dedicated host for Hardware Generation and VM family. Only name is required to be set. List Microsoft.Compute SKUs for a list of possible values.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timeCreated] Specifies the time at which the Dedicated Host resource was created. Minimum api-version: 2021-11-01.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachines] A list of references to all virtual machines in the Dedicated Host.
  const GetDedicatedHostResult({
    this.autoReplaceOnFailure,
    required this.azureApiVersion,
    required this.hostId,
    required this.id,
    required this.instanceView,
    this.licenseType,
    required this.location,
    required this.name,
    this.platformFaultDomain,
    required this.provisioningState,
    required this.provisioningTime,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.timeCreated,
    required this.type,
    required this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoReplaceOnFailure': ?autoReplaceOnFailure,
      'azureApiVersion': azureApiVersion,
      'hostId': hostId,
      'id': id,
      'instanceView': instanceView.toMap(),
      'licenseType': ?licenseType,
      'location': location,
      'name': name,
      'platformFaultDomain': ?platformFaultDomain,
      'provisioningState': provisioningState,
      'provisioningTime': provisioningTime,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeCreated': timeCreated,
      'type': type,
      'virtualMachines': pulumi.Input.encodeList<SubResourceReadOnlyResponse, Map<String, dynamic>>(virtualMachines, (value) => value.toMap()),
    };
  }

  factory GetDedicatedHostResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostResult(
      autoReplaceOnFailure: (() { final guardedValue = map['autoReplaceOnFailure']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      hostId: map['hostId'] as String,
      id: map['id'] as String,
      instanceView: DedicatedHostInstanceViewResponse.fromMap((map['instanceView']! as Map).cast<String, dynamic>()),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      platformFaultDomain: (() { final guardedValue = map['platformFaultDomain']; if (guardedValue == null) return null; return guardedValue as int; })(),
      provisioningState: map['provisioningState'] as String,
      provisioningTime: map['provisioningTime'] as String,
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeCreated: map['timeCreated'] as String,
      type: map['type'] as String,
      virtualMachines: pulumi.Input.decodeList<SubResourceReadOnlyResponse>(map['virtualMachines']!, (value) => SubResourceReadOnlyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
