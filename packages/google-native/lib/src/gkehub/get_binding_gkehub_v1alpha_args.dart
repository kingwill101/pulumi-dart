// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_binding_gkehub_v1alpha_args_doc}
/// Arguments for getBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_binding_gkehub_v1alpha_args_doc}
class GetBindingGkehubV1alphaArgs {
  final pulumi.Input<String> bindingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBindingGkehubV1alphaArgs].
  /// [bindingId] Required.
  /// [location] Required.
  /// [membershipId] Required.
  /// [project] Optional.
  GetBindingGkehubV1alphaArgs({
    required String bindingId,
    required String location,
    required String membershipId,
    String? project,
  })  : bindingId = pulumi.Input.asInput<String>(bindingId),
        location = pulumi.Input.asInput<String>(location),
        membershipId = pulumi.Input.asInput<String>(membershipId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bindingId'] = bindingId;
    map['location'] = location;
    map['membershipId'] = membershipId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBindingGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetBindingGkehubV1alphaArgs(
      bindingId: map['bindingId'] as String,
      location: map['location'] as String,
      membershipId: map['membershipId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
