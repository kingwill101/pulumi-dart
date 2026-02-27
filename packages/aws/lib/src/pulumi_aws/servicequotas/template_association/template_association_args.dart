// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TemplateAssociation.
class TemplateAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Skip disassociating the quota increase template upon destruction. This will remove the resource from Terraform state, but leave the remote association in place.
  final pulumi.Input<bool>? skipDestroy;

  TemplateAssociationArgs({
    this.region,
    this.skipDestroy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    return map;
  }

  factory TemplateAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TemplateAssociationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      skipDestroy: pulumi.Input.asOptionalInput<bool>(map['skipDestroy']),
    );
  }
}
