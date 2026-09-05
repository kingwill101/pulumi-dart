// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serverlessrepository_cloud_formation_stack_cloud_formation_stack_args_doc}
/// The set of arguments for CloudFormationStack.
/// {@endtemplate}
/// {@macro pulumi_serverlessrepository_cloud_formation_stack_cloud_formation_stack_args_doc}
class CloudFormationStackArgs {
  /// ARN of the application from the Serverless Application Repository.
  final pulumi.Input<String> applicationId;
  /// List of capabilities. Valid values are `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_RESOURCE_POLICY`, or `CAPABILITY_AUTO_EXPAND`. If the application contains IAM resources, IAM resources with custom names, resource-based policies, or nested applications, the corresponding capability must be specified. If omitted, the value applied by AWS is tracked in state.
  final pulumi.Input<List<String>?>? capabilities;
  /// Name of the stack to create. The resource deployed in AWS will be prefixed with `serverlessrepo-`
  final pulumi.Input<String?>? name;
  /// Map of Parameter structures that specify input parameters for the stack.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Version of the application to deploy. If not supplied, deploys the latest version.
  final pulumi.Input<String?>? semanticVersion;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [CloudFormationStackArgs].
  /// [applicationId] ARN of the application from the Serverless Application Repository.
  /// [capabilities] List of capabilities. Valid values are `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_RESOURCE_POLICY`, or `CAPABILITY_AUTO_EXPAND`. If the application contains IAM resources, IAM resources with custom names, resource-based policies, or nested applications, the corresponding capability must be specified. If omitted, the value applied by AWS is tracked in state.
  /// [name] Name of the stack to create. The resource deployed in AWS will be prefixed with `serverlessrepo-`
  /// [parameters] Map of Parameter structures that specify input parameters for the stack.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [semanticVersion] Version of the application to deploy. If not supplied, deploys the latest version.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const CloudFormationStackArgs({
    required this.applicationId,
    this.capabilities,
    this.name,
    this.parameters,
    this.region,
    this.semanticVersion,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'capabilities': ?capabilities,
      'name': ?name,
      'parameters': ?parameters,
      'region': ?region,
      'semanticVersion': ?semanticVersion,
      'tags': ?tags,
    };
  }

  factory CloudFormationStackArgs.fromMap(Map<String, dynamic> map) {
    return CloudFormationStackArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      semanticVersion: (() { final guardedValue = map['semanticVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
