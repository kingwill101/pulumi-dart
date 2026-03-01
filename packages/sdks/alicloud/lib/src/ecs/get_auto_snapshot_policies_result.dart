// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auto_snapshot_policies_policy.dart';

/// Result data returned by getAutoSnapshotPolicies.
class GetAutoSnapshotPoliciesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetAutoSnapshotPoliciesPolicy> policies;
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetAutoSnapshotPoliciesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [policies] Required.
  /// [status] Optional.
  /// [tags] Optional.
  GetAutoSnapshotPoliciesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetAutoSnapshotPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetAutoSnapshotPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetAutoSnapshotPoliciesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      policies: pulumi.Input.decodeList<GetAutoSnapshotPoliciesPolicy>(map['policies'], (value) => GetAutoSnapshotPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

