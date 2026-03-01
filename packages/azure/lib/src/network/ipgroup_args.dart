// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_i_pgroup_ipgroup_args_doc}
/// The set of arguments for IPGroup.
/// {@endtemplate}
/// {@macro pulumi_network_i_pgroup_ipgroup_args_doc}
class IPGroupArgs {
  /// A list of CIDRs or IP addresses.
  ///
  /// > **Note:** The AzureRM Terraform provider provides cidr support via the standalone resource azure.network.IPGroupCIDR and in-line within this resource using the `cidrs` property. You cannot use both methods simultaneously. If cidrs are set via the resource `azure.network.IPGroupCIDR` then `ignore_changes` should be used in the ip group configuration.
  final pulumi.Input<List<String>>? cidrs;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the IP group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the IP group. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IPGroupArgs].
  /// [cidrs] A list of CIDRs or IP addresses.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the IP group. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the IP group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  IPGroupArgs({
    List<String>? cidrs,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      cidrs = pulumi.Input.asOptionalInput<List<String>>(cidrs),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': ?cidrs,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IPGroupArgs.fromMap(Map<String, dynamic> map) {
    return IPGroupArgs(
      cidrs: map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

