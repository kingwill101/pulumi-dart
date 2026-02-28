// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_finspace_kx_user_kx_user_args_doc}
/// The set of arguments for KxUser.
/// {@endtemplate}
/// {@macro pulumi_finspace_kx_user_kx_user_args_doc}
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

  /// Creates a new [KxUserArgs].
  /// [environmentId] Unique identifier for the KX environment.
  /// [iamRole] IAM role ARN to be associated with the user.
  /// [name] A unique identifier for the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  KxUserArgs({
    required String environmentId,
    required String iamRole,
    String? name,
    String? region,
    Map<String, String>? tags,
  })  : environmentId = pulumi.Input.asInput<String>(environmentId),
        iamRole = pulumi.Input.asInput<String>(iamRole),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      environmentId: map['environmentId'] as String,
      iamRole: map['iamRole'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
