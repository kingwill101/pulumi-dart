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
    this.description,
    this.expirationDate,
    required this.iamRole,
    this.name,
    this.region,
    this.registrationLimit,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expirationDate': ?expirationDate,
      'iamRole': iamRole,
      'name': ?name,
      'region': ?region,
      'registrationLimit': ?registrationLimit,
      'tags': ?tags,
    };
  }

  factory ActivationArgs.fromMap(Map<String, dynamic> map) {
    return ActivationArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      expirationDate: map['expirationDate'] == null ? null : ((map['expirationDate'] as String).input()).input(),
      iamRole: (map['iamRole'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      registrationLimit: map['registrationLimit'] == null ? null : ((map['registrationLimit'] as int).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

