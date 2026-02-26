// ignore_for_file: unused_element, unnecessary_cast

import '../agent_agent_action_group_api_schema_s3/agent_agent_action_group_api_schema_s3.dart';

class AgentAgentActionGroupApiSchema {
  /// JSON or YAML-formatted payload defining the OpenAPI schema for the action group.
  /// Only one of <span pulumi-lang-nodejs="`payload`" pulumi-lang-dotnet="`Payload`" pulumi-lang-go="`payload`" pulumi-lang-python="`payload`" pulumi-lang-yaml="`payload`" pulumi-lang-java="`payload`">`payload`</span> or <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span> can be specified.
  final String? payload;

  /// Details about the S3 object containing the OpenAPI schema for the action group. See <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span> Block for details.
  /// Only one of <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span> or <span pulumi-lang-nodejs="`payload`" pulumi-lang-dotnet="`Payload`" pulumi-lang-go="`payload`" pulumi-lang-python="`payload`" pulumi-lang-yaml="`payload`" pulumi-lang-java="`payload`">`payload`</span> can be specified.
  final AgentAgentActionGroupApiSchemaS3? s3;

  AgentAgentActionGroupApiSchema({
    this.payload,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final payloadValue = payload;
    if (payloadValue != null) {
      map['payload'] = payloadValue;
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value.toMap();
    }
    return map;
  }

  factory AgentAgentActionGroupApiSchema.fromMap(Map<String, dynamic> map) {
    return AgentAgentActionGroupApiSchema(
      payload: map['payload'] == null ? null : map['payload'] as String,
      s3: map['s3'] == null
          ? null
          : AgentAgentActionGroupApiSchemaS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
