// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_file_v1beta1_get_share_args_doc}
/// Arguments for getShare.
/// {@endtemplate}
/// {@macro pulumi_file_v1beta1_get_share_args_doc}
class GetShareArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> shareId;

  /// Creates a new [GetShareArgs].
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [shareId] Required.
  GetShareArgs({
    required String instanceId,
    required String location,
    String? project,
    required String shareId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      shareId = pulumi.Input.asInput<String>(shareId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': location,
      'project': ?project,
      'shareId': shareId,
    };
  }

  factory GetShareArgs.fromMap(Map<String, dynamic> map) {
    return GetShareArgs(
      instanceId: map['instanceId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      shareId: map['shareId'] as String,
    );
  }
}

