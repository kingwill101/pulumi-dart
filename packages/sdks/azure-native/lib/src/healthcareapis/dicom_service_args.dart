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
    pulumi.Output<CorsConfiguration>? corsConfiguration,
    pulumi.Output<String>? dicomServiceName,
    pulumi.Output<bool>? enableDataPartitions,
    pulumi.Output<Encryption>? encryption,
    pulumi.Output<ServiceManagedIdentityIdentity>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<StorageConfiguration>? storageConfiguration,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      corsConfiguration = pulumi.Input.asOptionalInput<CorsConfiguration>(corsConfiguration),
      dicomServiceName = pulumi.Input.asOptionalInput<String>(dicomServiceName),
      enableDataPartitions = pulumi.Input.asOptionalInput<bool>(enableDataPartitions),
      encryption = pulumi.Input.asOptionalInput<Encryption>(encryption),
      identity = pulumi.Input.asOptionalInput<ServiceManagedIdentityIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageConfiguration = pulumi.Input.asOptionalInput<StorageConfiguration>(storageConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsConfiguration': ?pulumi.Input.mapOptionalInputValue<CorsConfiguration, Map<String, dynamic>>(corsConfiguration, (value) => value.toMap()),
      'dicomServiceName': ?dicomServiceName,
      'enableDataPartitions': ?enableDataPartitions,
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceManagedIdentityIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'storageConfiguration': ?pulumi.Input.mapOptionalInputValue<StorageConfiguration, Map<String, dynamic>>(storageConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory DicomServiceArgs.fromMap(Map<String, dynamic> map) {
    return DicomServiceArgs(
      corsConfiguration: map['corsConfiguration'] == null ? null : pulumi.Output.create<CorsConfiguration>(CorsConfiguration.fromMap((map['corsConfiguration'] as Map).cast<String, dynamic>())),
      dicomServiceName: map['dicomServiceName'] == null ? null : pulumi.Output.create<String>(map['dicomServiceName'] as String),
      enableDataPartitions: map['enableDataPartitions'] == null ? null : pulumi.Output.create<bool>(map['enableDataPartitions'] as bool),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<Encryption>(Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ServiceManagedIdentityIdentity>(ServiceManagedIdentityIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageConfiguration: map['storageConfiguration'] == null ? null : pulumi.Output.create<StorageConfiguration>(StorageConfiguration.fromMap((map['storageConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

