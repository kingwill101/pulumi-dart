import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_customizations_args.dart';
import 'account_customizations_state.dart';

/// Manages UXC Account Customizations for an AWS Account. This resource controls the console experience for the account, including the account color and which AWS regions and services are visible in the AWS Management Console.
///
/// &gt; **Note:** There is only a single set of account customizations per AWS account.
///
/// &gt; **Note:** This resource operates globally and always targets the `us-east-1` region regardless of the provider region configuration.
///
/// &gt; **Note:** The UXC API does not provide a delete operation. Destroying this resource resets all customizations to their defaults: `accountColor` is set to `none`, and both `visibleRegions` and `visibleServices` are cleared to allow all regions and services.
///
/// ## Example Usage
///
/// ### Set Account Color
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.uxc.AccountCustomizations("example", {accountColor: "lightBlue"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.uxc.AccountCustomizations("example", account_color="lightBlue")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Uxc.AccountCustomizations("example", new()
///     {
///         AccountColor = "lightBlue",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/uxc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := uxc.NewAccountCustomizations(ctx, "example", &uxc.AccountCustomizationsArgs{
/// 			AccountColor: pulumi.String("lightBlue"),
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
/// resource "aws_uxc_accountcustomizations" "example" {
///   account_color = "lightBlue"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.uxc.AccountCustomizations;
/// import com.pulumi.aws.uxc.AccountCustomizationsArgs;
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
///         var example = new AccountCustomizations("example", AccountCustomizationsArgs.builder()
///             .accountColor("lightBlue")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:uxc:AccountCustomizations
///     properties:
///       accountColor: lightBlue
/// ```
///
///
/// ### Restrict Visible Regions and Services
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.uxc.AccountCustomizations("example", {
///     accountColor: "green",
///     visibleRegions: [
///         "us-east-1",
///         "us-west-2",
///         "eu-west-1",
///     ],
///     visibleServices: [
///         "ec2",
///         "s3",
///         "rds",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.uxc.AccountCustomizations("example",
///     account_color="green",
///     visible_regions=[
///         "us-east-1",
///         "us-west-2",
///         "eu-west-1",
///     ],
///     visible_services=[
///         "ec2",
///         "s3",
///         "rds",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Uxc.AccountCustomizations("example", new()
///     {
///         AccountColor = "green",
///         VisibleRegions = new[]
///         {
///             "us-east-1",
///             "us-west-2",
///             "eu-west-1",
///         },
///         VisibleServices = new[]
///         {
///             "ec2",
///             "s3",
///             "rds",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/uxc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := uxc.NewAccountCustomizations(ctx, "example", &uxc.AccountCustomizationsArgs{
/// 			AccountColor: pulumi.String("green"),
/// 			VisibleRegions: pulumi.StringArray{
/// 				pulumi.String("us-east-1"),
/// 				pulumi.String("us-west-2"),
/// 				pulumi.String("eu-west-1"),
/// 			},
/// 			VisibleServices: pulumi.StringArray{
/// 				pulumi.String("ec2"),
/// 				pulumi.String("s3"),
/// 				pulumi.String("rds"),
/// 			},
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
/// resource "aws_uxc_accountcustomizations" "example" {
///   account_color    = "green"
///   visible_regions  = ["us-east-1", "us-west-2", "eu-west-1"]
///   visible_services = ["ec2", "s3", "rds"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.uxc.AccountCustomizations;
/// import com.pulumi.aws.uxc.AccountCustomizationsArgs;
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
///         var example = new AccountCustomizations("example", AccountCustomizationsArgs.builder()
///             .accountColor("green")
///             .visibleRegions(
///                 "us-east-1",
///                 "us-west-2",
///                 "eu-west-1")
///             .visibleServices(
///                 "ec2",
///                 "s3",
///                 "rds")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:uxc:AccountCustomizations
///     properties:
///       accountColor: green
///       visibleRegions:
///         - us-east-1
///         - us-west-2
///         - eu-west-1
///       visibleServices:
///         - ec2
///         - s3
///         - rds
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) Account ID where this resource is managed.
///
///
/// Using `pulumi import`, import UXC Account Customizations using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:uxc/accountCustomizations:AccountCustomizations example 123456789012
/// ```
class AccountCustomizations extends pulumi.CustomResource {
  /// Color used to identify the account in the AWS Management Console. Valid values are `none`, `red`, `darkBlue`, `lightBlue`, `green`, `yellow`, `orange`, `pink`, `purple`, and `teal`. Defaults to `none`.
  late final pulumi.Output<String> accountColor;
  /// Set of AWS region codes to display in the console. When omitted or empty, all regions are visible.
  late final pulumi.Output<List<String>> visibleRegions;
  /// Set of AWS service identifiers to display in the console. When omitted or empty, all services are visible.
  late final pulumi.Output<List<String>> visibleServices;

  /// Creates a new [AccountCustomizations].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountCustomizations]. {@macro pulumi_uxc_account_customizations_account_customizations_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountCustomizations(
    String name, {
    AccountCustomizationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:uxc/accountCustomizations:AccountCustomizations',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountColor = registerOutput<String>('accountColor');
    visibleRegions = registerOutput<List<String>>('visibleRegions');
    visibleServices = registerOutput<List<String>>('visibleServices');
  }

  /// Gets an existing [AccountCustomizations] resource's state with the given [name] and [id].
  static AccountCustomizations get(
    String name,
    pulumi.Input<String> id, {
    AccountCustomizationsState? state,
  }) {
    return AccountCustomizations._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountCustomizations._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:uxc/accountCustomizations:AccountCustomizations',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountColor = registerOutput<String>('accountColor');
    visibleRegions = registerOutput<List<String>>('visibleRegions');
    visibleServices = registerOutput<List<String>>('visibleServices');
  }
}
