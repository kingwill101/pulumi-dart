// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_property.dart';

/// {@template pulumi_connectedcache_enterprise_mcc_customer_args_doc}
/// The set of arguments for EnterpriseMccCustomer.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_enterprise_mcc_customer_args_doc}
class EnterpriseMccCustomerArgs {
  /// Name of the Customer resource
  final pulumi.Input<String>? customerResourceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<CustomerProperty>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnterpriseMccCustomerArgs].
  /// [customerResourceName] Name of the Customer resource
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  EnterpriseMccCustomerArgs({
    pulumi.Output<String>? customerResourceName,
    pulumi.Output<String>? location,
    pulumi.Output<CustomerProperty>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customerResourceName = pulumi.Input.asOptionalInput<String>(customerResourceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<CustomerProperty>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerResourceName': ?customerResourceName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<CustomerProperty, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EnterpriseMccCustomerArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseMccCustomerArgs(
      customerResourceName: map['customerResourceName'] == null ? null : pulumi.Output.create<String>(map['customerResourceName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CustomerProperty>(CustomerProperty.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

