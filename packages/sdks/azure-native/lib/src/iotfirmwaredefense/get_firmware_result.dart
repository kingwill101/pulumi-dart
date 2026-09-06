// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_message_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFirmware.
class GetFirmwareResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// User-specified description of the firmware.
  final String? description;
  /// File name for a firmware that user uploaded.
  final String? fileName;
  /// File size of the uploaded firmware image.
  final double? fileSize;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Firmware model.
  final String? model;
  /// The name of the resource
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// The status of firmware scan.
  final String? status;
  /// A list of errors or other messages generated during firmware analysis
  final List<StatusMessageResponse>? statusMessages;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
    this.azureApiVersion,
    this.description,
    this.fileName,
    this.fileSize,
    this.id,
    this.model,
    this.name,
    this.provisioningState,
    String? status,
    this.statusMessages,
    this.systemData,
    this.type,
    this.vendor,
    this.version,
  }) : status = status ?? 'Pending';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'fileName': ?fileName,
      'fileSize': ?fileSize,
      'id': ?id,
      'model': ?model,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'status': ?status,
      'statusMessages': ?(() { final guardedValue = statusMessages; if (guardedValue == null) return null; return pulumi.Input.encodeList<StatusMessageResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'vendor': ?vendor,
      'version': ?version,
    };
  }

  factory GetFirmwareResult.fromMap(Map<String, dynamic> map) {
    return GetFirmwareResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSize: (() { final guardedValue = map['fileSize']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessages: (() { final guardedValue = map['statusMessages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StatusMessageResponse>(guardedValue, (value) => StatusMessageResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
