import 'package:pulumi/pulumi.dart';
import 'access_grants_location_args.dart';

/// Provides a resource to manage an S3 Access Grants location.
/// A location is an S3 resource (bucket or prefix) in a permission grant that the grantee can access.
/// The S3 data must be in the same Region as your S3 Access Grants instance.
/// When you register a location, you must include the IAM role that has permission to manage the S3 location that you are registering.
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
/// locationScope: "s3://",
/// }, {
/// dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.AccessGrantsInstance("example")
/// example_access_grants_location = aws.s3control.AccessGrantsLocation("example",
/// iam_role_arn=example_aws_iam_role["arn"],
/// location_scope="s3://",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
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
/// LocationScope = "s3://",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
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
/// _, err = s3control.NewAccessGrantsLocation(ctx, "example", &s3control.AccessGrantsLocationArgs{
/// IamRoleArn:    pulumi.Any(exampleAwsIamRole.Arn),
/// LocationScope: pulumi.String("s3://"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
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
/// .locationScope("s3://")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
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
/// locationScope: s3://
/// options:
/// dependsOn:
/// - ${example}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Access Grants locations using the <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> and <span pulumi-lang-nodejs="`accessGrantsLocationId`" pulumi-lang-dotnet="`AccessGrantsLocationId`" pulumi-lang-go="`accessGrantsLocationId`" pulumi-lang-python="`access_grants_location_id`" pulumi-lang-yaml="`accessGrantsLocationId`" pulumi-lang-java="`accessGrantsLocationId`">`access_grants_location_id`</span>, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/accessGrantsLocation:AccessGrantsLocation example 123456789012,default
/// ```
class AccessGrantsLocation extends CustomResource {
  /// Amazon Resource Name (ARN) of the S3 Access Grants location.
  late final Output<String> accessGrantsLocationArn;

  /// Unique ID of the S3 Access Grants location.
  late final Output<String> accessGrantsLocationId;

  /// The AWS account ID for the S3 Access Grants location. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> accountId;

  /// The ARN of the IAM role that S3 Access Grants should use when fulfilling runtime access
  /// requests to the location.
  late final Output<String> iamRoleArn;

  /// The default S3 URI `s3://` or the URI to a custom location, a specific bucket or prefix.
  late final Output<String> locationScope;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  AccessGrantsLocation(
    String name, {
    AccessGrantsLocationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessGrantsLocation:AccessGrantsLocation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessGrantsLocationArn =
        registerOutput<String>('accessGrantsLocationArn');
    this.accessGrantsLocationId =
        registerOutput<String>('accessGrantsLocationId');
    this.accountId = registerOutput<String>('accountId');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.locationScope = registerOutput<String>('locationScope');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
