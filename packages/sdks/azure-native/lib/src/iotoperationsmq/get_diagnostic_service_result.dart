// ignore_for_file: unused_element, unnecessary_cast

import 'container_image_response.dart';
import 'extended_location_property_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDiagnosticService.
class GetDiagnosticServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The frequency at which the data will be exported.
  final int? dataExportFrequencySeconds;
  /// Extended Location
  final ExtendedLocationPropertyResponse extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The details of Diagnostic Service Docker Image.
  final ContainerImageResponse image;
  /// The geo-location where the resource lives
  final String location;
  /// The format for the logs generated.
  final String? logFormat;
  /// The format for the logs generated.
  final String? logLevel;
  /// The maximum data stored in MiB.
  final double? maxDataStorageSize;
  /// The port at which metrics is exposed.
  final int? metricsPort;
  /// The name of the resource
  final String name;
  /// The destination to collect traces. Diagnostic service will push traces to this endpoint
  final String? openTelemetryTracesCollectorAddr;
  /// The status of the last operation.
  final String provisioningState;
  /// Metric inactivity timeout.
  final int? staleDataTimeoutSeconds;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDiagnosticServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataExportFrequencySeconds] The frequency at which the data will be exported.
  /// [extendedLocation] Extended Location
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [image] The details of Diagnostic Service Docker Image.
  /// [location] The geo-location where the resource lives
  /// [logFormat] The format for the logs generated.
  /// [logLevel] The format for the logs generated.
  /// [maxDataStorageSize] The maximum data stored in MiB.
  /// [metricsPort] The port at which metrics is exposed.
  /// [name] The name of the resource
  /// [openTelemetryTracesCollectorAddr] The destination to collect traces. Diagnostic service will push traces to this endpoint
  /// [provisioningState] The status of the last operation.
  /// [staleDataTimeoutSeconds] Metric inactivity timeout.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDiagnosticServiceResult({
    required this.azureApiVersion,
    this.dataExportFrequencySeconds,
    required this.extendedLocation,
    required this.id,
    required this.image,
    required this.location,
    this.logFormat,
    this.logLevel,
    this.maxDataStorageSize,
    this.metricsPort,
    required this.name,
    this.openTelemetryTracesCollectorAddr,
    required this.provisioningState,
    this.staleDataTimeoutSeconds,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataExportFrequencySeconds': ?dataExportFrequencySeconds,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'image': image.toMap(),
      'location': location,
      'logFormat': ?logFormat,
      'logLevel': ?logLevel,
      'maxDataStorageSize': ?maxDataStorageSize,
      'metricsPort': ?metricsPort,
      'name': name,
      'openTelemetryTracesCollectorAddr': ?openTelemetryTracesCollectorAddr,
      'provisioningState': provisioningState,
      'staleDataTimeoutSeconds': ?staleDataTimeoutSeconds,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDiagnosticServiceResult.fromMap(Map<String, dynamic> map) {
    return GetDiagnosticServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataExportFrequencySeconds: (() { final guardedValue = map['dataExportFrequencySeconds']; if (guardedValue == null) return null; return guardedValue as int; })(),
      extendedLocation: ExtendedLocationPropertyResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      image: ContainerImageResponse.fromMap((map['image']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      logFormat: (() { final guardedValue = map['logFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxDataStorageSize: (() { final guardedValue = map['maxDataStorageSize']; if (guardedValue == null) return null; return guardedValue as double; })(),
      metricsPort: (() { final guardedValue = map['metricsPort']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      openTelemetryTracesCollectorAddr: (() { final guardedValue = map['openTelemetryTracesCollectorAddr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      staleDataTimeoutSeconds: (() { final guardedValue = map['staleDataTimeoutSeconds']; if (guardedValue == null) return null; return guardedValue as int; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

