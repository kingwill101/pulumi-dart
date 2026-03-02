// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TemplateAssociation resources.
class TemplateAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Skip disassociating the quota increase template upon destruction. This will remove the resource from Terraform state, but leave the remote association in place.
  final pulumi.Input<bool>? skipDestroy;
  /// Association status. Creating this resource will result in an `ASSOCIATED` status, and quota increase requests in the template are automatically applied to new AWS accounts in the organization.
  final pulumi.Input<String>? status;

  /// Creates a new [TemplateAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Skip disassociating the quota increase template upon destruction. This will remove the resource from Terraform state, but leave the remote association in place.
  /// [status] Association status. Creating this resource will result in an `ASSOCIATED` status, and quota increase requests in the template are automatically applied to new AWS accounts in the organization.
  TemplateAssociationState({
    this.region,
    this.skipDestroy,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'skipDestroy': ?skipDestroy,
      'status': ?status,
    };
  }

  factory TemplateAssociationState.fromMap(Map<String, dynamic> map) {
    return TemplateAssociationState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      skipDestroy: map['skipDestroy'] == null ? null : (map['skipDestroy'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

