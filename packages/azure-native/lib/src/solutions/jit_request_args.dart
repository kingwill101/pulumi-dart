// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_authorization_policies.dart';
import 'jit_scheduling_policy.dart';

/// {@template pulumi_solutions_jit_request_args_doc}
/// The set of arguments for JitRequest.
/// {@endtemplate}
/// {@macro pulumi_solutions_jit_request_args_doc}
class JitRequestArgs {
  /// The parent application id.
  final pulumi.Input<String> applicationResourceId;
  /// The JIT authorization policies.
  final pulumi.Input<List<JitAuthorizationPolicies>> jitAuthorizationPolicies;
  /// The name of the JIT request.
  final pulumi.Input<String>? jitRequestName;
  /// The JIT request properties.
  final pulumi.Input<JitSchedulingPolicy> jitSchedulingPolicy;
  /// Resource location
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [JitRequestArgs].
  /// [applicationResourceId] The parent application id.
  /// [jitAuthorizationPolicies] The JIT authorization policies.
  /// [jitRequestName] The name of the JIT request.
  /// [jitSchedulingPolicy] The JIT request properties.
  /// [location] Resource location
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags
  JitRequestArgs({
    required String applicationResourceId,
    required List<JitAuthorizationPolicies> jitAuthorizationPolicies,
    String? jitRequestName,
    required JitSchedulingPolicy jitSchedulingPolicy,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      applicationResourceId = pulumi.Input.asInput<String>(applicationResourceId),
      jitAuthorizationPolicies = pulumi.Input.asInput<List<JitAuthorizationPolicies>>(jitAuthorizationPolicies),
      jitRequestName = pulumi.Input.asOptionalInput<String>(jitRequestName),
      jitSchedulingPolicy = pulumi.Input.asInput<JitSchedulingPolicy>(jitSchedulingPolicy),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationResourceId': applicationResourceId,
      'jitAuthorizationPolicies': pulumi.Input.mapInputValue<List<JitAuthorizationPolicies>, List<Map<String, dynamic>>>(jitAuthorizationPolicies, (value) => pulumi.Input.encodeList<JitAuthorizationPolicies, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jitRequestName': ?jitRequestName,
      'jitSchedulingPolicy': pulumi.Input.mapInputValue<JitSchedulingPolicy, Map<String, dynamic>>(jitSchedulingPolicy, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory JitRequestArgs.fromMap(Map<String, dynamic> map) {
    return JitRequestArgs(
      applicationResourceId: map['applicationResourceId'] as String,
      jitAuthorizationPolicies: pulumi.Input.decodeList<JitAuthorizationPolicies>(map['jitAuthorizationPolicies'], (value) => JitAuthorizationPolicies.fromMap((value as Map).cast<String, dynamic>())),
      jitRequestName: map['jitRequestName'] == null ? null : map['jitRequestName'] as String,
      jitSchedulingPolicy: JitSchedulingPolicy.fromMap((map['jitSchedulingPolicy'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

