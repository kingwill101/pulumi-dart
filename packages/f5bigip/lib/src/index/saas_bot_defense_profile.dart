import 'package:pulumi/pulumi.dart' as pulumi;
import 'saas_bot_defense_profile_args.dart';
import 'saas_bot_defense_profile_protected_endpoint.dart';

class SaasBotDefenseProfile extends pulumi.CustomResource {
  /// Specifies the API key, enter the value provided by F5 Support.
  late final pulumi.Output<String> apiKey;
  /// Specifies the Bot Defense API application ID, enter the value provided by F5 Support
  late final pulumi.Output<String> applicationId;
  /// Distributed Cloud Services Bot Defense parent profile from which this profile will inherit settings.
  late final pulumi.Output<String?> defaultsFrom;
  /// Specifies descriptive text that identifies the BD profile.
  late final pulumi.Output<String> description;
  /// Unique name for the Distributed Cloud Services Bot Defense profile
  late final pulumi.Output<String> name;
  /// Use these settings to configure which pages on the website will be protected by BD
  late final pulumi.Output<List<SaasBotDefenseProfileProtectedEndpoint>> protectedEndpoints;
  /// Specifies the web hostname to which API requests are made
  late final pulumi.Output<String> shapeProtectionPool;
  /// Specifies a server-side SSL profile that is different from what the application pool uses
  late final pulumi.Output<String> sslProfile;
  /// Specifies the tenant ID, enter the value provided by F5 Support
  late final pulumi.Output<String> tenantId;

  /// Creates a new [SaasBotDefenseProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SaasBotDefenseProfile]. {@macro pulumi_index_saas_bot_defense_profile_saas_bot_defense_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SaasBotDefenseProfile(
    String name, {
    SaasBotDefenseProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/saasBotDefenseProfile:SaasBotDefenseProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.applicationId = registerOutput<String>('applicationId');
    this.defaultsFrom = registerOutput<String?>('defaultsFrom');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.protectedEndpoints = registerOutput<List<SaasBotDefenseProfileProtectedEndpoint>>('protectedEndpoints');
    this.shapeProtectionPool = registerOutput<String>('shapeProtectionPool');
    this.sslProfile = registerOutput<String>('sslProfile');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
