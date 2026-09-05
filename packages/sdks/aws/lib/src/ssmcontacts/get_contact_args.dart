// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssmcontacts_get_contact_get_contact_args_doc}
/// Arguments for getContact.
/// {@endtemplate}
/// {@macro pulumi_ssmcontacts_get_contact_get_contact_args_doc}
class GetContactArgs {
  /// ARN of the contact or escalation plan.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetContactArgs].
  /// [arn] ARN of the contact or escalation plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource.
  const GetContactArgs({
    required this.arn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetContactArgs.fromMap(Map<String, dynamic> map) {
    return GetContactArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
