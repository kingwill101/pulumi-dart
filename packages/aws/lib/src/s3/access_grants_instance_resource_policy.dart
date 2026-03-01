import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grants_instance_resource_policy_args.dart';

/// Provides a resource to manage an S3 Access Grants instance resource policy.
/// Use a resource policy to manage cross-account access to your S3 Access Grants instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.AccessGrantsInstance("example", {});
/// const exampleAccessGrantsInstanceResourcePolicy = new aws.s3control.AccessGrantsInstanceResourcePolicy("example", {policy: pulumi.interpolate`{
///   \"Version\": \"2012-10-17\",
///   \"Id\": \"S3AccessGrantsPolicy\",
///   \"Statement\": [{
///     \"Sid\": \"AllowAccessToS3AccessGrants\",
///     \"Effect\": \"Allow\",
///     \"Principal\": {
///       \"AWS\": \"123456789456\"
///     },
///     \"Action\": [
///       \"s3:ListAccessGrants\",
///       \"s3:ListAccessGrantsLocations\",
///       \"s3:GetDataAccess\"
///     ],
///     \"Resource\": \"${example.accessGrantsInstanceArn}\"
///   }]
/// }
/// `});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.AccessGrantsInstance("example")
/// example_access_grants_instance_resource_policy = aws.s3control.AccessGrantsInstanceResourcePolicy("example", policy=example.access_grants_instance_arn.apply(lambda access_grants_instance_arn: f"""{{
///   \"Version\": \"2012-10-17\",
///   \"Id\": \"S3AccessGrantsPolicy\",
///   \"Statement\": [{{
///     \"Sid\": \"AllowAccessToS3AccessGrants\",
///     \"Effect\": \"Allow\",
///     \"Principal\": {{
///       \"AWS\": \"123456789456\"
///     }},
///     \"Action\": [
///       \"s3:ListAccessGrants\",
///       \"s3:ListAccessGrantsLocations\",
///       \"s3:GetDataAccess\"
///     ],
///     \"Resource\": \"{access_grants_instance_arn}\"
///   }}]
/// }}
/// """))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3Control.AccessGrantsInstance("example");
///
///     var exampleAccessGrantsInstanceResourcePolicy = new Aws.S3Control.AccessGrantsInstanceResourcePolicy("example", new()
///     {
///         Policy = example.AccessGrantsInstanceArn.Apply(accessGrantsInstanceArn => @$"{{
///   \""Version\"": \""2012-10-17\"",
///   \""Id\"": \""S3AccessGrantsPolicy\"",
///   \""Statement\"": [{{
///     \""Sid\"": \""AllowAccessToS3AccessGrants\"",
///     \""Effect\"": \""Allow\"",
///     \""Principal\"": {{
///       \""AWS\"": \""123456789456\""
///     }},
///     \""Action\"": [
///       \""s3:ListAccessGrants\"",
///       \""s3:ListAccessGrantsLocations\"",
///       \""s3:GetDataAccess\""
///     ],
///     \""Resource\"": \""{accessGrantsInstanceArn}\""
///   }}]
/// }}
/// "),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3control.NewAccessGrantsInstance(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3control.NewAccessGrantsInstanceResourcePolicy(ctx, "example", &s3control.AccessGrantsInstanceResourcePolicyArgs{
/// 			Policy: example.AccessGrantsInstanceArn.ApplyT(func(accessGrantsInstanceArn string) (string, error) {
/// 				return fmt.Sprintf(`{
///   \"Version\": \"2012-10-17\",
///   \"Id\": \"S3AccessGrantsPolicy\",
///   \"Statement\": [{
///     \"Sid\": \"AllowAccessToS3AccessGrants\",
///     \"Effect\": \"Allow\",
///     \"Principal\": {
///       \"AWS\": \"123456789456\"
///     },
///     \"Action\": [
///       \"s3:ListAccessGrants\",
///       \"s3:ListAccessGrantsLocations\",
///       \"s3:GetDataAccess\"
///     ],
///     \"Resource\": \"%v\"
///   }]
/// }
/// `, accessGrantsInstanceArn), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3control.AccessGrantsInstance;
/// import com.pulumi.aws.s3control.AccessGrantsInstanceResourcePolicy;
/// import com.pulumi.aws.s3control.AccessGrantsInstanceResourcePolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AccessGrantsInstance("example");
///
///         var exampleAccessGrantsInstanceResourcePolicy = new AccessGrantsInstanceResourcePolicy("exampleAccessGrantsInstanceResourcePolicy", AccessGrantsInstanceResourcePolicyArgs.builder()
///             .policy(example.accessGrantsInstanceArn().applyValue(_accessGrantsInstanceArn -> """
/// {
///   \"Version\": \"2012-10-17\",
///   \"Id\": \"S3AccessGrantsPolicy\",
///   \"Statement\": [{
///     \"Sid\": \"AllowAccessToS3AccessGrants\",
///     \"Effect\": \"Allow\",
///     \"Principal\": {
///       \"AWS\": \"123456789456\"
///     },
///     \"Action\": [
///       \"s3:ListAccessGrants\",
///       \"s3:ListAccessGrantsLocations\",
///       \"s3:GetDataAccess\"
///     ],
///     \"Resource\": \"%s\"
///   }]
/// }
/// ", _accessGrantsInstanceArn)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3control:AccessGrantsInstance
///   exampleAccessGrantsInstanceResourcePolicy:
///     type: aws:s3control:AccessGrantsInstanceResourcePolicy
///     name: example
///     properties:
///       policy: |
///         {
///           \"Version\": \"2012-10-17\",
///           \"Id\": \"S3AccessGrantsPolicy\",
///           \"Statement\": [{
///             \"Sid\": \"AllowAccessToS3AccessGrants\",
///             \"Effect\": \"Allow\",
///             \"Principal\": {
///               \"AWS\": \"123456789456\"
///             },
///             \"Action\": [
///               \"s3:ListAccessGrants\",
///               \"s3:ListAccessGrantsLocations\",
///               \"s3:GetDataAccess\"
///             ],
///             \"Resource\": \"${example.accessGrantsInstanceArn}\"
///           }]
///         }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Access Grants instance resource policies using the `account_id`. For example:
///
/// ```sh
/// $ pulumi import aws:s3control/accessGrantsInstanceResourcePolicy:AccessGrantsInstanceResourcePolicy example 123456789012
/// ```
class AccessGrantsInstanceResourcePolicy extends pulumi.CustomResource {
  /// The AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> accountId;
  /// The policy document.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AccessGrantsInstanceResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessGrantsInstanceResourcePolicy]. {@macro pulumi_s3_control_access_grants_instance_resource_policy_access_grants_instance_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessGrantsInstanceResourcePolicy(
    String name, {
    AccessGrantsInstanceResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessGrantsInstanceResourcePolicy:AccessGrantsInstanceResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
