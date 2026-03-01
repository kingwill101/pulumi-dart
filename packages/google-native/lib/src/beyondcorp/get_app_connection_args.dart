// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_app_connection_args_doc}
/// Arguments for getAppConnection.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_app_connection_args_doc}
class GetAppConnectionArgs {
  final pulumi.Input<String> appConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppConnectionArgs].
  /// [appConnectionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAppConnectionArgs({
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

  factory GetAppConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetAppConnectionArgs(
      appConnectionId: map['appConnectionId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
