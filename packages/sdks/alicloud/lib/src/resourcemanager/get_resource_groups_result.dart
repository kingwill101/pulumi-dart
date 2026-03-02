// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_groups_group.dart';

/// Result data returned by getResourceGroups.
class GetResourceGroupsResult {
  final bool? enableDetails;
  /// A list of resource groups. Each element contains the following attributes:
  final List<GetResourceGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of resource group IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of resource group identifiers.
  final List<String> names;
  final String? outputFile;
  /// The status of the regional resource group.
  final String? status;

  /// Creates a new [GetResourceGroupsResult].
  /// [enableDetails] Optional.
  /// [groups] A list of resource groups. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of resource group IDs.
  /// [nameRegex] Optional.
  /// [names] A list of resource group identifiers.
  /// [outputFile] Optional.
  /// [status] The status of the regional resource group.
  GetResourceGroupsResult({
    this.enableDetails,
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'groups': pulumi.Input.encodeList<GetResourceGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetResourceGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      groups: pulumi.Input.decodeList<GetResourceGroupsGroup>(map['groups'], (value) => GetResourceGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

