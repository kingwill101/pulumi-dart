// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lifecycle_policies_policy.dart';

/// Result data returned by getLifecyclePolicies.
class GetLifecyclePoliciesResult {
  final String fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetLifecyclePoliciesPolicy> policies;

  /// Creates a new [GetLifecyclePoliciesResult].
  /// [fileSystemId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [policies] Required.
  GetLifecyclePoliciesResult({
    required this.fileSystemId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetLifecyclePoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
    };
  }

  factory GetLifecyclePoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePoliciesResult(
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      policies: pulumi.Input.decodeList<GetLifecyclePoliciesPolicy>(map['policies'], (value) => GetLifecyclePoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

