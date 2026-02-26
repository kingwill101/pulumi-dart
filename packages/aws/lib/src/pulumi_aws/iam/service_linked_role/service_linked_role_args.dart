// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ServiceLinkedRole.
class ServiceLinkedRoleArgs {
  /// The AWS service to which this role is attached. You use a string similar to a URL but without the `http://` in front. For example: `elasticbeanstalk.amazonaws.com`. To find the full list of services that support service-linked roles, check [the docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html).
  final Input<String> awsServiceName;

  /// Additional string appended to the role name. Not all AWS services support custom suffixes.
  final Input<String>? customSuffix;

  /// The description of the role.
  final Input<String>? description;

  /// Key-value mapping of tags for the IAM role. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ServiceLinkedRoleArgs({
    required this.awsServiceName,
    this.customSuffix,
    this.description,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsServiceName'] = awsServiceName;
    final customSuffixValue = customSuffix;
    if (customSuffixValue != null) {
      map['customSuffix'] = customSuffixValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ServiceLinkedRoleArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLinkedRoleArgs(
      awsServiceName: Input.asInput<String>(map['awsServiceName']),
      customSuffix: Input.asOptionalInput<String>(map['customSuffix']),
      description: Input.asOptionalInput<String>(map['description']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
