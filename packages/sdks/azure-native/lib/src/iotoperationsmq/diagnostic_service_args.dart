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
    pulumi.Output<int>? dataExportFrequencySeconds,
    pulumi.Output<String>? diagnosticServiceName,
    required pulumi.Output<ExtendedLocationProperty> extendedLocation,
    required pulumi.Output<ContainerImage> image,
    pulumi.Output<String>? location,
    pulumi.Output<String>? logFormat,
    pulumi.Output<String>? logLevel,
    pulumi.Output<double>? maxDataStorageSize,
    pulumi.Output<int>? metricsPort,
    required pulumi.Output<String> mqName,
    pulumi.Output<String>? openTelemetryTracesCollectorAddr,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<int>? staleDataTimeoutSeconds,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dataExportFrequencySeconds = pulumi.Input.asOptionalInput<int>(dataExportFrequencySeconds),
      diagnosticServiceName = pulumi.Input.asOptionalInput<String>(diagnosticServiceName),
      extendedLocation = pulumi.Input.asInput<ExtendedLocationProperty>(extendedLocation),
      image = pulumi.Input.asInput<ContainerImage>(image),
      location = pulumi.Input.asOptionalInput<String>(location),
      logFormat = pulumi.Input.asOptionalInput<String>(logFormat),
      logLevel = pulumi.Input.asOptionalInput<String>(logLevel),
      maxDataStorageSize = pulumi.Input.asOptionalInput<double>(maxDataStorageSize),
      metricsPort = pulumi.Input.asOptionalInput<int>(metricsPort),
      mqName = pulumi.Input.asInput<String>(mqName),
      openTelemetryTracesCollectorAddr = pulumi.Input.asOptionalInput<String>(openTelemetryTracesCollectorAddr),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      staleDataTimeoutSeconds = pulumi.Input.asOptionalInput<int>(staleDataTimeoutSeconds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      dataExportFrequencySeconds: map['dataExportFrequencySeconds'] == null ? null : pulumi.Output.create<int>(map['dataExportFrequencySeconds'] as int),
      diagnosticServiceName: map['diagnosticServiceName'] == null ? null : pulumi.Output.create<String>(map['diagnosticServiceName'] as String),
      extendedLocation: pulumi.Output.create<ExtendedLocationProperty>(ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      image: pulumi.Output.create<ContainerImage>(ContainerImage.fromMap((map['image'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logFormat: map['logFormat'] == null ? null : pulumi.Output.create<String>(map['logFormat'] as String),
      logLevel: map['logLevel'] == null ? null : pulumi.Output.create<String>(map['logLevel'] as String),
      maxDataStorageSize: map['maxDataStorageSize'] == null ? null : pulumi.Output.create<double>(map['maxDataStorageSize'] as double),
      metricsPort: map['metricsPort'] == null ? null : pulumi.Output.create<int>(map['metricsPort'] as int),
      mqName: pulumi.Output.create<String>(map['mqName'] as String),
      openTelemetryTracesCollectorAddr: map['openTelemetryTracesCollectorAddr'] == null ? null : pulumi.Output.create<String>(map['openTelemetryTracesCollectorAddr'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      staleDataTimeoutSeconds: map['staleDataTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['staleDataTimeoutSeconds'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

