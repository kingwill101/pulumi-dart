// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_shares_share.dart';

/// Result data returned by getResourceShares.
class GetResourceSharesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? resourceShareName;
  final String resourceShareOwner;
  final List<GetResourceSharesShare> shares;
  final String? status;

  /// Creates a new [GetResourceSharesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [resourceShareName] Optional.
  /// [resourceShareOwner] Required.
  /// [shares] Required.
  /// [status] Optional.
  GetResourceSharesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceShareName,
    required this.resourceShareOwner,
    required this.shares,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceShareName': ?resourceShareName,
      'resourceShareOwner': resourceShareOwner,
      'shares': pulumi.Input.encodeList<GetResourceSharesShare, Map<String, dynamic>>(shares, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetResourceSharesResult.fromMap(Map<String, dynamic> map) {
    return GetResourceSharesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceShareName: map['resourceShareName'] == null ? null : map['resourceShareName'] as String,
      resourceShareOwner: map['resourceShareOwner'] as String,
      shares: pulumi.Input.decodeList<GetResourceSharesShare>(map['shares'], (value) => GetResourceSharesShare.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

