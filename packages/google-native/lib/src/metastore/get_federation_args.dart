// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1_get_federation_args_doc}
/// Arguments for getFederation.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1_get_federation_args_doc}
class GetFederationArgs {
  final pulumi.Input<String> federationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFederationArgs].
  /// [federationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFederationArgs({
    required String federationId,
    required String location,
    String? project,
  }) :
      federationId = pulumi.Input.asInput<String>(federationId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federationId': federationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFederationArgs.fromMap(Map<String, dynamic> map) {
    return GetFederationArgs(
      federationId: map['federationId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

