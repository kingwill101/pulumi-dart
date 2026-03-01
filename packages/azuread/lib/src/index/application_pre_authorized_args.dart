// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_pre_authorized_application_pre_authorized_args_doc}
/// The set of arguments for ApplicationPreAuthorized.
/// {@endtemplate}
/// {@macro pulumi_index_application_pre_authorized_application_pre_authorized_args_doc}
class ApplicationPreAuthorizedArgs {
  /// The resource ID of the application for which permissions are being authorized. Changing this field forces a new resource to be created.
  final pulumi.Input<String> applicationId;
  /// The client ID of the application being authorized. Changing this field forces a new resource to be created.
  final pulumi.Input<String> authorizedClientId;
  /// A set of permission scope IDs required by the authorized application.
  final pulumi.Input<List<String>> permissionIds;

  /// Creates a new [ApplicationPreAuthorizedArgs].
  /// [applicationId] The resource ID of the application for which permissions are being authorized. Changing this field forces a new resource to be created.
  /// [authorizedClientId] The client ID of the application being authorized. Changing this field forces a new resource to be created.
  /// [permissionIds] A set of permission scope IDs required by the authorized application.
  ApplicationPreAuthorizedArgs({
    required String applicationId,
    required String authorizedClientId,
    required List<String> permissionIds,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      authorizedClientId = pulumi.Input.asInput<String>(authorizedClientId),
      permissionIds = pulumi.Input.asInput<List<String>>(permissionIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'authorizedClientId': authorizedClientId,
      'permissionIds': permissionIds,
    };
  }

  factory ApplicationPreAuthorizedArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationPreAuthorizedArgs(
      applicationId: map['applicationId'] as String,
      authorizedClientId: map['authorizedClientId'] as String,
      permissionIds: (map['permissionIds'] as List).cast<String>(),
    );
  }
}

