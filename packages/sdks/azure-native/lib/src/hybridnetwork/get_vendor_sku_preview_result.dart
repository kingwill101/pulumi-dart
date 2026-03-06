// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getVendorSkuPreview.
class GetVendorSkuPreviewResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The ARM ID of the resource.
  final String id;
  /// The preview subscription ID.
  final String name;
  /// The provisioning state of the PreviewSubscription resource.
  final String provisioningState;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetVendorSkuPreviewResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ARM ID of the resource.
  /// [name] The preview subscription ID.
  /// [provisioningState] The provisioning state of the PreviewSubscription resource.
  /// [systemData] The system meta data relating to this resource.
  /// [type] The type of the resource.
  const GetVendorSkuPreviewResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetVendorSkuPreviewResult.fromMap(Map<String, dynamic> map) {
    return GetVendorSkuPreviewResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

