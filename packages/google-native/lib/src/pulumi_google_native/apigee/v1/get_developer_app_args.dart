// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDeveloperApp.
class GetDeveloperAppArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> developerId;
  final pulumi.Input<String>? entity;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String>? query;

  GetDeveloperAppArgs({
    required this.appId,
    required this.developerId,
    this.entity,
    required this.organizationId,
    this.query,
  });

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
      appId: pulumi.Input.asInput<String>(map['appId']),
      developerId: pulumi.Input.asInput<String>(map['developerId']),
      entity: pulumi.Input.asOptionalInput<String>(map['entity']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      query: pulumi.Input.asOptionalInput<String>(map['query']),
    );
  }
}
