// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_hub_args_doc}
/// Arguments for getHub.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_hub_args_doc}
class GetHubArgs {
  final pulumi.Input<String> hubId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHubArgs].
  /// [hubId] Required.
  /// [project] Optional.
  GetHubArgs({
    required String hubId,
    String? project,
  }) :
      hubId = pulumi.Input.asInput<String>(hubId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubId': hubId,
      'project': ?project,
    };
  }

  factory GetHubArgs.fromMap(Map<String, dynamic> map) {
    return GetHubArgs(
      hubId: map['hubId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

