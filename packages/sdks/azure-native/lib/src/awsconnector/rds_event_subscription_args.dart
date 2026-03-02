// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_event_subscription_properties.dart';

/// {@template pulumi_awsconnector_rds_event_subscription_args_doc}
/// The set of arguments for RdsEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_rds_event_subscription_args_doc}
class RdsEventSubscriptionArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of RdsEventSubscription
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<RdsEventSubscriptionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RdsEventSubscriptionArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of RdsEventSubscription
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  RdsEventSubscriptionArgs({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<RdsEventSubscriptionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory RdsEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return RdsEventSubscriptionArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (RdsEventSubscriptionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

