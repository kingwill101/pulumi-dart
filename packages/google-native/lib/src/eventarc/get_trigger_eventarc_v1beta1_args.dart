// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_v1beta1_get_trigger_eventarc_v1beta1_args_doc}
/// Arguments for getTrigger.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1beta1_get_trigger_eventarc_v1beta1_args_doc}
class GetTriggerEventarcV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> triggerId;

  /// Creates a new [GetTriggerEventarcV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [triggerId] Required.
  GetTriggerEventarcV1beta1Args({
    required String location,
    String? project,
    required String triggerId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       triggerId = pulumi.Input.asInput<String>(triggerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'triggerId': triggerId,
    };
  }

  factory GetTriggerEventarcV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTriggerEventarcV1beta1Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      triggerId: map['triggerId'] as String,
    );
  }
}
