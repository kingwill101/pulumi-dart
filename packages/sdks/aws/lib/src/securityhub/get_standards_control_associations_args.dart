// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_get_standards_control_associations_get_standards_control_associations_args_doc}
/// Arguments for getStandardsControlAssociations.
/// {@endtemplate}
/// {@macro pulumi_securityhub_get_standards_control_associations_get_standards_control_associations_args_doc}
class GetStandardsControlAssociationsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The identifier of the control (identified with `SecurityControlId`, `SecurityControlArn`, or a mix of both parameters).
  final pulumi.Input<String> securityControlId;

  /// Creates a new [GetStandardsControlAssociationsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityControlId] The identifier of the control (identified with `SecurityControlId`, `SecurityControlArn`, or a mix of both parameters).
  GetStandardsControlAssociationsArgs({
    this.region,
    required this.securityControlId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'securityControlId': securityControlId,
    };
  }

  factory GetStandardsControlAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetStandardsControlAssociationsArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityControlId: (map['securityControlId'] as String).input(),
    );
  }
}

