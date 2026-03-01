// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_ip_group_args_doc}
/// The set of arguments for IpGroup.
/// {@endtemplate}
/// {@macro pulumi_network_ip_group_args_doc}
class IpGroupArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// IpAddresses/IpAddressPrefixes in the IpGroups resource.
  final pulumi.Input<List<String>>? ipAddresses;
  /// The name of the ipGroups.
  final pulumi.Input<String>? ipGroupsName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpGroupArgs].
  /// [id] Resource ID.
  /// [ipAddresses] IpAddresses/IpAddressPrefixes in the IpGroups resource.
  /// [ipGroupsName] The name of the ipGroups.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  IpGroupArgs({
    String? id,
    List<String>? ipAddresses,
    String? ipGroupsName,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      ipAddresses = pulumi.Input.asOptionalInput<List<String>>(ipAddresses),
      ipGroupsName = pulumi.Input.asOptionalInput<String>(ipGroupsName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ipAddresses': ?ipAddresses,
      'ipGroupsName': ?ipGroupsName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IpGroupArgs.fromMap(Map<String, dynamic> map) {
    return IpGroupArgs(
      id: map['id'] == null ? null : map['id'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      ipGroupsName: map['ipGroupsName'] == null ? null : map['ipGroupsName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

