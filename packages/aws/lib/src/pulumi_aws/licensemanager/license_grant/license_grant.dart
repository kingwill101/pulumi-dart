import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_grant_args.dart';

/// Provides a License Manager grant. This allows for sharing licenses with other AWS accounts.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.licensemanager.LicenseGrant` using the grant arn. For example:
///
/// ```sh
/// $ pulumi import aws:licensemanager/licenseGrant:LicenseGrant test arn:aws:license-manager::123456789011:grant:g-01d313393d9e443d8664cc054db1e089
/// ```
class LicenseGrant extends pulumi.CustomResource {
  /// A list of the allowed operations for the grant. This is a subset of the allowed operations on the license.
  late final pulumi.Output<List<String>> allowedOperations;

  /// The grant ARN.
  late final pulumi.Output<String> arn;

  /// The home region for the license.
  late final pulumi.Output<String> homeRegion;

  /// The ARN of the license to grant.
  late final pulumi.Output<String> licenseArn;

  /// The Name of the grant.
  late final pulumi.Output<String> name;

  /// The parent ARN.
  late final pulumi.Output<String> parentArn;

  /// The target account for the grant in the form of the ARN for an account principal of the root user.
  late final pulumi.Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The grant status.
  late final pulumi.Output<String> status;

  /// The grant version.
  late final pulumi.Output<String> version;

  LicenseGrant(
    String name, {
    LicenseGrantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/licenseGrant:LicenseGrant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedOperations = registerOutput<List<String>>('allowedOperations');
    this.arn = registerOutput<String>('arn');
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
