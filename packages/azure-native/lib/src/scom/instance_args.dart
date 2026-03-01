// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity.dart';
import 'monitoring_instance_properties.dart';

/// {@template pulumi_scom_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_scom_instance_args_doc}
class InstanceArgs {
  /// The Azure Active Directory identity of the SCOM instance
  final pulumi.Input<ManagedIdentity>? identity;
  /// Name of the Azure Monitor Operations Manager Managed Instance (SCOM MI)
  final pulumi.Input<String>? instanceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The properties of a SCOM instance resource
  final pulumi.Input<MonitoringInstanceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Validation mode for the SCOM managed instance
  final pulumi.Input<bool>? validationMode;

  /// Creates a new [InstanceArgs].
  /// [identity] The Azure Active Directory identity of the SCOM instance
  /// [instanceName] Name of the Azure Monitor Operations Manager Managed Instance (SCOM MI)
  /// [location] The geo-location where the resource lives
  /// [properties] The properties of a SCOM instance resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [validationMode] Validation mode for the SCOM managed instance
  InstanceArgs({
    ManagedIdentity? identity,
    String? instanceName,
    String? location,
    MonitoringInstanceProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
    bool? validationMode,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedIdentity>(identity),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<MonitoringInstanceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      validationMode = pulumi.Input.asOptionalInput<bool>(validationMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'instanceName': ?instanceName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<MonitoringInstanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'validationMode': ?validationMode,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      identity: map['identity'] == null ? null : ManagedIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : MonitoringInstanceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      validationMode: map['validationMode'] == null ? null : map['validationMode'] as bool,
    );
  }
}

