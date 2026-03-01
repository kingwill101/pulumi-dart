// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_apicategory_args_doc}
/// Arguments for getApicategory.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_apicategory_args_doc}
class GetApicategoryArgs {
  final pulumi.Input<String> apicategoryId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> siteId;

  /// Creates a new [GetApicategoryArgs].
  /// [apicategoryId] Required.
  /// [organizationId] Required.
  /// [siteId] Required.
  GetApicategoryArgs({
    required String apicategoryId,
    required String organizationId,
    required String siteId,
  }) : apicategoryId = pulumi.Input.asInput<String>(apicategoryId),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apicategoryId': apicategoryId,
      'organizationId': organizationId,
      'siteId': siteId,
    };
  }

  factory GetApicategoryArgs.fromMap(Map<String, dynamic> map) {
    return GetApicategoryArgs(
      apicategoryId: map['apicategoryId'] as String,
      organizationId: map['organizationId'] as String,
      siteId: map['siteId'] as String,
    );
  }
}
