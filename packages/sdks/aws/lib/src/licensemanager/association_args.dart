// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_licensemanager_association_association_args_doc}
/// The set of arguments for Association.
/// {@endtemplate}
/// {@macro pulumi_licensemanager_association_association_args_doc}
class AssociationArgs {
  /// ARN of the license configuration.
  final pulumi.Input<String> licenseConfigurationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the resource associated with the license configuration.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [AssociationArgs].
  /// [licenseConfigurationArn] ARN of the license configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource associated with the license configuration.
  AssociationArgs({
    required pulumi.Output<String> licenseConfigurationArn,
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceArn,
  }) :
      licenseConfigurationArn = pulumi.Input.asInput<String>(licenseConfigurationArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asInput<String>(resourceArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseConfigurationArn': licenseConfigurationArn,
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory AssociationArgs.fromMap(Map<String, dynamic> map) {
    return AssociationArgs(
      licenseConfigurationArn: pulumi.Output.create<String>(map['licenseConfigurationArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: pulumi.Output.create<String>(map['resourceArn'] as String),
    );
  }
}

