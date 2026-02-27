import 'package:pulumi/pulumi.dart';
import 'security_token_service_preferences_args.dart';

/// Provides an IAM Security Token Service Preferences resource.
class SecurityTokenServicePreferences extends CustomResource {
  /// The version of the STS global endpoint token. Valid values: `v1Token`, `v2Token`.
  late final Output<String> globalEndpointTokenVersion;

  SecurityTokenServicePreferences(
    String name, {
    SecurityTokenServicePreferencesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/securityTokenServicePreferences:SecurityTokenServicePreferences',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.globalEndpointTokenVersion =
        registerOutput<String>('globalEndpointTokenVersion');
  }
}
