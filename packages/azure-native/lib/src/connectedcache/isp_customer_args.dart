// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_property.dart';

/// {@template pulumi_connectedcache_isp_customer_args_doc}
/// The set of arguments for IspCustomer.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_isp_customer_args_doc}
class IspCustomerArgs {
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

  /// Creates a new [IspCustomerArgs].
  /// [customerResourceName] Name of the Customer resource
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  IspCustomerArgs({
    String? customerResourceName,
    String? location,
    CustomerProperty? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
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

  factory IspCustomerArgs.fromMap(Map<String, dynamic> map) {
    return IspCustomerArgs(
      customerResourceName: map['customerResourceName'] == null ? null : map['customerResourceName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : CustomerProperty.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

