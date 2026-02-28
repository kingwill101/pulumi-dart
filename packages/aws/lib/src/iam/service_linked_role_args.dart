// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_service_linked_role_service_linked_role_args_doc}
/// The set of arguments for ServiceLinkedRole.
/// {@endtemplate}
/// {@macro pulumi_iam_service_linked_role_service_linked_role_args_doc}
class ServiceLinkedRoleArgs {
  /// The AWS service to which this role is attached. You use a string similar to a URL but without the `http://` in front. For example: `elasticbeanstalk.amazonaws.com`. To find the full list of services that support service-linked roles, check [the docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html).
  final pulumi.Input<String> awsServiceName;
  /// Additional string appended to the role name. Not all AWS services support custom suffixes.
  final pulumi.Input<String>? customSuffix;
  /// The description of the role.
  final pulumi.Input<String>? description;
  /// Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceLinkedRoleArgs].
  /// [awsServiceName] The AWS service to which this role is attached. You use a string similar to a URL but without the `http://` in front. For example: `elasticbeanstalk.amazonaws.com`. To find the full list of services that support service-linked roles, check [the docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html).
  /// [customSuffix] Additional string appended to the role name. Not all AWS services support custom suffixes.
  /// [description] The description of the role.
  /// [tags] Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ServiceLinkedRoleArgs({
    required String awsServiceName,
    String? customSuffix,
    String? description,
    Map<String, String>? tags,
  }) :
      awsServiceName = pulumi.Input.asInput<String>(awsServiceName),
      customSuffix = pulumi.Input.asOptionalInput<String>(customSuffix),
      description = pulumi.Input.asOptionalInput<String>(description),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsServiceName': awsServiceName,
      'customSuffix': ?customSuffix,
      'description': ?description,
      'tags': ?tags,
    };
  }

  factory ServiceLinkedRoleArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLinkedRoleArgs(
      awsServiceName: map['awsServiceName'] as String,
      customSuffix: map['customSuffix'] == null ? null : map['customSuffix'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

