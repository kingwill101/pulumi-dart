// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_traffic_marking_policies_policy.dart';

/// Result data returned by getTrafficMarkingPolicies.
class GetTrafficMarkingPoliciesResult {
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetTrafficMarkingPoliciesPolicy> policies;
  final String? status;
  final String transitRouterId;

  /// Creates a new [GetTrafficMarkingPoliciesResult].
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [policies] Required.
  /// [status] Optional.
  /// [transitRouterId] Required.
  GetTrafficMarkingPoliciesResult({
    this.description,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
    this.status,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetTrafficMarkingPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'status': ?status,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetTrafficMarkingPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetTrafficMarkingPoliciesResult(
      description: map['description'] == null ? null : map['description']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      policies: pulumi.Input.decodeList<GetTrafficMarkingPoliciesPolicy>(map['policies'], (value) => GetTrafficMarkingPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
      transitRouterId: map['transitRouterId'] as String,
    );
  }
}

