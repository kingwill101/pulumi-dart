// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image.dart';
import 'extended_location_property.dart';

/// {@template pulumi_iotoperationsmq_diagnostic_service_args_doc}
/// The set of arguments for DiagnosticService.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_diagnostic_service_args_doc}
class DiagnosticServiceArgs {
  /// The frequency at which the data will be exported.
  final pulumi.Input<int>? dataExportFrequencySeconds;
  /// Name of MQ diagnostic resource
  final pulumi.Input<String>? diagnosticServiceName;
  /// Extended Location
  final pulumi.Input<ExtendedLocationProperty> extendedLocation;
  /// The details of Diagnostic Service Docker Image.
  final pulumi.Input<ContainerImage> image;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The format for the logs generated.
  final pulumi.Input<String>? logFormat;
  /// The format for the logs generated.
  final pulumi.Input<String>? logLevel;
  /// The maximum data stored in MiB.
  final pulumi.Input<double>? maxDataStorageSize;
  /// The port at which metrics is exposed.
  final pulumi.Input<int>? metricsPort;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The destination to collect traces. Diagnostic service will push traces to this endpoint
  final pulumi.Input<String>? openTelemetryTracesCollectorAddr;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Metric inactivity timeout.
  final pulumi.Input<int>? staleDataTimeoutSeconds;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiagnosticServiceArgs].
  /// [dataExportFrequencySeconds] The frequency at which the data will be exported.
  /// [diagnosticServiceName] Name of MQ diagnostic resource
  /// [extendedLocation] Extended Location
  /// [image] The details of Diagnostic Service Docker Image.
  /// [location] The geo-location where the resource lives
  /// [logFormat] The format for the logs generated.
  /// [logLevel] The format for the logs generated.
  /// [maxDataStorageSize] The maximum data stored in MiB.
  /// [metricsPort] The port at which metrics is exposed.
  /// [mqName] Name of MQ resource
  /// [openTelemetryTracesCollectorAddr] The destination to collect traces. Diagnostic service will push traces to this endpoint
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [staleDataTimeoutSeconds] Metric inactivity timeout.
  /// [tags] Resource tags.
  DiagnosticServiceArgs({
    this.dataExportFrequencySeconds,
    this.diagnosticServiceName,
    required this.extendedLocation,
    required this.image,
    this.location,
    this.logFormat,
    this.logLevel,
    this.maxDataStorageSize,
    this.metricsPort,
    required this.mqName,
    this.openTelemetryTracesCollectorAddr,
    required this.resourceGroupName,
    this.staleDataTimeoutSeconds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExportFrequencySeconds': ?dataExportFrequencySeconds,
      'diagnosticServiceName': ?diagnosticServiceName,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'image': pulumi.Input.mapInputValue<ContainerImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'location': ?location,
      'logFormat': ?logFormat,
      'logLevel': ?logLevel,
      'maxDataStorageSize': ?maxDataStorageSize,
      'metricsPort': ?metricsPort,
      'mqName': mqName,
      'openTelemetryTracesCollectorAddr': ?openTelemetryTracesCollectorAddr,
      'resourceGroupName': resourceGroupName,
      'staleDataTimeoutSeconds': ?staleDataTimeoutSeconds,
      'tags': ?tags,
    };
  }

  factory DiagnosticServiceArgs.fromMap(Map<String, dynamic> map) {
    return DiagnosticServiceArgs(
      dataExportFrequencySeconds: map['dataExportFrequencySeconds'] == null ? null : (map['dataExportFrequencySeconds'] as int).input(),
      diagnosticServiceName: map['diagnosticServiceName'] == null ? null : (map['diagnosticServiceName'] as String).input(),
      extendedLocation: (ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      image: (ContainerImage.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logFormat: map['logFormat'] == null ? null : (map['logFormat'] as String).input(),
      logLevel: map['logLevel'] == null ? null : (map['logLevel'] as String).input(),
      maxDataStorageSize: map['maxDataStorageSize'] == null ? null : (map['maxDataStorageSize'] as double).input(),
      metricsPort: map['metricsPort'] == null ? null : (map['metricsPort'] as int).input(),
      mqName: (map['mqName'] as String).input(),
      openTelemetryTracesCollectorAddr: map['openTelemetryTracesCollectorAddr'] == null ? null : (map['openTelemetryTracesCollectorAddr'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      staleDataTimeoutSeconds: map['staleDataTimeoutSeconds'] == null ? null : (map['staleDataTimeoutSeconds'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

