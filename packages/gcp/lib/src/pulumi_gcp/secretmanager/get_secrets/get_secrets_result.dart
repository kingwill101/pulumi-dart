// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_secrets_secret/get_secrets_secret.dart';

/// Result data returned by getSecrets.
class GetSecretsResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The ID of the project in which the resource belongs.
  final String project;

  /// A list of secrets matching the filter. Structure is defined below.
  final List<GetSecretsSecret> secrets;

  GetSecretsResult({
    this.filter,
    required this.id,
    required this.project,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['project'] = project;
    map['secrets'] =
        pulumi.Input.encodeList<GetSecretsSecret, Map<String, dynamic>>(
            secrets, (value) => value.toMap());
    return map;
  }

  factory GetSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      project: map['project'] as String,
      secrets: pulumi.Input.decodeList<GetSecretsSecret>(
          map['secrets'],
          (value) =>
              GetSecretsSecret.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
