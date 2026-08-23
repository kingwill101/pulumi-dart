import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grants_instance_args.dart';
import 'access_grants_instance_state.dart';

/// Provides a resource to manage an S3 Access Grants instance, which serves as a logical grouping for access grants.
/// You can have one S3 Access Grants instance per Region in your account.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.AccessGrantsInstance("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.AccessGrantsInstance("example")
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3control.NewAccessGrantsInstance(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3control_accessgrantsinstance" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3control.AccessGrantsInstance;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3control:AccessGrantsInstance
/// ```
///
///
/// ### AWS IAM Identity Center
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.AccessGrantsInstance("example", {identityCenterArn: "arn:aws:sso:::instance/ssoins-890759e9c7bfdc1d"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.AccessGrantsInstance("example", identity_center_arn="arn:aws:sso:::instance/ssoins-890759e9c7bfdc1d")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3Control.AccessGrantsInstance("example", new()
///     {
///         IdentityCenterArn = "arn:aws:sso:::instance/ssoins-890759e9c7bfdc1d",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3control.NewAccessGrantsInstance(ctx, "example", &s3control.AccessGrantsInstanceArgs{
/// 			IdentityCenterArn: pulumi.String("arn:aws:sso:::instance/ssoins-890759e9c7bfdc1d"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3control_accessgrantsinstance" "example" {
///   identity_center_arn = "arn:aws:sso:::instance/ssoins-890759e9c7bfdc1d"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3control.AccessGrantsInstance;
/// import com.pulumi.aws.s3control.AccessGrantsInstanceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new AccessGrantsInstance("example", AccessGrantsInstanceArgs.builder()
///             .identityCenterArn("arn:aws:sso:::instance/ssoins-890759e9c7bfdc1d")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3control:AccessGrantsInstance
///     properties:
///       identityCenterArn: arn:aws:sso:::instance/ssoins-890759e9c7bfdc1d
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Access Grants instances using the `accountId`. For example:
///
/// ```sh
/// $ pulumi import aws:s3control/accessGrantsInstance:AccessGrantsInstance example 123456789012
/// ```
class AccessGrantsInstance extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the S3 Access Grants instance.
  late final pulumi.Output<String> accessGrantsInstanceArn;
  /// Unique ID of the S3 Access Grants instance.
  late final pulumi.Output<String> accessGrantsInstanceId;
  /// AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> accountId;
  /// ARN of the AWS IAM Identity Center instance application; a subresource of the original Identity Center instance.
  late final pulumi.Output<String> identityCenterApplicationArn;
  /// ARN of the AWS IAM Identity Center instance associated with the S3 Access Grants instance.
  late final pulumi.Output<String?> identityCenterArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AccessGrantsInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessGrantsInstance]. {@macro pulumi_s3_control_access_grants_instance_access_grants_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessGrantsInstance(
    String name, {
    AccessGrantsInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessGrantsInstance:AccessGrantsInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGrantsInstanceArn = registerOutput<String>('accessGrantsInstanceArn');
    accessGrantsInstanceId = registerOutput<String>('accessGrantsInstanceId');
    accountId = registerOutput<String>('accountId');
    identityCenterApplicationArn = registerOutput<String>('identityCenterApplicationArn');
    identityCenterArn = registerOutput<String?>('identityCenterArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [AccessGrantsInstance] resource's state with the given [name] and [id].
  static AccessGrantsInstance get(
    String name,
    pulumi.Input<String> id, {
    AccessGrantsInstanceState? state,
  }) {
    return AccessGrantsInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessGrantsInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessGrantsInstance:AccessGrantsInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGrantsInstanceArn = registerOutput<String>('accessGrantsInstanceArn');
    accessGrantsInstanceId = registerOutput<String>('accessGrantsInstanceId');
    accountId = registerOutput<String>('accountId');
    identityCenterApplicationArn = registerOutput<String>('identityCenterApplicationArn');
    identityCenterArn = registerOutput<String?>('identityCenterArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
