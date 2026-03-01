// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipam_ipam_scope_ipam_ipam_scope_args_doc}
/// The set of arguments for IpamIpamScope.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipam_ipam_scope_ipam_ipam_scope_args_doc}
class IpamIpamScopeArgs {
  /// The id of the Ipam instance.
  final pulumi.Input<String> ipamId;
  /// The description of the IPAM's scope of action.
  /// It must be 2 to 256 characters in length and must start with a lowercase letter, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final pulumi.Input<String>? ipamScopeDescription;
  /// The name of the resource.
  final pulumi.Input<String>? ipamScopeName;
  /// IPAM scope of action type:
  /// `private`.
  ///
  ///
  /// > **NOTE:**  Currently, only the role scope of the private network is supported.
  final pulumi.Input<String>? ipamScopeType;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpamIpamScopeArgs].
  /// [ipamId] The id of the Ipam instance.
  /// [ipamScopeDescription] The description of the IPAM's scope of action.
  /// [ipamScopeName] The name of the resource.
  /// [ipamScopeType] IPAM scope of action type:
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  IpamIpamScopeArgs({
    required String ipamId,
    String? ipamScopeDescription,
    String? ipamScopeName,
    String? ipamScopeType,
    String? resourceGroupId,
    Map<String, String>? tags,
  }) :
      ipamId = pulumi.Input.asInput<String>(ipamId),
      ipamScopeDescription = pulumi.Input.asOptionalInput<String>(ipamScopeDescription),
      ipamScopeName = pulumi.Input.asOptionalInput<String>(ipamScopeName),
      ipamScopeType = pulumi.Input.asOptionalInput<String>(ipamScopeType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipamId': ipamId,
      'ipamScopeDescription': ?ipamScopeDescription,
      'ipamScopeName': ?ipamScopeName,
      'ipamScopeType': ?ipamScopeType,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory IpamIpamScopeArgs.fromMap(Map<String, dynamic> map) {
    return IpamIpamScopeArgs(
      ipamId: map['ipamId'] as String,
      ipamScopeDescription: map['ipamScopeDescription'] == null ? null : map['ipamScopeDescription'] as String,
      ipamScopeName: map['ipamScopeName'] == null ? null : map['ipamScopeName'] as String,
      ipamScopeType: map['ipamScopeType'] == null ? null : map['ipamScopeType'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

