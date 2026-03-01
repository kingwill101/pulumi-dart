// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_fallback_public_client_application_fallback_public_client_args_doc}
/// The set of arguments for ApplicationFallbackPublicClient.
/// {@endtemplate}
/// {@macro pulumi_index_application_fallback_public_client_application_fallback_public_client_args_doc}
class ApplicationFallbackPublicClientArgs {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationId;
  /// Whether to enable the application as a fallback public client.
  ///
  /// > Some configurations may require the Fallback Public Client setting to be `null`, for this case simply destroy this resource (or don't use it)
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ApplicationFallbackPublicClientArgs].
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [enabled] Whether to enable the application as a fallback public client.
  ApplicationFallbackPublicClientArgs({
    required String applicationId,
    bool? enabled,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'enabled': ?enabled,
    };
  }

  factory ApplicationFallbackPublicClientArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationFallbackPublicClientArgs(
      applicationId: map['applicationId'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

