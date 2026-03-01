// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_developer_args_doc}
/// Arguments for getDeveloper.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_developer_args_doc}
class GetDeveloperArgs {
  final pulumi.Input<String>? action;
  final pulumi.Input<String> developerId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetDeveloperArgs].
  /// [action] Optional.
  /// [developerId] Required.
  /// [organizationId] Required.
  GetDeveloperArgs({
    String? action,
    required String developerId,
    required String organizationId,
  }) : action = pulumi.Input.asOptionalInput<String>(action),
       developerId = pulumi.Input.asInput<String>(developerId),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'developerId': developerId,
      'organizationId': organizationId,
    };
  }

  factory GetDeveloperArgs.fromMap(Map<String, dynamic> map) {
    return GetDeveloperArgs(
      action: map['action'] == null ? null : map['action'] as String,
      developerId: map['developerId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
