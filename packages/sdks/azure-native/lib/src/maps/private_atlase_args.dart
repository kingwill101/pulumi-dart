// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maps_private_atlase_args_doc}
/// The set of arguments for PrivateAtlase.
/// {@endtemplate}
/// {@macro pulumi_maps_private_atlase_args_doc}
class PrivateAtlaseArgs {
  /// The name of the Maps Account.
  final pulumi.Input<String> accountName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the Private Atlas instance.
  final pulumi.Input<String>? privateAtlasName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateAtlaseArgs].
  /// [accountName] The name of the Maps Account.
  /// [location] The location of the resource.
  /// [privateAtlasName] The name of the Private Atlas instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters.
  PrivateAtlaseArgs({
    required this.accountName,
    this.location,
    this.privateAtlasName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'location': ?location,
      'privateAtlasName': ?privateAtlasName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PrivateAtlaseArgs.fromMap(Map<String, dynamic> map) {
    return PrivateAtlaseArgs(
      accountName: (map['accountName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      privateAtlasName: map['privateAtlasName'] == null ? null : (map['privateAtlasName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

