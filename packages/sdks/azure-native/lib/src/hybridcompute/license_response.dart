// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_details_response.dart';
import 'system_data_response.dart';

/// Describes a license in a hybrid machine.
class LicenseResponse {
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;
  /// Describes the properties of a License.
  final pulumi.Input<LicenseDetailsResponse?>? licenseDetails;
  /// The type of the license resource.
  final pulumi.Input<String?>? licenseType;
  /// The geo-location where the resource lives
  final pulumi.Input<String> location;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// The provisioning state, which only appears in the response.
  final pulumi.Input<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Describes the tenant id.
  final pulumi.Input<String?>? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [LicenseResponse].
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [licenseDetails] Describes the properties of a License.
  /// [licenseType] The type of the license resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tenantId] Describes the tenant id.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const LicenseResponse({
    required this.id,
    this.licenseDetails,
    this.licenseType,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'licenseDetails': ?pulumi.Input.mapOptionalInputValue<LicenseDetailsResponse, Map<String, dynamic>>(licenseDetails, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'tags': ?tags,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory LicenseResponse.fromMap(Map<String, dynamic> map) {
    return LicenseResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      licenseDetails: (() { final guardedValue = map['licenseDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
