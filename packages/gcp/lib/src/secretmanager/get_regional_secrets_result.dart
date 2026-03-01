// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_secrets_secret.dart';

/// Result data returned by getRegionalSecrets.
class GetRegionalSecretsResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The location in which the resource belongs.
  final String location;

  /// The ID of the project in which the resource belongs.
  final String project;

  /// A list of regional secrets present in the specified location and matching the filter. Structure is defined below.
  final List<GetRegionalSecretsSecret> secrets;

  /// Creates a new [GetRegionalSecretsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location in which the resource belongs.
  /// [project] The ID of the project in which the resource belongs.
  /// [secrets] A list of regional secrets present in the specified location and matching the filter. Structure is defined below.
  GetRegionalSecretsResult({
    this.filter,
    required this.id,
    required this.location,
    required this.project,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': id,
      'location': location,
      'project': project,
      'secrets':
          pulumi.Input.encodeList<
            GetRegionalSecretsSecret,
            Map<String, dynamic>
          >(secrets, (value) => value.toMap()),
    };
  }

  factory GetRegionalSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretsResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] as String,
      secrets: pulumi.Input.decodeList<GetRegionalSecretsSecret>(
        map['secrets'],
        (value) => GetRegionalSecretsSecret.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
