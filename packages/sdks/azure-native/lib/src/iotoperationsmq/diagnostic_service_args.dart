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
      'extendedLocation':
          pulumi.Input.mapInputValue<
            ExtendedLocationProperty,
            Map<String, dynamic>
          >(extendedLocation, (value) => value.toMap()),
      'image': pulumi.Input.mapInputValue<ContainerImage, Map<String, dynamic>>(
        image,
        (value) => value.toMap(),
      ),
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
      dataExportFrequencySeconds: (() {
        final guardedValue = map['dataExportFrequencySeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      diagnosticServiceName: (() {
        final guardedValue = map['diagnosticServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extendedLocation: pulumi.Input.fromValue(
        ExtendedLocationProperty.fromMap(
          (map['extendedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      image: pulumi.Input.fromValue(
        ContainerImage.fromMap((map['image']! as Map).cast<String, dynamic>()),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logFormat: (() {
        final guardedValue = map['logFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logLevel: (() {
        final guardedValue = map['logLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxDataStorageSize: (() {
        final guardedValue = map['maxDataStorageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      metricsPort: (() {
        final guardedValue = map['metricsPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      openTelemetryTracesCollectorAddr: (() {
        final guardedValue = map['openTelemetryTracesCollectorAddr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      staleDataTimeoutSeconds: (() {
        final guardedValue = map['staleDataTimeoutSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
