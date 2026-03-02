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
      authImage: (ContainerImage.fromMap((map['authImage'] as Map).cast<String, dynamic>())).input(),
      brokerImage: (ContainerImage.fromMap((map['brokerImage'] as Map).cast<String, dynamic>())).input(),
      brokerName: map['brokerName'] == null ? null : (map['brokerName'] as String).input(),
      brokerNodeTolerations: map['brokerNodeTolerations'] == null ? null : (NodeTolerations.fromMap((map['brokerNodeTolerations'] as Map).cast<String, dynamic>())).input(),
      cardinality: map['cardinality'] == null ? null : (Cardinality.fromMap((map['cardinality'] as Map).cast<String, dynamic>())).input(),
      diagnostics: map['diagnostics'] == null ? null : (BrokerDiagnostics.fromMap((map['diagnostics'] as Map).cast<String, dynamic>())).input(),
      diskBackedMessageBufferSettings: map['diskBackedMessageBufferSettings'] == null ? null : (DiskBackedMessageBufferSettings.fromMap((map['diskBackedMessageBufferSettings'] as Map).cast<String, dynamic>())).input(),
      encryptInternalTraffic: map['encryptInternalTraffic'] == null ? null : (map['encryptInternalTraffic'] as bool).input(),
      extendedLocation: (ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      healthManagerImage: (ContainerImage.fromMap((map['healthManagerImage'] as Map).cast<String, dynamic>())).input(),
      healthManagerNodeTolerations: map['healthManagerNodeTolerations'] == null ? null : (NodeTolerations.fromMap((map['healthManagerNodeTolerations'] as Map).cast<String, dynamic>())).input(),
      internalCerts: map['internalCerts'] == null ? null : (CertManagerCertOptions.fromMap((map['internalCerts'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      memoryProfile: map['memoryProfile'] == null ? null : (map['memoryProfile'] as String).input(),
      mode: (map['mode'] as String).input(),
      mqName: (map['mqName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

