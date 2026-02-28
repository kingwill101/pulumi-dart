// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1_get_binding_args_doc}
/// Arguments for getBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1_get_binding_args_doc}
class GetBindingArgs {
  final pulumi.Input<String> bindingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBindingArgs].
  /// [bindingId] Required.
  /// [location] Required.
  /// [membershipId] Required.
  /// [project] Optional.
  GetBindingArgs({
    required String bindingId,
    required String location,
    required String membershipId,
    String? project,
  }) :
      bindingId = pulumi.Input.asInput<String>(bindingId),
      location = pulumi.Input.asInput<String>(location),
      membershipId = pulumi.Input.asInput<String>(membershipId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingId': bindingId,
      'location': location,
      'membershipId': membershipId,
      'project': ?project,
    };
  }

  factory GetBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetBindingArgs(
      bindingId: map['bindingId'] as String,
      location: map['location'] as String,
      membershipId: map['membershipId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

