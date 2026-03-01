// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_lb_traffic_extension_args_doc}
/// Arguments for getLbTrafficExtension.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_lb_traffic_extension_args_doc}
class GetLbTrafficExtensionArgs {
  final pulumi.Input<String> lbTrafficExtensionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLbTrafficExtensionArgs].
  /// [lbTrafficExtensionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetLbTrafficExtensionArgs({
    required String lbTrafficExtensionId,
    required String location,
    String? project,
  }) : lbTrafficExtensionId = pulumi.Input.asInput<String>(
         lbTrafficExtensionId,
       ),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lbTrafficExtensionId': lbTrafficExtensionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetLbTrafficExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetLbTrafficExtensionArgs(
      lbTrafficExtensionId: map['lbTrafficExtensionId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
