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
  final pulumi.Input<ElasticLoadBalancingv2TargetHealthDescriptionProperties>?
  properties;

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
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            ElasticLoadBalancingv2TargetHealthDescriptionProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ElasticLoadBalancingv2TargetHealthDescriptionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ElasticLoadBalancingv2TargetHealthDescriptionArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ElasticLoadBalancingv2TargetHealthDescriptionProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
