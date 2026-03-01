// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenteraiplatform_v1alpha1_get_contact_center_args_doc}
/// Arguments for getContactCenter.
/// {@endtemplate}
/// {@macro pulumi_contactcenteraiplatform_v1alpha1_get_contact_center_args_doc}
class GetContactCenterArgs {
  final pulumi.Input<String> contactCenterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetContactCenterArgs].
  /// [contactCenterId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetContactCenterArgs({
    required String contactCenterId,
    required String location,
    String? project,
  }) : contactCenterId = pulumi.Input.asInput<String>(contactCenterId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactCenterId': contactCenterId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetContactCenterArgs.fromMap(Map<String, dynamic> map) {
    return GetContactCenterArgs(
      contactCenterId: map['contactCenterId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
