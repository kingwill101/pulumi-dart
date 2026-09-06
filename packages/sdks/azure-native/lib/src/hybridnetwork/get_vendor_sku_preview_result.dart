// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getVendorSkuPreview.
class GetVendorSkuPreviewResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ARM ID of the resource.
  final String? id;
  /// The preview subscription ID.
  final String? name;
  /// The provisioning state of the PreviewSubscription resource.
  final String? provisioningState;
  /// The system meta data relating to this resource.
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetVendorSkuPreviewResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ARM ID of the resource.
  /// [name] The preview subscription ID.
  /// [provisioningState] The provisioning state of the PreviewSubscription resource.
  /// [systemData] The system meta data relating to this resource.
  /// [type] The type of the resource.
  const GetVendorSkuPreviewResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetVendorSkuPreviewResult.fromMap(Map<String, dynamic> map) {
    return GetVendorSkuPreviewResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
