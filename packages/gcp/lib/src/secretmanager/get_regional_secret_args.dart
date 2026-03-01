// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_regional_secret_get_regional_secret_args_doc}
/// Arguments for getRegionalSecret.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_regional_secret_get_regional_secret_args_doc}
class GetRegionalSecretArgs {
  /// The location of the regional secret. eg us-central1
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;
  /// The name of the regional secret.
  final pulumi.Input<String> secretId;

  /// Creates a new [GetRegionalSecretArgs].
  /// [location] The location of the regional secret. eg us-central1
  /// [project] The ID of the project in which the resource belongs.
  /// [secretId] The name of the regional secret.
  GetRegionalSecretArgs({
    required String location,
    String? project,
    required String secretId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      secretId = pulumi.Input.asInput<String>(secretId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'secretId': secretId,
    };
  }

  factory GetRegionalSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      secretId: map['secretId'] as String,
    );
  }
}

