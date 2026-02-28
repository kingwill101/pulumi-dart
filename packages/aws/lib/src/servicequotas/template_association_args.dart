// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicequotas_template_association_template_association_args_doc}
/// The set of arguments for TemplateAssociation.
/// {@endtemplate}
/// {@macro pulumi_servicequotas_template_association_template_association_args_doc}
class TemplateAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Skip disassociating the quota increase template upon destruction. This will remove the resource from Terraform state, but leave the remote association in place.
  final pulumi.Input<bool>? skipDestroy;

  /// Creates a new [TemplateAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Skip disassociating the quota increase template upon destruction. This will remove the resource from Terraform state, but leave the remote association in place.
  TemplateAssociationArgs({
    String? region,
    bool? skipDestroy,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'skipDestroy': ?skipDestroy,
    };
  }

  factory TemplateAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TemplateAssociationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      skipDestroy: map['skipDestroy'] == null ? null : map['skipDestroy'] as bool,
    );
  }
}

