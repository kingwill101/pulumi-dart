// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_configuration.dart';
import 'encryption.dart';
import 'service_managed_identity_identity.dart';
import 'storage_configuration.dart';

/// {@template pulumi_healthcareapis_dicom_service_args_doc}
/// The set of arguments for DicomService.
/// {@endtemplate}
/// {@macro pulumi_healthcareapis_dicom_service_args_doc}
class DicomServiceArgs {
  /// Dicom Service Cors configuration.
  final pulumi.Input<CorsConfiguration>? corsConfiguration;

  /// The name of DICOM Service resource.
  final pulumi.Input<String>? dicomServiceName;

  /// If data partitions is enabled or not.
  final pulumi.Input<bool>? enableDataPartitions;

  /// The encryption settings of the DICOM service
  final pulumi.Input<Encryption>? encryption;

  /// Setting indicating whether the service has a managed identity associated with it.
  final pulumi.Input<ServiceManagedIdentityIdentity>? identity;

  /// The resource location.
  final pulumi.Input<String>? location;

  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;

  /// The configuration of external storage account
  final pulumi.Input<StorageConfiguration>? storageConfiguration;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name of workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DicomServiceArgs].
  /// [corsConfiguration] Dicom Service Cors configuration.
  /// [dicomServiceName] The name of DICOM Service resource.
  /// [enableDataPartitions] If data partitions is enabled or not.
  /// [encryption] The encryption settings of the DICOM service
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [location] The resource location.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [storageConfiguration] The configuration of external storage account
  /// [tags] Resource tags.
  /// [workspaceName] The name of workspace resource.
  DicomServiceArgs({
    this.corsConfiguration,
    this.dicomServiceName,
    this.enableDataPartitions,
    this.encryption,
    this.identity,
    this.location,
    required this.resourceGroupName,
    this.storageConfiguration,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            CorsConfiguration,
            Map<String, dynamic>
          >(corsConfiguration, (value) => value.toMap()),
      'dicomServiceName': ?dicomServiceName,
      'enableDataPartitions': ?enableDataPartitions,
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(
            encryption,
            (value) => value.toMap(),
          ),
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceManagedIdentityIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'storageConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            StorageConfiguration,
            Map<String, dynamic>
          >(storageConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory DicomServiceArgs.fromMap(Map<String, dynamic> map) {
    return DicomServiceArgs(
      corsConfiguration: (() {
        final guardedValue = map['corsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CorsConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dicomServiceName: (() {
        final guardedValue = map['dicomServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDataPartitions: (() {
        final guardedValue = map['enableDataPartitions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Encryption.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceManagedIdentityIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      storageConfiguration: (() {
        final guardedValue = map['storageConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
