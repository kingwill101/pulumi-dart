// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'add_recovery_services_provider_input_properties.dart';

/// {@template pulumi_recoveryservices_replication_recovery_services_provider_args_doc}
/// The set of arguments for ReplicationRecoveryServicesProvider.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replication_recovery_services_provider_args_doc}
class ReplicationRecoveryServicesProviderArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// The properties of an add provider request.
  final pulumi.Input<AddRecoveryServicesProviderInputProperties> properties;
  /// Recovery services provider name.
  final pulumi.Input<String>? providerName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ReplicationRecoveryServicesProviderArgs].
  /// [fabricName] Fabric name.
  /// [properties] The properties of an add provider request.
  /// [providerName] Recovery services provider name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  ReplicationRecoveryServicesProviderArgs({
    required String fabricName,
    required AddRecoveryServicesProviderInputProperties properties,
    String? providerName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      properties = pulumi.Input.asInput<AddRecoveryServicesProviderInputProperties>(properties),
      providerName = pulumi.Input.asOptionalInput<String>(providerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'properties': pulumi.Input.mapInputValue<AddRecoveryServicesProviderInputProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerName': ?providerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ReplicationRecoveryServicesProviderArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationRecoveryServicesProviderArgs(
      fabricName: map['fabricName'] as String,
      properties: AddRecoveryServicesProviderInputProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      providerName: map['providerName'] == null ? null : map['providerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

