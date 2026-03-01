// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_redirect_uris_application_redirect_uris_args_doc}
/// The set of arguments for ApplicationRedirectUris.
/// {@endtemplate}
/// {@macro pulumi_index_application_redirect_uris_application_redirect_uris_args_doc}
class ApplicationRedirectUrisArgs {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationId;
  /// A set of redirect URIs to assign to the application.
  final pulumi.Input<List<String>> redirectUris;
  /// The type of redirect URIs to manage. Must be one of: `PublicClient`, `SPA`, or `Web`. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationRedirectUrisArgs].
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [redirectUris] A set of redirect URIs to assign to the application.
  /// [type] The type of redirect URIs to manage. Must be one of: `PublicClient`, `SPA`, or `Web`. Changing this forces a new resource to be created.
  ApplicationRedirectUrisArgs({
    required String applicationId,
    required List<String> redirectUris,
    required String type,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      redirectUris = pulumi.Input.asInput<List<String>>(redirectUris),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'redirectUris': redirectUris,
      'type': type,
    };
  }

  factory ApplicationRedirectUrisArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationRedirectUrisArgs(
      applicationId: map['applicationId'] as String,
      redirectUris: (map['redirectUris'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

