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
    String? region,
    required String securityControlId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        securityControlId = pulumi.Input.asInput<String>(securityControlId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityControlId'] = securityControlId;
    return map;
  }

  factory GetStandardsControlAssociationsArgs.fromMap(
      Map<String, dynamic> map) {
    return GetStandardsControlAssociationsArgs(
      region: map['region'] == null ? null : map['region'] as String,
      securityControlId: map['securityControlId'] as String,
    );
  }
}
