// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vul_whitelists_whitelist.dart';

/// Result data returned by getVulWhitelists.
class GetVulWhitelistsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// A list of Vul Whitelist Entries. Each element contains the following attributes:
  final List<GetVulWhitelistsWhitelist> whitelists;

  /// Creates a new [GetVulWhitelistsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [whitelists] A list of Vul Whitelist Entries. Each element contains the following attributes:
  GetVulWhitelistsResult({
    required this.id,
    required this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    required this.whitelists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'whitelists': pulumi.Input.encodeList<GetVulWhitelistsWhitelist, Map<String, dynamic>>(whitelists, (value) => value.toMap()),
    };
  }

  factory GetVulWhitelistsResult.fromMap(Map<String, dynamic> map) {
    return GetVulWhitelistsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      whitelists: pulumi.Input.decodeList<GetVulWhitelistsWhitelist>(map['whitelists'], (value) => GetVulWhitelistsWhitelist.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

