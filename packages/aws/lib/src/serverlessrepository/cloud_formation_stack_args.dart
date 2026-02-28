// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serverlessrepository_cloud_formation_stack_cloud_formation_stack_args_doc}
/// The set of arguments for CloudFormationStack.
/// {@endtemplate}
/// {@macro pulumi_serverlessrepository_cloud_formation_stack_cloud_formation_stack_args_doc}
class CloudFormationStackArgs {
  /// The ARN of the application from the Serverless Application Repository.
  final pulumi.Input<String> applicationId;

  /// A list of capabilities. Valid values are `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_RESOURCE_POLICY`, or `CAPABILITY_AUTO_EXPAND`
  final pulumi.Input<List<String>> capabilities;

  /// The name of the stack to create. The resource deployed in AWS will be prefixed with `serverlessrepo-`
  final pulumi.Input<String>? name;

  /// A map of Parameter structures that specify input parameters for the stack.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The version of the application to deploy. If not supplied, deploys the latest version.
  final pulumi.Input<String>? semanticVersion;

  /// A list of tags to associate with this stack. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CloudFormationStackArgs].
  /// [applicationId] The ARN of the application from the Serverless Application Repository.
  /// [capabilities] A list of capabilities. Valid values are `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_RESOURCE_POLICY`, or `CAPABILITY_AUTO_EXPAND`
  /// [name] The name of the stack to create. The resource deployed in AWS will be prefixed with `serverlessrepo-`
  /// [parameters] A map of Parameter structures that specify input parameters for the stack.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [semanticVersion] The version of the application to deploy. If not supplied, deploys the latest version.
  /// [tags] A list of tags to associate with this stack. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CloudFormationStackArgs({
    required String applicationId,
    required List<String> capabilities,
    String? name,
    Map<String, String>? parameters,
    String? region,
    String? semanticVersion,
    Map<String, String>? tags,
  })  : applicationId = pulumi.Input.asInput<String>(applicationId),
        capabilities = pulumi.Input.asInput<List<String>>(capabilities),
        name = pulumi.Input.asOptionalInput<String>(name),
        parameters =
            pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
        region = pulumi.Input.asOptionalInput<String>(region),
        semanticVersion = pulumi.Input.asOptionalInput<String>(semanticVersion),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['capabilities'] = capabilities;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final semanticVersionValue = semanticVersion;
    if (semanticVersionValue != null) {
      map['semanticVersion'] = semanticVersionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CloudFormationStackArgs.fromMap(Map<String, dynamic> map) {
    return CloudFormationStackArgs(
      applicationId: map['applicationId'] as String,
      capabilities: (map['capabilities'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      semanticVersion: map['semanticVersion'] == null
          ? null
          : map['semanticVersion'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
