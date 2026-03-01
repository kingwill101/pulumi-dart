// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_capture_filter_response.dart';
import 'packet_capture_machine_scope_response.dart';
import 'packet_capture_settings_response.dart';
import 'packet_capture_storage_location_response.dart';

/// Result data returned by getPacketCapture.
class GetPacketCaptureResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Number of bytes captured per packet, the remaining bytes are truncated.
  final double? bytesToCapturePerPacket;
  /// The capture setting holds the 'FileCount', 'FileSizeInBytes', 'SessionTimeLimitInSeconds' values.
  final PacketCaptureSettingsResponse? captureSettings;
  /// This continuous capture is a nullable boolean, which can hold 'null', 'true' or 'false' value. If we do not pass this parameter, it would be consider as 'null', default value is 'null'.
  final bool? continuousCapture;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// A list of packet capture filters.
  final List<PacketCaptureFilterResponse>? filters;
  /// ID of the packet capture operation.
  final String id;
  /// Name of the packet capture session.
  final String name;
  /// The provisioning state of the packet capture session.
  final String provisioningState;
  /// A list of AzureVMSS instances which can be included or excluded to run packet capture. If both included and excluded are empty, then the packet capture will run on all instances of AzureVMSS.
  final PacketCaptureMachineScopeResponse? scope;
  /// The storage location for a packet capture session.
  final PacketCaptureStorageLocationResponse storageLocation;
  /// The ID of the targeted resource, only AzureVM and AzureVMSS as target type are currently supported.
  final String target;
  /// Target type of the resource provided.
  final String? targetType;
  /// Maximum duration of the capture session in seconds.
  final int? timeLimitInSeconds;
  /// Maximum size of the capture output.
  final double? totalBytesPerSession;

  /// Creates a new [GetPacketCaptureResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bytesToCapturePerPacket] Number of bytes captured per packet, the remaining bytes are truncated.
  /// [captureSettings] The capture setting holds the 'FileCount', 'FileSizeInBytes', 'SessionTimeLimitInSeconds' values.
  /// [continuousCapture] This continuous capture is a nullable boolean, which can hold 'null', 'true' or 'false' value. If we do not pass this parameter, it would be consider as 'null', default value is 'null'.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [filters] A list of packet capture filters.
  /// [id] ID of the packet capture operation.
  /// [name] Name of the packet capture session.
  /// [provisioningState] The provisioning state of the packet capture session.
  /// [scope] A list of AzureVMSS instances which can be included or excluded to run packet capture. If both included and excluded are empty, then the packet capture will run on all instances of AzureVMSS.
  /// [storageLocation] The storage location for a packet capture session.
  /// [target] The ID of the targeted resource, only AzureVM and AzureVMSS as target type are currently supported.
  /// [targetType] Target type of the resource provided.
  /// [timeLimitInSeconds] Maximum duration of the capture session in seconds.
  /// [totalBytesPerSession] Maximum size of the capture output.
  GetPacketCaptureResult({
    required this.azureApiVersion,
    this.bytesToCapturePerPacket,
    this.captureSettings,
    this.continuousCapture,
    required this.etag,
    this.filters,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.scope,
    required this.storageLocation,
    required this.target,
    this.targetType,
    this.timeLimitInSeconds,
    this.totalBytesPerSession,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'bytesToCapturePerPacket': ?bytesToCapturePerPacket,
      'captureSettings': ?captureSettings == null ? null : captureSettings!.toMap(),
      'continuousCapture': ?continuousCapture,
      'etag': etag,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<PacketCaptureFilterResponse, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'scope': ?scope == null ? null : scope!.toMap(),
      'storageLocation': storageLocation.toMap(),
      'target': target,
      'targetType': ?targetType,
      'timeLimitInSeconds': ?timeLimitInSeconds,
      'totalBytesPerSession': ?totalBytesPerSession,
    };
  }

  factory GetPacketCaptureResult.fromMap(Map<String, dynamic> map) {
    return GetPacketCaptureResult(
      azureApiVersion: map['azureApiVersion'] as String,
      bytesToCapturePerPacket: map['bytesToCapturePerPacket'] == null ? null : map['bytesToCapturePerPacket'] as double,
      captureSettings: map['captureSettings'] == null ? null : PacketCaptureSettingsResponse.fromMap((map['captureSettings'] as Map).cast<String, dynamic>()),
      continuousCapture: map['continuousCapture'] == null ? null : map['continuousCapture'] as bool,
      etag: map['etag'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<PacketCaptureFilterResponse>(map['filters'], (value) => PacketCaptureFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      scope: map['scope'] == null ? null : PacketCaptureMachineScopeResponse.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      storageLocation: PacketCaptureStorageLocationResponse.fromMap((map['storageLocation'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
      targetType: map['targetType'] == null ? null : map['targetType'] as String,
      timeLimitInSeconds: map['timeLimitInSeconds'] == null ? null : map['timeLimitInSeconds'] as int,
      totalBytesPerSession: map['totalBytesPerSession'] == null ? null : map['totalBytesPerSession'] as double,
    );
  }
}

