// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_activation_activation_args_doc}
/// The set of arguments for Activation.
/// {@endtemplate}
/// {@macro pulumi_ssm_activation_activation_args_doc}
class ActivationArgs {
  /// The description of the resource that you want to register.
  final pulumi.Input<String?>? description;
  /// UTC timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) by which this activation request should expire. The default value is 24 hours from resource creation time. This provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<String?>? expirationDate;
  /// The IAM Role to attach to the managed instance.
  final pulumi.Input<String> iamRole;
  /// The default name of the registered managed instance.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The maximum number of managed instances you want to register. The default value is 1 instance.
  final pulumi.Input<int?>? registrationLimit;
  /// A map of tags to assign to the object. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ActivationArgs].
  /// [description] The description of the resource that you want to register.
  /// [expirationDate] UTC timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) by which this activation request should expire. The default value is 24 hours from resource creation time. This provider will only perform drift detection of its value when present in a configuration.
  /// [iamRole] The IAM Role to attach to the managed instance.
  /// [name] The default name of the registered managed instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registrationLimit] The maximum number of managed instances you want to register. The default value is 1 instance.
  /// [tags] A map of tags to assign to the object. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ActivationArgs({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRole: pulumi.Input.fromValue(map['iamRole'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationLimit: (() { final guardedValue = map['registrationLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
