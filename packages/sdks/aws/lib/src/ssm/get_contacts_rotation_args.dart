// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_get_contacts_rotation_get_contacts_rotation_args_doc}
/// Arguments for getContactsRotation.
/// {@endtemplate}
/// {@macro pulumi_ssm_get_contacts_rotation_get_contacts_rotation_args_doc}
class GetContactsRotationArgs {
  /// The Amazon Resource Name (ARN) of the rotation.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetContactsRotationArgs].
  /// [arn] The Amazon Resource Name (ARN) of the rotation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetContactsRotationArgs({
    required pulumi.Output<String> arn,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
    };
  }

  factory GetContactsRotationArgs.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationArgs(
      arn: pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

