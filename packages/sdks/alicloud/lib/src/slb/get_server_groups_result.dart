// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_groups_slb_server_group.dart';

/// Result data returned by getServerGroups.
class GetServerGroupsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of SLB VServer groups IDs.
  final List<String> ids;
  final String loadBalancerId;
  final String? nameRegex;
  /// A list of SLB VServer groups names.
  final List<String> names;
  final String? outputFile;
  /// A list of SLB VServer groups. Each element contains the following attributes:
  final List<GetServerGroupsSlbServerGroup> slbServerGroups;

  /// Creates a new [GetServerGroupsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of SLB VServer groups IDs.
  /// [loadBalancerId] Required.
  /// [nameRegex] Optional.
  /// [names] A list of SLB VServer groups names.
  /// [outputFile] Optional.
  /// [slbServerGroups] A list of SLB VServer groups. Each element contains the following attributes:
  const GetServerGroupsResult({
    required this.id,
    required this.ids,
    required this.loadBalancerId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.slbServerGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'loadBalancerId': loadBalancerId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'slbServerGroups': pulumi.Input.encodeList<GetServerGroupsSlbServerGroup, Map<String, dynamic>>(slbServerGroups, (value) => value.toMap()),
    };
  }

  factory GetServerGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      loadBalancerId: map['loadBalancerId'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      slbServerGroups: pulumi.Input.decodeList<GetServerGroupsSlbServerGroup>(map['slbServerGroups']!, (value) => GetServerGroupsSlbServerGroup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

