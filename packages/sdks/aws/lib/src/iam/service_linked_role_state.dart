// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceLinkedRole resources.
class ServiceLinkedRoleState {
  /// ARN specifying the role.
  final pulumi.Input<String?>? arn;
  /// The AWS service to which this role is attached. You use a string similar to a URL but without the `http://` in front. For example: `elasticbeanstalk.amazonaws.com`. To find the full list of services that support service-linked roles, check [the docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html).
  final pulumi.Input<String?>? awsServiceName;
  /// The creation date of the IAM role.
  final pulumi.Input<String?>? createDate;
  /// Additional string appended to the role name. Not all AWS services support custom suffixes.
  final pulumi.Input<String?>? customSuffix;
  /// The description of the role.
  final pulumi.Input<String?>? description;
  /// The name of the role.
  final pulumi.Input<String?>? name;
  /// The path of the role.
  final pulumi.Input<String?>? path;
  /// Key-value mapping of tags for the IAM role. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The stable and unique string identifying the role.
  final pulumi.Input<String?>? uniqueId;

  /// Creates a new [ServiceLinkedRoleState].
  /// [arn] ARN specifying the role.
  /// [awsServiceName] The AWS service to which this role is attached. You use a string similar to a URL but without the `http://` in front. For example: `elasticbeanstalk.amazonaws.com`. To find the full list of services that support service-linked roles, check [the docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html).
  /// [createDate] The creation date of the IAM role.
  /// [customSuffix] Additional string appended to the role name. Not all AWS services support custom suffixes.
  /// [description] The description of the role.
  /// [name] The name of the role.
  /// [path] The path of the role.
  /// [tags] Key-value mapping of tags for the IAM role. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [uniqueId] The stable and unique string identifying the role.
  const ServiceLinkedRoleState({
    this.arn,
    this.awsServiceName,
    this.createDate,
    this.customSuffix,
    this.description,
    this.name,
    this.path,
    this.tags,
    this.tagsAll,
    this.uniqueId,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsServiceName: (() { final guardedValue = map['awsServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createDate: (() { final guardedValue = map['createDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customSuffix: (() { final guardedValue = map['customSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
