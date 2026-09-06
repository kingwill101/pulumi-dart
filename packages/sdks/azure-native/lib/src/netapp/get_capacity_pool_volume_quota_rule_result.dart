// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCapacityPoolVolumeQuotaRule.
class GetCapacityPoolVolumeQuotaRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Gets the status of the VolumeQuotaRule at the time the operation was called.
  final String? provisioningState;
  /// Size of quota
  final double? quotaSizeInKiBs;
  /// UserID/GroupID/SID based on the quota target type. UserID and groupID can be found by running ‘id’ or ‘getent’ command for the user or group and SID can be found by running &lt;wmic useraccount where name='user-name' get sid&gt;
  final String? quotaTarget;
  /// Type of quota
  final String? quotaType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetCapacityPoolVolumeQuotaRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Gets the status of the VolumeQuotaRule at the time the operation was called.
  /// [quotaSizeInKiBs] Size of quota
  /// [quotaTarget] UserID/GroupID/SID based on the quota target type. UserID and groupID can be found by running ‘id’ or ‘getent’ command for the user or group and SID can be found by running &lt;wmic useraccount where name='user-name' get sid&gt;
  /// [quotaType] Type of quota
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCapacityPoolVolumeQuotaRuleResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.quotaSizeInKiBs,
    this.quotaTarget,
    this.quotaType,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'quotaSizeInKiBs': ?quotaSizeInKiBs,
      'quotaTarget': ?quotaTarget,
      'quotaType': ?quotaType,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetCapacityPoolVolumeQuotaRuleResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolVolumeQuotaRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaSizeInKiBs: (() { final guardedValue = map['quotaSizeInKiBs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      quotaTarget: (() { final guardedValue = map['quotaTarget']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaType: (() { final guardedValue = map['quotaType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
