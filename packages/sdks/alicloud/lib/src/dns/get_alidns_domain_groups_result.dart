// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alidns_domain_groups_group.dart';

/// Result data returned by getAlidnsDomainGroups.
class GetAlidnsDomainGroupsResult {
  /// A list of instances. Each element contains the following attributes:
  final List<GetAlidnsDomainGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of instance IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of domain group names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetAlidnsDomainGroupsResult].
  /// [groups] A list of instances. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of instance IDs.
  /// [nameRegex] Optional.
  /// [names] A list of domain group names.
  /// [outputFile] Optional.
  GetAlidnsDomainGroupsResult({
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<GetAlidnsDomainGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetAlidnsDomainGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetAlidnsDomainGroupsResult(
      groups: pulumi.Input.decodeList<GetAlidnsDomainGroupsGroup>(map['groups']!, (value) => GetAlidnsDomainGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

