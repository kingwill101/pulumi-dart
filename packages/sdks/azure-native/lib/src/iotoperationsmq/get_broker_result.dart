// ignore_for_file: unused_element, unnecessary_cast

import 'broker_diagnostics_response.dart';
import 'cardinality_response.dart';
import 'cert_manager_cert_options_response.dart';
import 'container_image_response.dart';
import 'disk_backed_message_buffer_settings_response.dart';
import 'extended_location_property_response.dart';
import 'node_tolerations_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBroker.
class GetBrokerResult {
  /// The details of Authentication Docker Image.
  final ContainerImageResponse authImage;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The details of Broker Docker Image.
  final ContainerImageResponse brokerImage;
  /// The details of Node Tolerations for Broker Pods.
  final NodeTolerationsResponse? brokerNodeTolerations;
  /// The cardinality details of the broker.
  final CardinalityResponse? cardinality;
  /// The diagnostic details of the broker deployment.
  final BrokerDiagnosticsResponse? diagnostics;
  /// The settings of the disk-backed message buffer.
  final DiskBackedMessageBufferSettingsResponse? diskBackedMessageBufferSettings;
  /// The setting to enable or disable encryption of internal Traffic.
  final bool? encryptInternalTraffic;
  /// Extended Location
  final ExtendedLocationPropertyResponse extendedLocation;
  /// The details of Health Manager Docker Image.
  final ContainerImageResponse healthManagerImage;
  /// The details of Node Tolerations for Health Manager Pods.
  final NodeTolerationsResponse? healthManagerNodeTolerations;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Details of the internal CA cert that will be used to secure communication between pods.
  final CertManagerCertOptionsResponse? internalCerts;
  /// The geo-location where the resource lives
  final String location;
  /// Memory profile of broker.
  final String? memoryProfile;
  /// The Running Mode of the Broker Deployment.
  final String mode;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetBrokerResult].
  /// [authImage] The details of Authentication Docker Image.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [brokerImage] The details of Broker Docker Image.
  /// [brokerNodeTolerations] The details of Node Tolerations for Broker Pods.
  /// [cardinality] The cardinality details of the broker.
  /// [diagnostics] The diagnostic details of the broker deployment.
  /// [diskBackedMessageBufferSettings] The settings of the disk-backed message buffer.
  /// [encryptInternalTraffic] The setting to enable or disable encryption of internal Traffic.
  /// [extendedLocation] Extended Location
  /// [healthManagerImage] The details of Health Manager Docker Image.
  /// [healthManagerNodeTolerations] The details of Node Tolerations for Health Manager Pods.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [internalCerts] Details of the internal CA cert that will be used to secure communication between pods.
  /// [location] The geo-location where the resource lives
  /// [memoryProfile] Memory profile of broker.
  /// [mode] The Running Mode of the Broker Deployment.
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBrokerResult({
    required this.authImage,
    required this.azureApiVersion,
    required this.brokerImage,
    this.brokerNodeTolerations,
    this.cardinality,
    this.diagnostics,
    this.diskBackedMessageBufferSettings,
    this.encryptInternalTraffic,
    required this.extendedLocation,
    required this.healthManagerImage,
    this.healthManagerNodeTolerations,
    required this.id,
    this.internalCerts,
    required this.location,
    this.memoryProfile,
    required this.mode,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authImage': authImage.toMap(),
      'azureApiVersion': azureApiVersion,
      'brokerImage': brokerImage.toMap(),
      'brokerNodeTolerations': ?brokerNodeTolerations == null ? null : brokerNodeTolerations!.toMap(),
      'cardinality': ?cardinality == null ? null : cardinality!.toMap(),
      'diagnostics': ?diagnostics == null ? null : diagnostics!.toMap(),
      'diskBackedMessageBufferSettings': ?diskBackedMessageBufferSettings == null ? null : diskBackedMessageBufferSettings!.toMap(),
      'encryptInternalTraffic': ?encryptInternalTraffic,
      'extendedLocation': extendedLocation.toMap(),
      'healthManagerImage': healthManagerImage.toMap(),
      'healthManagerNodeTolerations': ?healthManagerNodeTolerations == null ? null : healthManagerNodeTolerations!.toMap(),
      'id': id,
      'internalCerts': ?internalCerts == null ? null : internalCerts!.toMap(),
      'location': location,
      'memoryProfile': ?memoryProfile,
      'mode': mode,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetBrokerResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerResult(
      authImage: ContainerImageResponse.fromMap((map['authImage'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      brokerImage: ContainerImageResponse.fromMap((map['brokerImage'] as Map).cast<String, dynamic>()),
      brokerNodeTolerations: map['brokerNodeTolerations'] == null ? null : NodeTolerationsResponse.fromMap((map['brokerNodeTolerations']! as Map).cast<String, dynamic>()),
      cardinality: map['cardinality'] == null ? null : CardinalityResponse.fromMap((map['cardinality']! as Map).cast<String, dynamic>()),
      diagnostics: map['diagnostics'] == null ? null : BrokerDiagnosticsResponse.fromMap((map['diagnostics']! as Map).cast<String, dynamic>()),
      diskBackedMessageBufferSettings: map['diskBackedMessageBufferSettings'] == null ? null : DiskBackedMessageBufferSettingsResponse.fromMap((map['diskBackedMessageBufferSettings']! as Map).cast<String, dynamic>()),
      encryptInternalTraffic: map['encryptInternalTraffic'] == null ? null : map['encryptInternalTraffic']! as bool,
      extendedLocation: ExtendedLocationPropertyResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      healthManagerImage: ContainerImageResponse.fromMap((map['healthManagerImage'] as Map).cast<String, dynamic>()),
      healthManagerNodeTolerations: map['healthManagerNodeTolerations'] == null ? null : NodeTolerationsResponse.fromMap((map['healthManagerNodeTolerations']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      internalCerts: map['internalCerts'] == null ? null : CertManagerCertOptionsResponse.fromMap((map['internalCerts']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      memoryProfile: map['memoryProfile'] == null ? null : map['memoryProfile']! as String,
      mode: map['mode'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

