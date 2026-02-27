import 'package:pulumi/pulumi.dart';
import 'license_grant_accepter_args.dart';

/// Accepts a License Manager grant. This allows for sharing licenses with other aws accounts.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.licensemanager.LicenseGrantAccepter` using the grant arn. For example:
///
/// ```sh
/// $ pulumi import aws:licensemanager/licenseGrantAccepter:LicenseGrantAccepter test arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329
/// ```
class LicenseGrantAccepter extends CustomResource {
  /// A list of the allowed operations for the grant.
  late final Output<List<String>> allowedOperations;

  /// The ARN of the grant to accept.
  late final Output<String> grantArn;

  /// The home region for the license.
  late final Output<String> homeRegion;

  /// The ARN of the license for the grant.
  late final Output<String> licenseArn;

  /// The Name of the grant.
  late final Output<String> name;

  /// The parent ARN.
  late final Output<String> parentArn;

  /// The target account for the grant.
  late final Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The grant status.
  late final Output<String> status;

  /// The grant version.
  late final Output<String> version;

  LicenseGrantAccepter(
    String name, {
    LicenseGrantAccepterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/licenseGrantAccepter:LicenseGrantAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowedOperations = registerOutput<List<String>>('allowedOperations');
    this.grantArn = registerOutput<String>('grantArn');
    this.homeRegion = registerOutput<String>('homeRegion');
    this.licenseArn = registerOutput<String>('licenseArn');
    this.name = registerOutput<String>('name');
    this.parentArn = registerOutput<String>('parentArn');
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.version = registerOutput<String>('version');
  }
}
