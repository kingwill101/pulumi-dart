// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_message_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFirmware.
class GetFirmwareResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// User-specified description of the firmware.
  final String? description;
  /// File name for a firmware that user uploaded.
  final String? fileName;
  /// File size of the uploaded firmware image.
  final double? fileSize;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Firmware model.
  final String? model;
  /// The name of the resource
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// The status of firmware scan.
  final String? status;
  /// A list of errors or other messages generated during firmware analysis
  final List<StatusMessageResponse>? statusMessages;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Firmware vendor.
  final String? vendor;
  /// Firmware version.
  final String? version;

  /// Creates a new [GetFirmwareResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] User-specified description of the firmware.
  /// [fileName] File name for a firmware that user uploaded.
  /// [fileSize] File size of the uploaded firmware image.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [model] Firmware model.
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [status] The status of firmware scan.
  /// [statusMessages] A list of errors or other messages generated during firmware analysis
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vendor] Firmware vendor.
  /// [version] Firmware version.
  GetFirmwareResult({
    required this.azureApiVersion,
    this.description,
    this.fileName,
    this.fileSize,
    required this.id,
    this.model,
    required this.name,
    required this.provisioningState,
    this.status,
    this.statusMessages,
    required this.systemData,
    required this.type,
    this.vendor,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'fileName': ?fileName,
      'fileSize': ?fileSize,
      'id': id,
      'model': ?model,
      'name': name,
      'provisioningState': provisioningState,
      'status': ?status,
      'statusMessages': ?statusMessages == null ? null : pulumi.Input.encodeList<StatusMessageResponse, Map<String, dynamic>>(statusMessages!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'type': type,
      'vendor': ?vendor,
      'version': ?version,
    };
  }

  factory GetFirmwareResult.fromMap(Map<String, dynamic> map) {
    return GetFirmwareResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      fileName: map['fileName'] == null ? null : map['fileName']! as String,
      fileSize: map['fileSize'] == null ? null : map['fileSize']! as double,
      id: map['id'] as String,
      model: map['model'] == null ? null : map['model']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] == null ? null : map['status']! as String,
      statusMessages: map['statusMessages'] == null ? null : pulumi.Input.decodeList<StatusMessageResponse>(map['statusMessages']!, (value) => StatusMessageResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      vendor: map['vendor'] == null ? null : map['vendor']! as String,
      version: map['version'] == null ? null : map['version']! as String,
    );
  }
}

