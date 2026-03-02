// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_beanstalk_environment_properties.dart';

/// {@template pulumi_awsconnector_elastic_beanstalk_environment_args_doc}
/// The set of arguments for ElasticBeanstalkEnvironment.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_elastic_beanstalk_environment_args_doc}
class ElasticBeanstalkEnvironmentArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of ElasticBeanstalkEnvironment
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ElasticBeanstalkEnvironmentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ElasticBeanstalkEnvironmentArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of ElasticBeanstalkEnvironment
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ElasticBeanstalkEnvironmentArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<ElasticBeanstalkEnvironmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ElasticBeanstalkEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return ElasticBeanstalkEnvironmentArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (ElasticBeanstalkEnvironmentProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

