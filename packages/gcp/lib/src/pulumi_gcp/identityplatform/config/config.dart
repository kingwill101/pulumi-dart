import 'package:pulumi/pulumi.dart';
import '../config_blocking_functions/config_blocking_functions.dart';
import '../config_client/config_client.dart';
import '../config_mfa/config_mfa.dart';
import '../config_monitoring/config_monitoring.dart';
import '../config_multi_tenant/config_multi_tenant.dart';
import '../config_quota/config_quota.dart';
import '../config_sign_in/config_sign_in.dart';
import '../config_sms_region_config/config_sms_region_config.dart';
import 'config_args.dart';

/// Identity Platform configuration for a Cloud project. Identity Platform is an
/// end-to-end authentication system for third-party users to access apps
/// and services.
///
/// This entity is created only once during intialization and cannot be deleted,
/// individual Identity Providers may be disabled instead.  This resource may only
/// be created in billing-enabled projects.
///
///
/// To get more information about Config, see:
///
/// * [API documentation](https://cloud.google.com/identity-platform/docs/reference/rest/v2/Config)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity-platform/docs)
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Config Basic
///
///
///
///
/// ## Import
///
/// Config can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/config`
///
/// * `projects/{{project}}`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/config:Config default projects/{{project}}/config
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/config:Config default projects/{{project}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/config:Config default {{project}}
/// ```
class Config extends CustomResource {
  /// List of domains authorized for OAuth redirects.
  late final Output<List<String>> authorizedDomains;

  /// Whether anonymous users will be auto-deleted after a period of 30 days
  late final Output<bool?> autodeleteAnonymousUsers;

  /// Configuration related to blocking functions.
  /// Structure is documented below.
  late final Output<ConfigBlockingFunctions?> blockingFunctions;

  /// Options related to how clients making requests on behalf of a project should be configured.
  /// Structure is documented below.
  late final Output<ConfigClient> client;

  /// Options related to how clients making requests on behalf of a project should be configured.
  /// Structure is documented below.
  late final Output<ConfigMfa> mfa;

  /// Configuration related to monitoring project activity.
  /// Structure is documented below.
  late final Output<ConfigMonitoring> monitoring;

  /// Configuration related to multi-tenant functionality.
  /// Structure is documented below.
  late final Output<ConfigMultiTenant?> multiTenant;

  /// The name of the Config resource
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Configuration related to quotas.
  /// Structure is documented below.
  late final Output<ConfigQuota?> quota;

  /// Configuration related to local sign in methods.
  /// Structure is documented below.
  late final Output<ConfigSignIn> signIn;

  /// Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number.
  /// Structure is documented below.
  late final Output<ConfigSmsRegionConfig> smsRegionConfig;

  Config(
    String name, {
    ConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/config:Config',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authorizedDomains = registerOutput<List<String>>('authorizedDomains');
    this.autodeleteAnonymousUsers =
        registerOutput<bool?>('autodeleteAnonymousUsers');
    this.blockingFunctions =
        registerOutput<ConfigBlockingFunctions?>('blockingFunctions');
    this.client = registerOutput<ConfigClient>('client');
    this.mfa = registerOutput<ConfigMfa>('mfa');
    this.monitoring = registerOutput<ConfigMonitoring>('monitoring');
    this.multiTenant = registerOutput<ConfigMultiTenant?>('multiTenant');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.quota = registerOutput<ConfigQuota?>('quota');
    this.signIn = registerOutput<ConfigSignIn>('signIn');
    this.smsRegionConfig =
        registerOutput<ConfigSmsRegionConfig>('smsRegionConfig');
  }
}
