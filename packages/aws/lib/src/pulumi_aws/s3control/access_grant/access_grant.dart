import 'package:pulumi/pulumi.dart' as pulumi;
import '../access_grant_access_grants_location_configuration/access_grant_access_grants_location_configuration.dart';
import '../access_grant_grantee/access_grant_grantee.dart';
import 'access_grant_args.dart';

/// Provides a resource to manage an S3 Access Grant.
/// Each access grant has its own ID and gives an IAM user or role or a directory user, or group (the grantee) access to a registered location. You determine the level of access, such as `READ` or `READWRITE`.
/// Before you can create a grant, you must have an S3 Access Grants instance in the same Region as the S3 data.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Access Grants using the `account_id` and `access_grant_id`, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/accessGrant:AccessGrant example 123456789012,04549c5e-2f3c-4a07-824d-2cafe720aa22
/// ```
class AccessGrant extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the S3 Access Grant.
  late final pulumi.Output<String> accessGrantArn;

  /// Unique ID of the S3 Access Grant.
  late final pulumi.Output<String> accessGrantId;

  /// See Location Configuration below for more details.
  late final pulumi.Output<AccessGrantAccessGrantsLocationConfiguration?>
      accessGrantsLocationConfiguration;

  /// The ID of the S3 Access Grants location to with the access grant is giving access.
  late final pulumi.Output<String> accessGrantsLocationId;

  /// The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> accountId;

  /// The access grant's scope.
  late final pulumi.Output<String> grantScope;

  /// See Grantee below for more details.
  late final pulumi.Output<AccessGrantGrantee> grantee;

  /// The access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  late final pulumi.Output<String> permission;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  late final pulumi.Output<String?> s3PrefixType;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  AccessGrant(
    String name, {
    AccessGrantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessGrant:AccessGrant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessGrantArn = registerOutput<String>('accessGrantArn');
    this.accessGrantId = registerOutput<String>('accessGrantId');
    this.accessGrantsLocationConfiguration =
        registerOutput<AccessGrantAccessGrantsLocationConfiguration?>(
            'accessGrantsLocationConfiguration');
    this.accessGrantsLocationId =
        registerOutput<String>('accessGrantsLocationId');
    this.accountId = registerOutput<String>('accountId');
    this.grantScope = registerOutput<String>('grantScope');
    this.grantee = registerOutput<AccessGrantGrantee>('grantee');
    this.permission = registerOutput<String>('permission');
    this.region = registerOutput<String>('region');
    this.s3PrefixType = registerOutput<String?>('s3PrefixType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
