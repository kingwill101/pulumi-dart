// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_diagnostics.dart';
import 'cardinality.dart';
import 'cert_manager_cert_options.dart';
import 'container_image.dart';
import 'disk_backed_message_buffer_settings.dart';
import 'extended_location_property.dart';
import 'node_tolerations.dart';

/// {@template pulumi_iotoperationsmq_broker_args_doc}
/// The set of arguments for Broker.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_broker_args_doc}
class BrokerArgs {
  /// The details of Authentication Docker Image.
  final pulumi.Input<ContainerImage> authImage;
  /// The details of Broker Docker Image.
  final pulumi.Input<ContainerImage> brokerImage;
  /// Name of MQ broker resource
  final pulumi.Input<String>? brokerName;
  /// The details of Node Tolerations for Broker Pods.
  final pulumi.Input<NodeTolerations>? brokerNodeTolerations;
  /// The cardinality details of the broker.
  final pulumi.Input<Cardinality>? cardinality;
  /// The diagnostic details of the broker deployment.
  final pulumi.Input<BrokerDiagnostics>? diagnostics;
  /// The settings of the disk-backed message buffer.
  final pulumi.Input<DiskBackedMessageBufferSettings>? diskBackedMessageBufferSettings;
  /// The setting to enable or disable encryption of internal Traffic.
  final pulumi.Input<bool>? encryptInternalTraffic;
  /// Extended Location
  final pulumi.Input<ExtendedLocationProperty> extendedLocation;
  /// The details of Health Manager Docker Image.
  final pulumi.Input<ContainerImage> healthManagerImage;
  /// The details of Node Tolerations for Health Manager Pods.
  final pulumi.Input<NodeTolerations>? healthManagerNodeTolerations;
  /// Details of the internal CA cert that will be used to secure communication between pods.
  final pulumi.Input<CertManagerCertOptions>? internalCerts;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Memory profile of broker.
  final pulumi.Input<String>? memoryProfile;
  /// The Running Mode of the Broker Deployment.
  final pulumi.Input<String> mode;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BrokerArgs].
  /// [authImage] The details of Authentication Docker Image.
  /// [brokerImage] The details of Broker Docker Image.
  /// [brokerName] Name of MQ broker resource
  /// [brokerNodeTolerations] The details of Node Tolerations for Broker Pods.
  /// [cardinality] The cardinality details of the broker.
  /// [diagnostics] The diagnostic details of the broker deployment.
  /// [diskBackedMessageBufferSettings] The settings of the disk-backed message buffer.
  /// [encryptInternalTraffic] The setting to enable or disable encryption of internal Traffic.
  /// [extendedLocation] Extended Location
  /// [healthManagerImage] The details of Health Manager Docker Image.
  /// [healthManagerNodeTolerations] The details of Node Tolerations for Health Manager Pods.
  /// [internalCerts] Details of the internal CA cert that will be used to secure communication between pods.
  /// [location] The geo-location where the resource lives
  /// [memoryProfile] Memory profile of broker.
  /// [mode] The Running Mode of the Broker Deployment.
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  BrokerArgs({
    required this.authImage,
    required this.brokerImage,
    this.brokerName,
    this.brokerNodeTolerations,
    this.cardinality,
    this.diagnostics,
    this.diskBackedMessageBufferSettings,
    this.encryptInternalTraffic,
    required this.extendedLocation,
    required this.healthManagerImage,
    this.healthManagerNodeTolerations,
    this.internalCerts,
    this.location,
    this.memoryProfile,
    required this.mode,
    required this.mqName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authImage': pulumi.Input.mapInputValue<ContainerImage, Map<String, dynamic>>(authImage, (value) => value.toMap()),
      'brokerImage': pulumi.Input.mapInputValue<ContainerImage, Map<String, dynamic>>(brokerImage, (value) => value.toMap()),
      'brokerName': ?brokerName,
      'brokerNodeTolerations': ?pulumi.Input.mapOptionalInputValue<NodeTolerations, Map<String, dynamic>>(brokerNodeTolerations, (value) => value.toMap()),
      'cardinality': ?pulumi.Input.mapOptionalInputValue<Cardinality, Map<String, dynamic>>(cardinality, (value) => value.toMap()),
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<BrokerDiagnostics, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'diskBackedMessageBufferSettings': ?pulumi.Input.mapOptionalInputValue<DiskBackedMessageBufferSettings, Map<String, dynamic>>(diskBackedMessageBufferSettings, (value) => value.toMap()),
      'encryptInternalTraffic': ?encryptInternalTraffic,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'healthManagerImage': pulumi.Input.mapInputValue<ContainerImage, Map<String, dynamic>>(healthManagerImage, (value) => value.toMap()),
      'healthManagerNodeTolerations': ?pulumi.Input.mapOptionalInputValue<NodeTolerations, Map<String, dynamic>>(healthManagerNodeTolerations, (value) => value.toMap()),
      'internalCerts': ?pulumi.Input.mapOptionalInputValue<CertManagerCertOptions, Map<String, dynamic>>(internalCerts, (value) => value.toMap()),
      'location': ?location,
      'memoryProfile': ?memoryProfile,
      'mode': mode,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory BrokerArgs.fromMap(Map<String, dynamic> map) {
    return BrokerArgs(
      authImage: pulumi.Input.fromValue(ContainerImage.fromMap((map['authImage']! as Map).cast<String, dynamic>())),
      brokerImage: pulumi.Input.fromValue(ContainerImage.fromMap((map['brokerImage']! as Map).cast<String, dynamic>())),
      brokerName: (() { final guardedValue = map['brokerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      brokerNodeTolerations: (() { final guardedValue = map['brokerNodeTolerations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeTolerations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cardinality: (() { final guardedValue = map['cardinality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Cardinality.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskBackedMessageBufferSettings: (() { final guardedValue = map['diskBackedMessageBufferSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskBackedMessageBufferSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptInternalTraffic: (() { final guardedValue = map['encryptInternalTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocationProperty.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      healthManagerImage: pulumi.Input.fromValue(ContainerImage.fromMap((map['healthManagerImage']! as Map).cast<String, dynamic>())),
      healthManagerNodeTolerations: (() { final guardedValue = map['healthManagerNodeTolerations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeTolerations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      internalCerts: (() { final guardedValue = map['internalCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertManagerCertOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryProfile: (() { final guardedValue = map['memoryProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

