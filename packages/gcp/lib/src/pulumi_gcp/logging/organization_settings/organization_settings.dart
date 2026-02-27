import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_settings_args.dart';

/// Default resource settings control whether CMEK is required for new log buckets. These settings also determine the storage location for the _Default and _Required log buckets, and whether the _Default sink is enabled or disabled.
///
///
/// To get more information about OrganizationSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/TopLevel/getSettings)
/// * How-to Guides
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings)
///
/// ## Example Usage
///
/// ### Logging Organization Settings All
///
///
///
///
/// ## Import
///
/// OrganizationSettings can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/settings`
///
/// * `{{organization}}`
///
/// When using the `pulumi import` command, OrganizationSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/organizationSettings:OrganizationSettings default organizations/{{organization}}/settings
/// ```
///
/// ```sh
/// $ pulumi import gcp:logging/organizationSettings:OrganizationSettings default {{organization}}
/// ```
class OrganizationSettings extends pulumi.CustomResource {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  late final pulumi.Output<bool> disableDefaultSink;

  /// The resource name for the configured Cloud KMS key.
  late final pulumi.Output<String> kmsKeyName;

  /// The service account that will be used by the Log Router to access your Cloud KMS key.
  late final pulumi.Output<String> kmsServiceAccountId;

  /// The service account for the given container. Sinks use this service account as their writerIdentity if no custom service account is provided.
  late final pulumi.Output<String> loggingServiceAccountId;

  /// The resource name of the settings.
  late final pulumi.Output<String> name;

  /// The organization for which to retrieve or configure settings.
  late final pulumi.Output<String> organization;

  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  late final pulumi.Output<String> storageLocation;

  OrganizationSettings(
    String name, {
    OrganizationSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/organizationSettings:OrganizationSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disableDefaultSink = registerOutput<bool>('disableDefaultSink');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.kmsServiceAccountId = registerOutput<String>('kmsServiceAccountId');
    this.loggingServiceAccountId =
        registerOutput<String>('loggingServiceAccountId');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.storageLocation = registerOutput<String>('storageLocation');
  }
}
