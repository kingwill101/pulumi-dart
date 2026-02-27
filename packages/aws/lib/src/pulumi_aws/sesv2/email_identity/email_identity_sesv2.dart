import 'package:pulumi/pulumi.dart' as pulumi;
import '../email_identity_dkim_signing_attributes/email_identity_dkim_signing_attributes.dart';
import 'email_identity_sesv2_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Email Identity.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// ### Email Address Identity
///
///
///
/// ### Domain Identity
///
///
///
/// ### Configuration Set
///
///
///
/// ### DKIM Signing Attributes (BYODKIM)
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Email Identity using the `email_identity`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/emailIdentity:EmailIdentity example example.com
/// ```
class EmailIdentitySesv2 extends pulumi.CustomResource {
  /// ARN of the Email Identity.
  late final pulumi.Output<String> arn;

  /// The configuration set to use by default when sending from this identity. Note that any configuration set defined in the email sending request takes precedence.
  late final pulumi.Output<String?> configurationSetName;

  /// The configuration of the DKIM authentication settings for an email domain identity.
  late final pulumi.Output<EmailIdentityDkimSigningAttributes>
      dkimSigningAttributes;

  /// The email address or domain to verify.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> emailIdentity;

  /// The email identity type. Valid values: `EMAIL_ADDRESS`, `DOMAIN`.
  late final pulumi.Output<String> identityType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The verification status of the identity. The status can be one of the following: `PENDING`, `SUCCESS`, `FAILED`, `TEMPORARY_FAILURE`, and `NOT_STARTED`.
  late final pulumi.Output<String> verificationStatus;

  /// Specifies whether or not the identity is verified.
  late final pulumi.Output<bool> verifiedForSendingStatus;

  EmailIdentitySesv2(
    String name, {
    EmailIdentitySesv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/emailIdentity:EmailIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configurationSetName = registerOutput<String?>('configurationSetName');
    this.dkimSigningAttributes =
        registerOutput<EmailIdentityDkimSigningAttributes>(
            'dkimSigningAttributes');
    this.emailIdentity = registerOutput<String>('emailIdentity');
    this.identityType = registerOutput<String>('identityType');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.verificationStatus = registerOutput<String>('verificationStatus');
    this.verifiedForSendingStatus =
        registerOutput<bool>('verifiedForSendingStatus');
  }
}
