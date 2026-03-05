import 'package:pulumi/pulumi.dart' as pulumi;
import 'enabler_args.dart';
import 'enabler_state.dart';

/// Resource for enabling Amazon Inspector resource scans.
///
/// This resource must be created in the Organization's Administrator Account.
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
/// const example = new aws.inspector2.Enabler("example", {
///     accountIds: ["123456789012"],
///     resourceTypes: ["EC2"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.inspector2.Enabler("example",
///     account_ids=["123456789012"],
///     resource_types=["EC2"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Inspector2.Enabler("example", new()
///     {
///         AccountIds = new[]
///         {
///             "123456789012",
///         },
///         ResourceTypes = new[]
///         {
///             "EC2",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/inspector2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := inspector2.NewEnabler(ctx, "example", &inspector2.EnablerArgs{
/// 			AccountIds: pulumi.StringArray{
/// 				pulumi.String("123456789012"),
/// 			},
/// 			ResourceTypes: pulumi.StringArray{
/// 				pulumi.String("EC2"),
/// 			},
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
/// import com.pulumi.aws.inspector2.Enabler;
/// import com.pulumi.aws.inspector2.EnablerArgs;
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
///         var example = new Enabler("example", EnablerArgs.builder()
///             .accountIds("123456789012")
///             .resourceTypes("EC2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:inspector2:Enabler
///     properties:
///       accountIds:
///         - '123456789012'
///       resourceTypes:
///         - EC2
/// ```
///
///
/// ### For the Calling Account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const test = new aws.inspector2.Enabler("test", {
///     accountIds: [current.then(current => current.accountId)],
///     resourceTypes: [
///         "ECR",
///         "EC2",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// test = aws.inspector2.Enabler("test",
///     account_ids=[current.account_id],
///     resource_types=[
///         "ECR",
///         "EC2",
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
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var test = new Aws.Inspector2.Enabler("test", new()
///     {
///         AccountIds = new[]
///         {
///             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///         },
///         ResourceTypes = new[]
///         {
///             "ECR",
///             "EC2",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/inspector2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = inspector2.NewEnabler(ctx, "test", &inspector2.EnablerArgs{
/// 			AccountIds: pulumi.StringArray{
/// 				pulumi.String(current.AccountId),
/// 			},
/// 			ResourceTypes: pulumi.StringArray{
/// 				pulumi.String("ECR"),
/// 				pulumi.String("EC2"),
/// 			},
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inspector2.Enabler;
/// import com.pulumi.aws.inspector2.EnablerArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var test = new Enabler("test", EnablerArgs.builder()
///             .accountIds(current.accountId())
///             .resourceTypes(
///                 "ECR",
///                 "EC2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:inspector2:Enabler
///     properties:
///       accountIds:
///         - ${current.accountId}
///       resourceTypes:
///         - ECR
///         - EC2
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Inspector Enabler using using `account_ids` and `region_types` formatted as `[account_id1]:[account_id2]:...-[resource_type1]:[resource_type2]:...`, where `account_ids` are sorted in ascending order and `resource_types` are sorted in alphabetical order. For example:
///
/// ```sh
/// $ pulumi import aws:inspector2/enabler:Enabler example 123456789012:234567890123-EC2:ECR
/// ```
class Enabler extends pulumi.CustomResource {
  /// Set of account IDs.
  /// Can contain one of: the Organization's Administrator Account, or one or more Member Accounts.
  late final pulumi.Output<List<String>> accountIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Type of resources to scan.
  /// Valid values are `EC2`, `ECR`, `LAMBDA`, `LAMBDA_CODE` and `CODE_REPOSITORY`.
  /// At least one item is required.
  late final pulumi.Output<List<String>> resourceTypes;

  /// Creates a new [Enabler].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Enabler]. {@macro pulumi_inspector2_enabler_enabler_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Enabler(
    String name, {
    EnablerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/enabler:Enabler',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountIds = registerOutput<List<String>>('accountIds');
    region = registerOutput<String>('region');
    resourceTypes = registerOutput<List<String>>('resourceTypes');
  }

  /// Gets an existing [Enabler] resource's state with the given [name] and [id].
  static Enabler get(
    String name,
    pulumi.Input<String> id, {
    EnablerState? state,
  }) {
    return Enabler._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Enabler._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/enabler:Enabler',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountIds = registerOutput<List<String>>('accountIds');
    region = registerOutput<String>('region');
    resourceTypes = registerOutput<List<String>>('resourceTypes');
  }
}
