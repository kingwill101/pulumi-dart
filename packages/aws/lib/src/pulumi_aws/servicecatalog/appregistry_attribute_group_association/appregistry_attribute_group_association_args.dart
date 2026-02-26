// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AppregistryAttributeGroupAssociation.
class AppregistryAttributeGroupAssociationArgs {
  /// ID of the application.
  final Input<String> applicationId;

  /// ID of the attribute group to associate with the application.
  final Input<String> attributeGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  AppregistryAttributeGroupAssociationArgs({
    required this.applicationId,
    required this.attributeGroupId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['attributeGroupId'] = attributeGroupId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AppregistryAttributeGroupAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return AppregistryAttributeGroupAssociationArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      attributeGroupId: Input.asInput<String>(map['attributeGroupId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
