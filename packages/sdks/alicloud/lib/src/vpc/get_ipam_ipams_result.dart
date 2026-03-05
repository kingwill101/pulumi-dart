// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipam_ipams_ipam.dart';

/// Result data returned by getIpamIpams.
class GetIpamIpamsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Ipam IDs.
  final List<String> ids;
  /// The first ID of the resource.
  final String? ipamId;
  /// The name of the resource.
  final String? ipamName;
  /// A list of Ipam Entries. Each element contains the following attributes:
  final List<GetIpamIpamsIpam> ipams;
  final String? nameRegex;
  /// A list of name of Ipams.
  final List<String> names;
  final String? outputFile;
  /// The ID of the resource group.
  final String? resourceGroupId;
  /// The tag of the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetIpamIpamsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Ipam IDs.
  /// [ipamId] The first ID of the resource.
  /// [ipamName] The name of the resource.
  /// [ipams] A list of Ipam Entries. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of name of Ipams.
  /// [outputFile] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  GetIpamIpamsResult({
    required this.id,
    required this.ids,
    this.ipamId,
    this.ipamName,
    required this.ipams,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'ipamId': ?ipamId,
      'ipamName': ?ipamName,
      'ipams': pulumi.Input.encodeList<GetIpamIpamsIpam, Map<String, dynamic>>(ipams, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetIpamIpamsResult.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipamId: (() { final guardedValue = map['ipamId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamName: (() { final guardedValue = map['ipamName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipams: pulumi.Input.decodeList<GetIpamIpamsIpam>(map['ipams']!, (value) => GetIpamIpamsIpam.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

