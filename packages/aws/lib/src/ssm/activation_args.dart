// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_activation_activation_args_doc}
/// The set of arguments for Activation.
/// {@endtemplate}
/// {@macro pulumi_ssm_activation_activation_args_doc}
class ActivationArgs {
  /// The description of the resource that you want to register.
  final pulumi.Input<String>? description;

  /// UTC timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) by which this activation request should expire. The default value is 24 hours from resource creation time. This provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<String>? expirationDate;

  /// The IAM Role to attach to the managed instance.
  final pulumi.Input<String> iamRole;

  /// The default name of the registered managed instance.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The maximum number of managed instances you want to register. The default value is 1 instance.
  final pulumi.Input<int>? registrationLimit;

  /// A map of tags to assign to the object. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ActivationArgs].
  /// [description] The description of the resource that you want to register.
  /// [expirationDate] UTC timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) by which this activation request should expire. The default value is 24 hours from resource creation time. This provider will only perform drift detection of its value when present in a configuration.
  /// [iamRole] The IAM Role to attach to the managed instance.
  /// [name] The default name of the registered managed instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registrationLimit] The maximum number of managed instances you want to register. The default value is 1 instance.
  /// [tags] A map of tags to assign to the object. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ActivationArgs({
    String? description,
    String? expirationDate,
    required String iamRole,
    String? name,
    String? region,
    int? registrationLimit,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
        iamRole = pulumi.Input.asInput<String>(iamRole),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        registrationLimit =
            pulumi.Input.asOptionalInput<int>(registrationLimit),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final expirationDateValue = expirationDate;
    if (expirationDateValue != null) {
      map['expirationDate'] = expirationDateValue;
    }
    map['iamRole'] = iamRole;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final registrationLimitValue = registrationLimit;
    if (registrationLimitValue != null) {
      map['registrationLimit'] = registrationLimitValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ActivationArgs.fromMap(Map<String, dynamic> map) {
    return ActivationArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      expirationDate: map['expirationDate'] == null
          ? null
          : map['expirationDate'] as String,
      iamRole: map['iamRole'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      registrationLimit: map['registrationLimit'] == null
          ? null
          : map['registrationLimit'] as int,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
