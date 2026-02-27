// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for CloudFormationStack.
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

  CloudFormationStackArgs({
    required this.applicationId,
    required this.capabilities,
    this.name,
    this.parameters,
    this.region,
    this.semanticVersion,
    this.tags,
  });

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
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      capabilities: pulumi.Input.asInput<List<String>>(map['capabilities']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parameters:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      semanticVersion:
          pulumi.Input.asOptionalInput<String>(map['semanticVersion']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
