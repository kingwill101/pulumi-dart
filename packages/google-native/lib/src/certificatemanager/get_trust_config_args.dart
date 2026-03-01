// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_v1_get_trust_config_args_doc}
/// Arguments for getTrustConfig.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_get_trust_config_args_doc}
class GetTrustConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> trustConfigId;

  /// Creates a new [GetTrustConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [trustConfigId] Required.
  GetTrustConfigArgs({
    required String location,
    String? project,
    required String trustConfigId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       trustConfigId = pulumi.Input.asInput<String>(trustConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'trustConfigId': trustConfigId,
    };
  }

  factory GetTrustConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetTrustConfigArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      trustConfigId: map['trustConfigId'] as String,
    );
  }
}
