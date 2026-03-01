// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_api_access_application_api_access_args_doc}
/// The set of arguments for ApplicationApiAccess.
/// {@endtemplate}
/// {@macro pulumi_index_application_api_access_application_api_access_args_doc}
class ApplicationApiAccessArgs {
  /// The client ID of the API to which access is being granted. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiClientId;
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationId;
  /// A set of role IDs to be granted to the application, as published by the API.
  final pulumi.Input<List<String>>? roleIds;
  /// A set of scope IDs to be granted to the application, as published by the API.
  ///
  /// > At least one of `role_ids` or `scope_ids` must be specified.
  final pulumi.Input<List<String>>? scopeIds;

  /// Creates a new [ApplicationApiAccessArgs].
  /// [apiClientId] The client ID of the API to which access is being granted. Changing this forces a new resource to be created.
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [roleIds] A set of role IDs to be granted to the application, as published by the API.
  /// [scopeIds] A set of scope IDs to be granted to the application, as published by the API.
  ApplicationApiAccessArgs({
    required String apiClientId,
    required String applicationId,
    List<String>? roleIds,
    List<String>? scopeIds,
  }) :
      apiClientId = pulumi.Input.asInput<String>(apiClientId),
      applicationId = pulumi.Input.asInput<String>(applicationId),
      roleIds = pulumi.Input.asOptionalInput<List<String>>(roleIds),
      scopeIds = pulumi.Input.asOptionalInput<List<String>>(scopeIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiClientId': apiClientId,
      'applicationId': applicationId,
      'roleIds': ?roleIds,
      'scopeIds': ?scopeIds,
    };
  }

  factory ApplicationApiAccessArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationApiAccessArgs(
      apiClientId: map['apiClientId'] as String,
      applicationId: map['applicationId'] as String,
      roleIds: map['roleIds'] == null ? null : (map['roleIds'] as List).cast<String>(),
      scopeIds: map['scopeIds'] == null ? null : (map['scopeIds'] as List).cast<String>(),
    );
  }
}

