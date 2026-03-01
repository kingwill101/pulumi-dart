// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_app_connection_beyondcorp_v1alpha_args_doc}
/// Arguments for getAppConnection.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_app_connection_beyondcorp_v1alpha_args_doc}
class GetAppConnectionBeyondcorpV1alphaArgs {
  final pulumi.Input<String> appConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppConnectionBeyondcorpV1alphaArgs].
  /// [appConnectionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAppConnectionBeyondcorpV1alphaArgs({
    required String appConnectionId,
    required String location,
    String? project,
  }) : appConnectionId = pulumi.Input.asInput<String>(appConnectionId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConnectionId': appConnectionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAppConnectionBeyondcorpV1alphaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppConnectionBeyondcorpV1alphaArgs(
      appConnectionId: map['appConnectionId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
