import 'package:pulumi/pulumi.dart';
import '../settings_email_notification_settings/settings_email_notification_settings.dart';
import '../settings_service_account_approver_settings/settings_service_account_approver_settings.dart';
import 'settings_args2.dart';

/// Settings resource defines the properties, applied directly to the resource or inherited through the hierarchy, to enable consistent, federated use of PAM.
///
/// To get more information about Settings, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/pam/rest/v1beta/folders.locations/updateSettings)
/// * How-to Guides
/// * [Configure Privileged Access Manager settings](https://cloud.google.com/iam/docs/pam-configure-settings)
/// * [Official Documentation](https://cloud.google.com/iam/docs/pam-overview)
///
/// ## Example Usage
///
/// ### Privileged Access Manager Settings Basic
///
///
///
///
/// ## Import
///
/// Settings can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/settings`
///
/// When using the `pulumi import` command, Settings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:privilegedaccessmanager/settings:Settings default {{parent}}/locations/{{location}}/settings
/// ```
class Settings2 extends CustomResource {
  /// Create timestamp. Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final Output<String> createTime;

  /// EmailNotificationSettings defines node-wide email notification preferences for various PAM events.
  /// Structure is documented below.
  late final Output<SettingsEmailNotificationSettings?>
      emailNotificationSettings;

  /// Fingerprint for optimistic concurrency returned in the response of GetSettings. Must be provided in the requests to UpdateSettings. If the value provided does not match the value known to the server, ABORTED will be thrown, and the client should retry the read-modify-write cycle.
  late final Output<String> etag;

  /// The region of the PAM settings resource.
  late final Output<String> location;

  /// Name of the settings resource. Possible formats:
  /// projects/{project-id|project-number}/locations/{location}/settings folders/{folder-number}/locations/{location}/settings organizations/{organization-number}/locations/{location}/settings
  late final Output<String> name;

  /// Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  late final Output<String> parent;

  /// This controls the node-level settings for allowing service accounts as approvers.
  /// Structure is documented below.
  late final Output<SettingsServiceAccountApproverSettings?>
      serviceAccountApproverSettings;

  /// Update timestamp. Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final Output<String> updateTime;

  Settings2(
    String name, {
    SettingsArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:privilegedaccessmanager/settings:Settings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.emailNotificationSettings =
        registerOutput<SettingsEmailNotificationSettings?>(
            'emailNotificationSettings');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.serviceAccountApproverSettings =
        registerOutput<SettingsServiceAccountApproverSettings?>(
            'serviceAccountApproverSettings');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
