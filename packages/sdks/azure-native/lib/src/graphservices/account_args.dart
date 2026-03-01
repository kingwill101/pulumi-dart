// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_resource_properties.dart';

/// {@template pulumi_graphservices_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_graphservices_account_args_doc}
class AccountArgs {
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// Property bag from billing account
  final pulumi.Input<AccountResourceProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String>? resourceName;
  /// resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [location] Location of the resource.
  /// [properties] Property bag from billing account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  /// [tags] resource tags.
  AccountArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<AccountResourceProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<AccountResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<AccountResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<AccountResourceProperties>(AccountResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

