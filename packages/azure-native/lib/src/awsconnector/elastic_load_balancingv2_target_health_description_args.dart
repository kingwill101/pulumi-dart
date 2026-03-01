// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_load_balancingv2_target_health_description_properties.dart';

/// {@template pulumi_awsconnector_elastic_load_balancingv2_target_health_description_args_doc}
/// The set of arguments for ElasticLoadBalancingv2TargetHealthDescription.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_elastic_load_balancingv2_target_health_description_args_doc}
class ElasticLoadBalancingv2TargetHealthDescriptionArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of ElasticLoadBalancingv2TargetHealthDescription
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ElasticLoadBalancingv2TargetHealthDescriptionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ElasticLoadBalancingv2TargetHealthDescriptionArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of ElasticLoadBalancingv2TargetHealthDescription
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ElasticLoadBalancingv2TargetHealthDescriptionArgs({
    String? location,
    String? name,
    ElasticLoadBalancingv2TargetHealthDescriptionProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<ElasticLoadBalancingv2TargetHealthDescriptionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<ElasticLoadBalancingv2TargetHealthDescriptionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ElasticLoadBalancingv2TargetHealthDescriptionArgs.fromMap(Map<String, dynamic> map) {
    return ElasticLoadBalancingv2TargetHealthDescriptionArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : ElasticLoadBalancingv2TargetHealthDescriptionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

