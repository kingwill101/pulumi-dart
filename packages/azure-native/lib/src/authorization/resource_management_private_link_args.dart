// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_resource_management_private_link_args_doc}
/// The set of arguments for ResourceManagementPrivateLink.
/// {@endtemplate}
/// {@macro pulumi_authorization_resource_management_private_link_args_doc}
class ResourceManagementPrivateLinkArgs {
  /// the region to create private link association.
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource management private link.
  final pulumi.Input<String>? rmplName;

  /// Creates a new [ResourceManagementPrivateLinkArgs].
  /// [location] the region to create private link association.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rmplName] The name of the resource management private link.
  ResourceManagementPrivateLinkArgs({
    String? location,
    required String resourceGroupName,
    String? rmplName,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rmplName = pulumi.Input.asOptionalInput<String>(rmplName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'rmplName': ?rmplName,
    };
  }

  factory ResourceManagementPrivateLinkArgs.fromMap(Map<String, dynamic> map) {
    return ResourceManagementPrivateLinkArgs(
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      rmplName: map['rmplName'] == null ? null : map['rmplName'] as String,
    );
  }
}

