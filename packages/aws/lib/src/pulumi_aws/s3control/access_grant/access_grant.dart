import 'package:pulumi/pulumi.dart';
import '../access_grant_access_grants_location_configuration/access_grant_access_grants_location_configuration.dart';
import '../access_grant_grantee/access_grant_grantee.dart';
import 'access_grant_args.dart';

/// Provides a resource to manage an S3 Access Grant.
/// Each access grant has its own ID and gives an IAM user or role or a directory user, or group (the grantee) access to a registered location. You determine the level of access, such as `READ` or `READWRITE`.
/// Before you can create a grant, you must have an S3 Access Grants instance in the same Region as the S3 data.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.AccessGrantsInstance("example", {});
/// const exampleAccessGrantsLocation = new aws.s3control.AccessGrantsLocation("example", {
/// iamRoleArn: exampleAwsIamRole.arn,
/// locationScope: `s3://${exampleAwsS3Bucket.bucket}/prefixA*`,
/// }, {
/// dependsOn: [example],
/// });
/// const exampleAccessGrant = new aws.s3control.AccessGrant("example", {
/// accessGrantsLocationId: exampleAccessGrantsLocation.accessGrantsLocationId,
/// permission: "READ",
/// accessGrantsLocationConfiguration: {
/// s3SubPrefix: "prefixB*",
/// },
/// grantee: {
/// granteeType: "IAM",
/// granteeIdentifier: exampleAwsIamUser.arn,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.AccessGrantsInstance("example")
/// example_access_grants_location = aws.s3control.AccessGrantsLocation("example",
/// iam_role_arn=example_aws_iam_role["arn"],
/// location_scope=f"s3://{example_aws_s3_bucket['bucket']}/prefixA*",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// example_access_grant = aws.s3control.AccessGrant("example",
/// access_grants_location_id=example_access_grants_location.access_grants_location_id,
/// permission="READ",
/// access_grants_location_configuration={
/// "s3_sub_prefix": "prefixB*",
/// },
/// grantee={
/// "grantee_type": "IAM",
/// "grantee_identifier": example_aws_iam_user["arn"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3Control.AccessGrantsInstance("example");
///
/// var exampleAccessGrantsLocation = new Aws.S3Control.AccessGrantsLocation("example", new()
/// {
/// IamRoleArn = exampleAwsIamRole.Arn,
/// LocationScope = $"s3://{exampleAwsS3Bucket.Bucket}/prefixA*",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// var exampleAccessGrant = new Aws.S3Control.AccessGrant("example", new()
/// {
/// AccessGrantsLocationId = exampleAccessGrantsLocation.AccessGrantsLocationId,
/// Permission = "READ",
/// AccessGrantsLocationConfiguration = new Aws.S3Control.Inputs.AccessGrantAccessGrantsLocationConfigurationArgs
/// {
/// S3SubPrefix = "prefixB*",
/// },
/// Grantee = new Aws.S3Control.Inputs.AccessGrantGranteeArgs
/// {
/// GranteeType = "IAM",
/// GranteeIdentifier = exampleAwsIamUser.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3control.NewAccessGrantsInstance(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleAccessGrantsLocation, err := s3control.NewAccessGrantsLocation(ctx, "example", &s3control.AccessGrantsLocationArgs{
/// IamRoleArn:    pulumi.Any(exampleAwsIamRole.Arn),
/// LocationScope: pulumi.Sprintf("s3://%v/prefixA*", exampleAwsS3Bucket.Bucket),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = s3control.NewAccessGrant(ctx, "example", &s3control.AccessGrantArgs{
/// AccessGrantsLocationId: exampleAccessGrantsLocation.AccessGrantsLocationId,
/// Permission:             pulumi.String("READ"),
/// AccessGrantsLocationConfiguration: &s3control.AccessGrantAccessGrantsLocationConfigurationArgs{
/// S3SubPrefix: pulumi.String("prefixB*"),
/// },
/// Grantee: &s3control.AccessGrantGranteeArgs{
/// GranteeType:       pulumi.String("IAM"),
/// GranteeIdentifier: pulumi.Any(exampleAwsIamUser.Arn),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3control.AccessGrantsInstance;
/// import com.pulumi.aws.s3control.AccessGrantsLocation;
/// import com.pulumi.aws.s3control.AccessGrantsLocationArgs;
/// import com.pulumi.aws.s3control.AccessGrant;
/// import com.pulumi.aws.s3control.AccessGrantArgs;
/// import com.pulumi.aws.s3control.inputs.AccessGrantAccessGrantsLocationConfigurationArgs;
/// import com.pulumi.aws.s3control.inputs.AccessGrantGranteeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new AccessGrantsInstance("example");
///
/// var exampleAccessGrantsLocation = new AccessGrantsLocation("exampleAccessGrantsLocation", AccessGrantsLocationArgs.builder()
/// .iamRoleArn(exampleAwsIamRole.arn())
/// .locationScope(String.format("s3://%s/prefixA*", exampleAwsS3Bucket.bucket()))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// var exampleAccessGrant = new AccessGrant("exampleAccessGrant", AccessGrantArgs.builder()
/// .accessGrantsLocationId(exampleAccessGrantsLocation.accessGrantsLocationId())
/// .permission("READ")
/// .accessGrantsLocationConfiguration(AccessGrantAccessGrantsLocationConfigurationArgs.builder()
/// .s3SubPrefix("prefixB*")
/// .build())
/// .grantee(AccessGrantGranteeArgs.builder()
/// .granteeType("IAM")
/// .granteeIdentifier(exampleAwsIamUser.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3control:AccessGrantsInstance
/// exampleAccessGrantsLocation:
/// type: aws:s3control:AccessGrantsLocation
/// name: example
/// properties:
/// iamRoleArn: ${exampleAwsIamRole.arn}
/// locationScope: s3://${exampleAwsS3Bucket.bucket}/prefixA*
/// options:
/// dependsOn:
/// - ${example}
/// exampleAccessGrant:
/// type: aws:s3control:AccessGrant
/// name: example
/// properties:
/// accessGrantsLocationId: ${exampleAccessGrantsLocation.accessGrantsLocationId}
/// permission: READ
/// accessGrantsLocationConfiguration:
/// s3SubPrefix: prefixB*
/// grantee:
/// granteeType: IAM
/// granteeIdentifier: ${exampleAwsIamUser.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Access Grants using the <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> and <span pulumi-lang-nodejs="`accessGrantId`" pulumi-lang-dotnet="`AccessGrantId`" pulumi-lang-go="`accessGrantId`" pulumi-lang-python="`access_grant_id`" pulumi-lang-yaml="`accessGrantId`" pulumi-lang-java="`accessGrantId`">`access_grant_id`</span>, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/accessGrant:AccessGrant example 123456789012,04549c5e-2f3c-4a07-824d-2cafe720aa22
/// ```
class AccessGrant extends CustomResource {
  /// Amazon Resource Name (ARN) of the S3 Access Grant.
  late final Output<String> accessGrantArn;

  /// Unique ID of the S3 Access Grant.
  late final Output<String> accessGrantId;

  /// See Location Configuration below for more details.
  late final Output<AccessGrantAccessGrantsLocationConfiguration?>
      accessGrantsLocationConfiguration;

  /// The ID of the S3 Access Grants location to with the access grant is giving access.
  late final Output<String> accessGrantsLocationId;

  /// The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> accountId;

  /// The access grant's scope.
  late final Output<String> grantScope;

  /// See Grantee below for more details.
  late final Output<AccessGrantGrantee> grantee;

  /// The access grant's level of access. Valid values: `READ`, `WRITE`, `READWRITE`.
  late final Output<String> permission;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// If you are creating an access grant that grants access to only one object, set this to `Object`. Valid values: `Object`.
  late final Output<String?> s3PrefixType;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  AccessGrant(
    String name, {
    AccessGrantArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessGrant:AccessGrant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
