// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_developer_app_args_doc}
/// Arguments for getDeveloperApp.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_developer_app_args_doc}
class GetDeveloperAppArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> developerId;
  final pulumi.Input<String>? entity;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String>? query;

  /// Creates a new [GetDeveloperAppArgs].
  /// [appId] Required.
  /// [developerId] Required.
  /// [entity] Optional.
  /// [organizationId] Required.
  /// [query] Optional.
  GetDeveloperAppArgs({
    required String appId,
    required String developerId,
    String? entity,
    required String organizationId,
    String? query,
  })  : appId = pulumi.Input.asInput<String>(appId),
        developerId = pulumi.Input.asInput<String>(developerId),
        entity = pulumi.Input.asOptionalInput<String>(entity),
        organizationId = pulumi.Input.asInput<String>(organizationId),
        query = pulumi.Input.asOptionalInput<String>(query);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['developerId'] = developerId;
    final entityValue = entity;
    if (entityValue != null) {
      map['entity'] = entityValue;
    }
    map['organizationId'] = organizationId;
    final queryValue = query;
    if (queryValue != null) {
      map['query'] = queryValue;
    }
    return map;
  }

  factory GetDeveloperAppArgs.fromMap(Map<String, dynamic> map) {
    return GetDeveloperAppArgs(
      appId: map['appId'] as String,
      developerId: map['developerId'] as String,
      entity: map['entity'] == null ? null : map['entity'] as String,
      organizationId: map['organizationId'] as String,
      query: map['query'] == null ? null : map['query'] as String,
    );
  }
}
