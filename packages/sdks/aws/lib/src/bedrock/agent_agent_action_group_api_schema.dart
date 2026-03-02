// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_action_group_api_schema_s3.dart';

class AgentAgentActionGroupApiSchema {
  /// JSON or YAML-formatted payload defining the OpenAPI schema for the action group.
  /// Only one of `payload` or `s3` can be specified.
  final pulumi.Input<String>? payload;
  /// Details about the S3 object containing the OpenAPI schema for the action group. See `s3` Block for details.
  /// Only one of `s3` or `payload` can be specified.
  final pulumi.Input<AgentAgentActionGroupApiSchemaS3>? s3;

  /// Creates a new [AgentAgentActionGroupApiSchema].
  /// [payload] JSON or YAML-formatted payload defining the OpenAPI schema for the action group.
  /// [s3] Details about the S3 object containing the OpenAPI schema for the action group. See `s3` Block for details.
  AgentAgentActionGroupApiSchema({
    this.payload,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': ?payload,
      's3': ?pulumi.Input.mapOptionalInputValue<AgentAgentActionGroupApiSchemaS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentAgentActionGroupApiSchema.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupApiSchema(
      payload: map['payload'] == null ? null : ((map['payload'] as String).input()).input(),
      s3: map['s3'] == null ? null : ((AgentAgentActionGroupApiSchemaS3.fromMap((map['s3']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

