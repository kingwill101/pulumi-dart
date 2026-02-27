import 'package:pulumi/pulumi.dart' as pulumi;
import '../contact_channel_delivery_address/contact_channel_delivery_address.dart';
import 'contact_channel_args.dart';

/// Resource for managing an AWS SSM Contacts Contact Channel.
///
/// > **NOTE:** The contact channel needs to be activated in the AWS Systems Manager console, otherwise it can't be used to engage the contact. See the [Contacts section of the Incident Manager User Guide](https://docs.aws.amazon.com/incident-manager/latest/userguide/contacts.html) for more information.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with SSM Contact
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the contact channel.
///
///
/// Using `pulumi import`, import SSM Contact Channel using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:ssmcontacts/contactChannel:ContactChannel example arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example
/// ```
class ContactChannel extends pulumi.CustomResource {
  /// Whether the contact channel is activated. The contact channel must be activated to use it to engage the contact. One of `ACTIVATED` or `NOT_ACTIVATED`.
  late final pulumi.Output<String> activationStatus;

  /// Amazon Resource Name (ARN) of the contact channel.
  late final pulumi.Output<String> arn;

  /// Amazon Resource Name (ARN) of the AWS SSM Contact that the contact channel belongs to.
  late final pulumi.Output<String> contactId;

  /// Block that contains contact engagement details. See details below.
  late final pulumi.Output<ContactChannelDeliveryAddress> deliveryAddress;

  /// Name of the contact channel. Must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), hyphens (`-`), periods (`.`), and spaces.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Type of the contact channel. One of `SMS`, `VOICE` or `EMAIL`.
  late final pulumi.Output<String> type;

  ContactChannel(
    String name, {
    ContactChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssmcontacts/contactChannel:ContactChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activationStatus = registerOutput<String>('activationStatus');
    this.arn = registerOutput<String>('arn');
    this.contactId = registerOutput<String>('contactId');
    this.deliveryAddress =
        registerOutput<ContactChannelDeliveryAddress>('deliveryAddress');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.type = registerOutput<String>('type');
  }
}
