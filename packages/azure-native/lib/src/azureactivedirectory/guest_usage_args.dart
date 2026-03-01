// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azureactivedirectory_guest_usage_args_doc}
/// The set of arguments for GuestUsage.
/// {@endtemplate}
/// {@macro pulumi_azureactivedirectory_guest_usage_args_doc}
class GuestUsageArgs {
  /// Location of the Guest Usages resource.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The initial domain name of the Azure AD B2C tenant.
  final pulumi.Input<String>? resourceName;
  /// Key-value pairs of additional resource provisioning properties.
  final pulumi.Input<Map<String, String>>? tags;
  /// An identifier for the tenant for which the resource is being created
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GuestUsageArgs].
  /// [location] Location of the Guest Usages resource.
  /// [resourceGroupName] The name of the resource group.
  /// [resourceName] The initial domain name of the Azure AD B2C tenant.
  /// [tags] Key-value pairs of additional resource provisioning properties.
  /// [tenantId] An identifier for the tenant for which the resource is being created
  GuestUsageArgs({
    String? location,
    required String resourceGroupName,
    String? resourceName,
    Map<String, String>? tags,
    String? tenantId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GuestUsageArgs.fromMap(Map<String, dynamic> map) {
    return GuestUsageArgs(
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

