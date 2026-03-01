// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_agent_identity.dart';

/// {@template pulumi_mssql_job_agent_job_agent_args_doc}
/// The set of arguments for JobAgent.
/// {@endtemplate}
/// {@macro pulumi_mssql_job_agent_job_agent_args_doc}
class JobAgentArgs {
  /// The ID of the database to store metadata for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  final pulumi.Input<String> databaseId;
  /// An `identity` block as defined below.
  final pulumi.Input<JobAgentIdentity>? identity;
  /// The Azure Region where this Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  final pulumi.Input<String>? name;
  /// The name of the SKU to use for this Elastic Job Agent. Possible values are `JA100`, `JA200`, `JA400`, and `JA800`. Defaults to `JA100`.
  final pulumi.Input<String>? sku;
  /// A mapping of tags which should be assigned to this Elastic Job Agent.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [JobAgentArgs].
  /// [databaseId] The ID of the database to store metadata for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where this Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created.
  /// [name] The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  /// [sku] The name of the SKU to use for this Elastic Job Agent. Possible values are `JA100`, `JA200`, `JA400`, and `JA800`. Defaults to `JA100`.
  /// [tags] A mapping of tags which should be assigned to this Elastic Job Agent.
  JobAgentArgs({
    required String databaseId,
    JobAgentIdentity? identity,
    String? location,
    String? name,
    String? sku,
    Map<String, String>? tags,
  }) :
      databaseId = pulumi.Input.asInput<String>(databaseId),
      identity = pulumi.Input.asOptionalInput<JobAgentIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'identity': ?pulumi.Input.mapOptionalInputValue<JobAgentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory JobAgentArgs.fromMap(Map<String, dynamic> map) {
    return JobAgentArgs(
      databaseId: map['databaseId'] as String,
      identity: map['identity'] == null ? null : JobAgentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

