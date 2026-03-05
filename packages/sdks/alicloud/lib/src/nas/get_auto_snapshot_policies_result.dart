// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auto_snapshot_policies_policy.dart';

/// Result data returned by getAutoSnapshotPolicies.
class GetAutoSnapshotPoliciesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Auto Snapshot Policy names.
  final List<String> names;
  final String? outputFile;
  /// A list of Auto Snapshot Policies. Each element contains the following attributes:
  final List<GetAutoSnapshotPoliciesPolicy> policies;
  /// The status of the automatic snapshot policy.
  final String? status;

  /// Creates a new [GetAutoSnapshotPoliciesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Auto Snapshot Policy names.
  /// [outputFile] Optional.
  /// [policies] A list of Auto Snapshot Policies. Each element contains the following attributes:
  /// [status] The status of the automatic snapshot policy.
  GetAutoSnapshotPoliciesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
    this.status,
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
    };
  }

  factory GetAutoSnapshotPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetAutoSnapshotPoliciesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: pulumi.Input.decodeList<GetAutoSnapshotPoliciesPolicy>(map['policies']!, (value) => GetAutoSnapshotPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

