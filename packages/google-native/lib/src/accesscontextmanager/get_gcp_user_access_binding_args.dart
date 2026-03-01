// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1_get_gcp_user_access_binding_args_doc}
/// Arguments for getGcpUserAccessBinding.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_get_gcp_user_access_binding_args_doc}
class GetGcpUserAccessBindingArgs {
  final pulumi.Input<String> gcpUserAccessBindingId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetGcpUserAccessBindingArgs].
  /// [gcpUserAccessBindingId] Required.
  /// [organizationId] Required.
  GetGcpUserAccessBindingArgs({
    required String gcpUserAccessBindingId,
    required String organizationId,
  }) : gcpUserAccessBindingId = pulumi.Input.asInput<String>(
         gcpUserAccessBindingId,
       ),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpUserAccessBindingId': gcpUserAccessBindingId,
      'organizationId': organizationId,
    };
  }

  factory GetGcpUserAccessBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetGcpUserAccessBindingArgs(
      gcpUserAccessBindingId: map['gcpUserAccessBindingId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
