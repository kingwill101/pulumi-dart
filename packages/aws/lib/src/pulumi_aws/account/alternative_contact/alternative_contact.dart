import 'package:pulumi/pulumi.dart';
import 'alternative_contact_args.dart';

/// Manages the specified alternate contact attached to an AWS Account.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Import the Alternate Contact for another account using the `account_id` and `alternate_contact_type` separated by a forward slash (`/`):
///
///
/// **Using `pulumi import` to import** the Alternate Contact for the current or another account using the `alternate_contact_type`. For example:
///
/// Import the Alternate Contact for the current account:
///
/// ```sh
/// $ pulumi import aws:account/alternativeContact:AlternativeContact operations OPERATIONS
/// ```
///
/// Import the Alternate Contact for another account using the `account_id` and `alternate_contact_type` separated by a forward slash (`/`):
///
/// ```sh
/// $ pulumi import aws:account/alternativeContact:AlternativeContact operations 1234567890/OPERATIONS
/// ```
class AlternativeContact extends CustomResource {
  /// ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  late final Output<String?> accountId;

  /// Type of the alternate contact. Allowed values are: `BILLING`, `OPERATIONS`, `SECURITY`.
  late final Output<String> alternateContactType;

  /// An email address for the alternate contact.
  late final Output<String> emailAddress;

  /// Name of the alternate contact.
  late final Output<String> name;

  /// Phone number for the alternate contact.
  late final Output<String> phoneNumber;

  /// Title for the alternate contact.
  late final Output<String> title;

  AlternativeContact(
    String name, {
    AlternativeContactArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:account/alternativeContact:AlternativeContact',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String?>('accountId');
    this.alternateContactType = registerOutput<String>('alternateContactType');
    this.emailAddress = registerOutput<String>('emailAddress');
    this.name = registerOutput<String>('name');
    this.phoneNumber = registerOutput<String>('phoneNumber');
    this.title = registerOutput<String>('title');
  }
}
