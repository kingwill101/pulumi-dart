import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_addresses/user_addresses.dart';
import '../user_emails/user_emails.dart';
import '../user_external_id/user_external_id.dart';
import '../user_name/user_name.dart';
import '../user_phone_numbers/user_phone_numbers.dart';
import 'user_identitystore_args.dart';

/// This resource manages a User resource within an Identity Store.
///
/// > **Note:** If you use an external identity provider or Active Directory as your identity source,
/// use this resource with caution. IAM Identity Center does not support outbound synchronization,
/// so your identity source does not automatically update with the changes that you make to
/// users using this resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an Identity Store User using the combination `identity_store_id/user_id`. For example:
///
/// ```sh
/// $ pulumi import aws:identitystore/user:User example d-9c6705e95c/065212b4-9061-703b-5876-13a517ae2a7c
/// ```
class UserIdentitystore extends pulumi.CustomResource {
  /// Details about the user's address. At most 1 address is allowed. Detailed below.
  late final pulumi.Output<UserAddresses?> addresses;

  /// The name that is typically displayed when the user is referenced.
  late final pulumi.Output<String> displayName;

  /// Details about the user's email. At most 1 email is allowed. Detailed below.
  late final pulumi.Output<UserEmails?> emails;

  /// A list of identifiers issued to this resource by an external identity provider.
  late final pulumi.Output<List<UserExternalId>> externalIds;

  /// The globally unique identifier for the identity store that this user is in.
  late final pulumi.Output<String> identityStoreId;

  /// The user's geographical region or location.
  late final pulumi.Output<String?> locale;

  /// Details about the user's full name. Detailed below.
  late final pulumi.Output<UserName> name;

  /// An alternate name for the user.
  late final pulumi.Output<String?> nickname;

  /// Details about the user's phone number. At most 1 phone number is allowed. Detailed below.
  late final pulumi.Output<UserPhoneNumbers?> phoneNumbers;

  /// The preferred language of the user.
  late final pulumi.Output<String?> preferredLanguage;

  /// An URL that may be associated with the user.
  late final pulumi.Output<String?> profileUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The user's time zone.
  late final pulumi.Output<String?> timezone;

  /// The user's title.
  late final pulumi.Output<String?> title;

  /// The identifier for this user in the identity store.
  late final pulumi.Output<String> userId;

  /// A unique string used to identify the user. This value can consist of letters, accented characters, symbols, numbers, and punctuation. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store. The limit is 128 characters.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userName;

  /// The user type.
  ///
  /// > Unless specified otherwise, all fields can contain up to 1024 characters of free-form text.
  late final pulumi.Output<String?> userType;

  UserIdentitystore(
    String name, {
    UserIdentitystoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:identitystore/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addresses = registerOutput<UserAddresses?>('addresses');
    this.displayName = registerOutput<String>('displayName');
    this.emails = registerOutput<UserEmails?>('emails');
    this.externalIds = registerOutput<List<UserExternalId>>('externalIds');
    this.identityStoreId = registerOutput<String>('identityStoreId');
    this.locale = registerOutput<String?>('locale');
    this.name = registerOutput<UserName>('name');
    this.nickname = registerOutput<String?>('nickname');
    this.phoneNumbers = registerOutput<UserPhoneNumbers?>('phoneNumbers');
    this.preferredLanguage = registerOutput<String?>('preferredLanguage');
    this.profileUrl = registerOutput<String?>('profileUrl');
    this.region = registerOutput<String>('region');
    this.timezone = registerOutput<String?>('timezone');
    this.title = registerOutput<String?>('title');
    this.userId = registerOutput<String>('userId');
    this.userName = registerOutput<String>('userName');
    this.userType = registerOutput<String?>('userType');
  }
}
