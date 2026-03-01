// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssmcontacts_get_contact_get_contact_args_doc}
/// Arguments for getContact.
/// {@endtemplate}
/// {@macro pulumi_ssmcontacts_get_contact_get_contact_args_doc}
class GetContactArgs {
  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetContactArgs].
  /// [arn] The Amazon Resource Name (ARN) of the contact or escalation plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource.
  GetContactArgs({
    required pulumi.Output<String> arn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      arn = pulumi.Input.asInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetContactArgs.fromMap(Map<String, dynamic> map) {
    return GetContactArgs(
      arn: pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

