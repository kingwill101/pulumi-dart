// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_versions_version.dart';

/// Result data returned by getPolicyVersions.
class GetPolicyVersionsResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of policy version IDs.
  final List<String> ids;
  final String? outputFile;
  final String policyName;
  final String policyType;
  /// A list of policy versions. Each element contains the following attributes:
  final List<GetPolicyVersionsVersion> versions;

  /// Creates a new [GetPolicyVersionsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of policy version IDs.
  /// [outputFile] Optional.
  /// [policyName] Required.
  /// [policyType] Required.
  /// [versions] A list of policy versions. Each element contains the following attributes:
  GetPolicyVersionsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.policyName,
    required this.policyType,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'policyName': policyName,
      'policyType': policyType,
      'versions': pulumi.Input.encodeList<GetPolicyVersionsVersion, Map<String, dynamic>>(versions, (value) => value.toMap()),
    };
  }

  factory GetPolicyVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyVersionsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      policyName: map['policyName'] as String,
      policyType: map['policyType'] as String,
      versions: pulumi.Input.decodeList<GetPolicyVersionsVersion>(map['versions'], (value) => GetPolicyVersionsVersion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

