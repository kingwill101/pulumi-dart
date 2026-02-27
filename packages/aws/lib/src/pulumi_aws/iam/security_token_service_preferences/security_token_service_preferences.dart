import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_token_service_preferences_args.dart';

/// Provides an IAM Security Token Service Preferences resource.
class SecurityTokenServicePreferences extends pulumi.CustomResource {
  /// The version of the STS global endpoint token. Valid values: `v1Token`, `v2Token`.
  late final pulumi.Output<String> globalEndpointTokenVersion;

  SecurityTokenServicePreferences(
    String name, {
    SecurityTokenServicePreferencesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/securityTokenServicePreferences:SecurityTokenServicePreferences',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.globalEndpointTokenVersion =
        registerOutput<String>('globalEndpointTokenVersion');
  }
}
