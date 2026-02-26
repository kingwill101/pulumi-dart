// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getStandardsControlAssociations.
class GetStandardsControlAssociationsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The identifier of the control (identified with `SecurityControlId`, `SecurityControlArn`, or a mix of both parameters).
  final Input<String> securityControlId;

  GetStandardsControlAssociationsArgs({
    this.region,
    required this.securityControlId,
  });

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
      region: Input.asOptionalInput<String>(map['region']),
      securityControlId: Input.asInput<String>(map['securityControlId']),
    );
  }
}
