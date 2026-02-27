// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for KxUser.
class KxUserArgs {
  /// Unique identifier for the KX environment.
  final pulumi.Input<String> environmentId;

  /// IAM role ARN to be associated with the user.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> iamRole;

  /// A unique identifier for the user.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  KxUserArgs({
    required this.environmentId,
    required this.iamRole,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['iamRole'] = iamRole;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory KxUserArgs.fromMap(Map<String, dynamic> map) {
    return KxUserArgs(
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      iamRole: pulumi.Input.asInput<String>(map['iamRole']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
