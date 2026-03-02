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
    this.cloudServiceName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    this.zones,
  });

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
      cloudServiceName: map['cloudServiceName'] == null ? null : (map['cloudServiceName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (CloudServiceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

