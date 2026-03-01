// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_properties.dart';

/// {@template pulumi_compute_cloud_service_args_doc}
/// The set of arguments for CloudService.
/// {@endtemplate}
/// {@macro pulumi_compute_cloud_service_args_doc}
class CloudServiceArgs {
  /// Name of the cloud service.
  final pulumi.Input<String>? cloudServiceName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Cloud service properties
  final pulumi.Input<CloudServiceProperties>? properties;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// List of logical availability zone of the resource. List should contain only 1 zone where cloud service should be provisioned. This field is optional.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [CloudServiceArgs].
  /// [cloudServiceName] Name of the cloud service.
  /// [location] Resource location.
  /// [properties] Cloud service properties
  /// [resourceGroupName] Name of the resource group.
  /// [tags] Resource tags.
  /// [zones] List of logical availability zone of the resource. List should contain only 1 zone where cloud service should be provisioned. This field is optional.
  CloudServiceArgs({
    String? cloudServiceName,
    String? location,
    CloudServiceProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
    List<String>? zones,
  }) :
      cloudServiceName = pulumi.Input.asOptionalInput<String>(cloudServiceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<CloudServiceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudServiceName': ?cloudServiceName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<CloudServiceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory CloudServiceArgs.fromMap(Map<String, dynamic> map) {
    return CloudServiceArgs(
      cloudServiceName: map['cloudServiceName'] == null ? null : map['cloudServiceName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : CloudServiceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

