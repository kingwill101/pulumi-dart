// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_message.dart';

/// {@template pulumi_iotfirmwaredefense_firmware_args_doc}
/// The set of arguments for Firmware.
/// {@endtemplate}
/// {@macro pulumi_iotfirmwaredefense_firmware_args_doc}
class FirmwareArgs {
  /// User-specified description of the firmware.
  final pulumi.Input<String>? description;
  /// File name for a firmware that user uploaded.
  final pulumi.Input<String>? fileName;
  /// File size of the uploaded firmware image.
  final pulumi.Input<double>? fileSize;
  /// The id of the firmware.
  final pulumi.Input<String>? firmwareId;
  /// Firmware model.
  final pulumi.Input<String>? model;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The status of firmware scan.
  final pulumi.Input<String>? status;
  /// A list of errors or other messages generated during firmware analysis
  final pulumi.Input<List<StatusMessage>>? statusMessages;
  /// Firmware vendor.
  final pulumi.Input<String>? vendor;
  /// Firmware version.
  final pulumi.Input<String>? version;
  /// The name of the firmware analysis workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [FirmwareArgs].
  /// [description] User-specified description of the firmware.
  /// [fileName] File name for a firmware that user uploaded.
  /// [fileSize] File size of the uploaded firmware image.
  /// [firmwareId] The id of the firmware.
  /// [model] Firmware model.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] The status of firmware scan.
  /// [statusMessages] A list of errors or other messages generated during firmware analysis
  /// [vendor] Firmware vendor.
  /// [version] Firmware version.
  /// [workspaceName] The name of the firmware analysis workspace.
  FirmwareArgs({
    String? description,
    String? fileName,
    double? fileSize,
    String? firmwareId,
    String? model,
    required String resourceGroupName,
    String? status,
    List<StatusMessage>? statusMessages,
    String? vendor,
    String? version,
    required String workspaceName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      fileName = pulumi.Input.asOptionalInput<String>(fileName),
      fileSize = pulumi.Input.asOptionalInput<double>(fileSize),
      firmwareId = pulumi.Input.asOptionalInput<String>(firmwareId),
      model = pulumi.Input.asOptionalInput<String>(model),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusMessages = pulumi.Input.asOptionalInput<List<StatusMessage>>(statusMessages),
      vendor = pulumi.Input.asOptionalInput<String>(vendor),
      version = pulumi.Input.asOptionalInput<String>(version),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fileName': ?fileName,
      'fileSize': ?fileSize,
      'firmwareId': ?firmwareId,
      'model': ?model,
      'resourceGroupName': resourceGroupName,
      'status': ?status,
      'statusMessages': ?pulumi.Input.mapOptionalInputValue<List<StatusMessage>, List<Map<String, dynamic>>>(statusMessages, (value) => pulumi.Input.encodeList<StatusMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vendor': ?vendor,
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory FirmwareArgs.fromMap(Map<String, dynamic> map) {
    return FirmwareArgs(
      description: map['description'] == null ? null : map['description'] as String,
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
      fileSize: map['fileSize'] == null ? null : map['fileSize'] as double,
      firmwareId: map['firmwareId'] == null ? null : map['firmwareId'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      statusMessages: map['statusMessages'] == null ? null : pulumi.Input.decodeList<StatusMessage>(map['statusMessages'], (value) => StatusMessage.fromMap((value as Map).cast<String, dynamic>())),
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

