// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_property.dart';

/// {@template pulumi_connectedcache_enterprise_mcc_customer_args_doc}
/// The set of arguments for EnterpriseMccCustomer.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_enterprise_mcc_customer_args_doc}
class EnterpriseMccCustomerArgs {
  /// Name of the Customer resource
  final pulumi.Input<String?>? customerResourceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<CustomerProperty?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [EnterpriseMccCustomerArgs].
  /// [customerResourceName] Name of the Customer resource
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const EnterpriseMccCustomerArgs({
    this.customerResourceName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      customerResourceName: (() { final guardedValue = map['customerResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
