import 'package:pulumi/pulumi.dart';
import 'organizational_unit_association_args.dart';

/// Resource for managing an AWS User Notifications Organizational Unit Association. This resource associates an organizational unit with a notification configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Associate with Organization Root
///
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Organizational Unit Association using the `notification_configuration_arn,organizational_unit_id` format. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/organizationalUnitAssociation:OrganizationalUnitAssociation example arn:aws:notifications:us-west-2:123456789012:configuration:example-notification-config,ou-1234-12345678
/// ```
class OrganizationalUnitAssociation extends CustomResource {
  /// ARN of the notification configuration to associate the organizational unit with.
  late final Output<String> notificationConfigurationArn;

  /// ID of the organizational unit or ID of the root to associate with the notification configuration. Can be a root ID (e.g., `r-1234`), or an organization ID (e.g., `o-1234567890`).
  late final Output<String> organizationalUnitId;

  OrganizationalUnitAssociation(
    String name, {
    OrganizationalUnitAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:notifications/organizationalUnitAssociation:OrganizationalUnitAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.notificationConfigurationArn =
        registerOutput<String>('notificationConfigurationArn');
    this.organizationalUnitId = registerOutput<String>('organizationalUnitId');
  }
}
