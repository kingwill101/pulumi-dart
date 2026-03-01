// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceLinkedRole resources.
class ServiceLinkedRoleState {
  /// The Amazon Resource Name (ARN) specifying the role.
  final pulumi.Input<String>? arn;
  /// The AWS service to which this role is attached. You use a string similar to a URL but without the `http://` in front. For example: `elasticbeanstalk.amazonaws.com`. To find the full list of services that support service-linked roles, check [the docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html).
  final pulumi.Input<String>? awsServiceName;
  /// The creation date of the IAM role.
  final pulumi.Input<String>? createDate;
  /// Additional string appended to the role name. Not all AWS services support custom suffixes.
  final pulumi.Input<String>? customSuffix;
  /// The description of the role.
  final pulumi.Input<String>? description;
  /// The name of the role.
  final pulumi.Input<String>? name;
  /// The path of the role.
  final pulumi.Input<String>? path;
  /// Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The stable and unique string identifying the role.
  final pulumi.Input<String>? uniqueId;

  /// Creates a new [ServiceLinkedRoleState].
  /// [arn] The Amazon Resource Name (ARN) specifying the role.
  /// [awsServiceName] The AWS service to which this role is attached. You use a string similar to a URL but without the `http://` in front. For example: `elasticbeanstalk.amazonaws.com`. To find the full list of services that support service-linked roles, check [the docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html).
  /// [createDate] The creation date of the IAM role.
  /// [customSuffix] Additional string appended to the role name. Not all AWS services support custom suffixes.
  /// [description] The description of the role.
  /// [name] The name of the role.
  /// [path] The path of the role.
  /// [tags] Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uniqueId] The stable and unique string identifying the role.
  ServiceLinkedRoleState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsServiceName,
    pulumi.Output<String>? createDate,
    pulumi.Output<String>? customSuffix,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? path,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uniqueId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsServiceName = pulumi.Input.asOptionalInput<String>(awsServiceName),
      createDate = pulumi.Input.asOptionalInput<String>(createDate),
      customSuffix = pulumi.Input.asOptionalInput<String>(customSuffix),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      path = pulumi.Input.asOptionalInput<String>(path),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsServiceName': ?awsServiceName,
      'createDate': ?createDate,
      'customSuffix': ?customSuffix,
      'description': ?description,
      'name': ?name,
      'path': ?path,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uniqueId': ?uniqueId,
    };
  }

  factory ServiceLinkedRoleState.fromMap(Map<String, dynamic> map) {
    return ServiceLinkedRoleState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsServiceName: map['awsServiceName'] == null ? null : pulumi.Output.create<String>(map['awsServiceName'] as String),
      createDate: map['createDate'] == null ? null : pulumi.Output.create<String>(map['createDate'] as String),
      customSuffix: map['customSuffix'] == null ? null : pulumi.Output.create<String>(map['customSuffix'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
    );
  }
}

