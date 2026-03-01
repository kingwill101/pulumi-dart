// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_policies_policy.dart';

/// Result data returned by getControlPolicies.
class GetControlPoliciesResult {
  /// The action that Cloud Firewall performs on the traffic.
  final String? aclAction;
  /// The unique ID of the access control policy.
  final String? aclUuid;
  /// The description of the access control policy.
  final String? description;
  /// The destination address in the access control policy.
  final String? destination;
  /// The direction of the traffic to which the access control policy applies.
  final String direction;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Control Policy IDs.
  final List<String> ids;
  final String? ipVersion;
  final String? lang;
  final String? outputFile;
  /// A list of Cloud Firewall Control Policies. Each element contains the following attributes:
  final List<GetControlPoliciesPolicy> policies;
  /// The type of the protocol in the access control policy.
  final String? proto;
  /// The source address in the access control policy.
  final String? source;

  /// Creates a new [GetControlPoliciesResult].
  /// [aclAction] The action that Cloud Firewall performs on the traffic.
  /// [aclUuid] The unique ID of the access control policy.
  /// [description] The description of the access control policy.
  /// [destination] The destination address in the access control policy.
  /// [direction] The direction of the traffic to which the access control policy applies.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Control Policy IDs.
  /// [ipVersion] Optional.
  /// [lang] Optional.
  /// [outputFile] Optional.
  /// [policies] A list of Cloud Firewall Control Policies. Each element contains the following attributes:
  /// [proto] The type of the protocol in the access control policy.
  /// [source] The source address in the access control policy.
  GetControlPoliciesResult({
    this.aclAction,
    this.aclUuid,
    this.description,
    this.destination,
    required this.direction,
    required this.id,
    required this.ids,
    this.ipVersion,
    this.lang,
    this.outputFile,
    required this.policies,
    this.proto,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclAction': ?aclAction,
      'aclUuid': ?aclUuid,
      'description': ?description,
      'destination': ?destination,
      'direction': direction,
      'id': id,
      'ids': ids,
      'ipVersion': ?ipVersion,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetControlPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'proto': ?proto,
      'source': ?source,
    };
  }

  factory GetControlPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetControlPoliciesResult(
      aclAction: map['aclAction'] == null ? null : map['aclAction'] as String,
      aclUuid: map['aclUuid'] == null ? null : map['aclUuid'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destination: map['destination'] == null ? null : map['destination'] as String,
      direction: map['direction'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ipVersion: map['ipVersion'] == null ? null : map['ipVersion'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      policies: pulumi.Input.decodeList<GetControlPoliciesPolicy>(map['policies'], (value) => GetControlPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      proto: map['proto'] == null ? null : map['proto'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

