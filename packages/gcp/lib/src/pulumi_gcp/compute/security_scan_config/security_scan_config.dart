import 'package:pulumi/pulumi.dart';
import '../security_scan_config_authentication/security_scan_config_authentication.dart';
import '../security_scan_config_schedule/security_scan_config_schedule.dart';
import 'security_scan_config_args.dart';

/// A ScanConfig resource contains the configurations to launch a scan.
///
/// To get more information about ScanConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-scanner/docs/reference/rest/v1beta/projects.scanConfigs)
/// * How-to Guides
/// * [Using Cloud Security Scanner](https://cloud.google.com/security-scanner/docs/scanning)
///
///
///
/// ## Example Usage
///
/// ### Scan Config Basic
///
///
///
///
/// ## Import
///
/// ScanConfig can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ScanConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/securityScanConfig:SecurityScanConfig default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/securityScanConfig:SecurityScanConfig default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/securityScanConfig:SecurityScanConfig default {{name}}
/// ```
class SecurityScanConfig extends CustomResource {
  /// The authentication configuration.
  /// If specified, service will use the authentication configuration during scanning.
  /// Structure is documented below.
  late final Output<SecurityScanConfigAuthentication?> authentication;

  /// The blacklist URL patterns as described in
  /// https://cloud.google.com/security-scanner/docs/excluded-urls
  late final Output<List<String>?> blacklistPatterns;

  /// The user provider display name of the ScanConfig.
  late final Output<String> displayName;

  /// Controls export of scan configurations and results to Cloud Security Command Center.
  /// Default value is `ENABLED`.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final Output<String?> exportToSecurityCommandCenter;

  /// The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.
  /// Defaults to 15.
  late final Output<int?> maxQps;

  /// A server defined name for this index. Format:
  /// `projects/{{project}}/scanConfigs/{{server_generated_id}}`
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The schedule of the ScanConfig
  /// Structure is documented below.
  late final Output<SecurityScanConfigSchedule?> schedule;

  /// The starting URLs from which the scanner finds site pages.
  late final Output<List<String>> startingUrls;

  /// Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default.
  /// Each value may be one of: `APP_ENGINE`, `COMPUTE`.
  late final Output<List<String>?> targetPlatforms;

  /// Type of the user agents used for scanning
  /// Default value is `CHROME_LINUX`.
  /// Possible values are: `USER_AGENT_UNSPECIFIED`, `CHROME_LINUX`, `CHROME_ANDROID`, `SAFARI_IPHONE`.
  late final Output<String?> userAgent;

  SecurityScanConfig(
    String name, {
    SecurityScanConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/securityScanConfig:SecurityScanConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authentication =
        registerOutput<SecurityScanConfigAuthentication?>('authentication');
    this.blacklistPatterns = registerOutput<List<String>?>('blacklistPatterns');
    this.displayName = registerOutput<String>('displayName');
    this.exportToSecurityCommandCenter =
        registerOutput<String?>('exportToSecurityCommandCenter');
    this.maxQps = registerOutput<int?>('maxQps');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.schedule = registerOutput<SecurityScanConfigSchedule?>('schedule');
    this.startingUrls = registerOutput<List<String>>('startingUrls');
    this.targetPlatforms = registerOutput<List<String>?>('targetPlatforms');
    this.userAgent = registerOutput<String?>('userAgent');
  }
}
