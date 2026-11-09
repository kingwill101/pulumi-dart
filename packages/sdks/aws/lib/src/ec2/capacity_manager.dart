import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_manager_args.dart';
import 'capacity_manager_state.dart';

/// Manages [EC2 Capacity Manager](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-manager.html) settings for the current AWS account. EC2 Capacity Manager monitors, analyzes, and helps manage EC2 capacity usage across On-Demand Instances, Spot Instances, and Capacity Reservations.
///
/// Capacity Manager can be enabled in only one Region per account (the home Region), where it aggregates capacity data from all Regions. After enabling, initial data ingestion may take several hours to complete.
///
/// &gt; **Note:** Destroying this resource disables EC2 Capacity Manager, which also disables Organizations access.
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
/// const example = new aws.ec2.CapacityManager("example", {enabled: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.CapacityManager("example", enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.CapacityManager("example", new()
///     {
///         Enabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewCapacityManager(ctx, "example", &ec2.CapacityManagerArgs{
/// 			Enabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_capacity_manager" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.CapacityManager;
/// import com.pulumi.aws.ec2.CapacityManagerArgs;
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
///         var example = new CapacityManager("example", CapacityManagerArgs.builder()
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:CapacityManager
///     properties:
///       enabled: true
/// ```
///
///
/// ### Organizations Access
///
/// To aggregate data from all accounts in an AWS Organization, enable Organizations access from the management account (or a delegated administrator account):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.CapacityManager("example", {
///     enabled: true,
///     organizationsAccess: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.CapacityManager("example",
///     enabled=True,
///     organizations_access=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.CapacityManager("example", new()
///     {
///         Enabled = true,
///         OrganizationsAccess = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewCapacityManager(ctx, "example", &ec2.CapacityManagerArgs{
/// 			Enabled:             pulumi.Bool(true),
/// 			OrganizationsAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_capacity_manager" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   enabled              = true
///   organizations_access = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.CapacityManager;
/// import com.pulumi.aws.ec2.CapacityManagerArgs;
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
///         var example = new CapacityManager("example", CapacityManagerArgs.builder()
///             .enabled(true)
///             .organizationsAccess(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:CapacityManager
///     properties:
///       enabled: true
///       organizationsAccess: true
/// ```
///
///
/// ### Organizations Access with a Delegated Administrator
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const delegated = aws.getCallerIdentity({});
/// const example = new aws.organizations.DelegatedAdministrator("example", {
///     accountId: delegated.then(delegated => delegated.accountId),
///     servicePrincipal: "ec2.capacitymanager.amazonaws.com",
/// });
/// const exampleCapacityManager = new aws.ec2.CapacityManager("example", {
///     enabled: true,
///     organizationsAccess: true,
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// delegated = aws.get_caller_identity()
/// example = aws.organizations.DelegatedAdministrator("example",
///     account_id=delegated.account_id,
///     service_principal="ec2.capacitymanager.amazonaws.com")
/// example_capacity_manager = aws.ec2.CapacityManager("example",
///     enabled=True,
///     organizations_access=True,
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var delegated = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.Organizations.DelegatedAdministrator("example", new()
///     {
///         AccountId = delegated.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///         ServicePrincipal = "ec2.capacitymanager.amazonaws.com",
///     });
///
///     var exampleCapacityManager = new Aws.Ec2.CapacityManager("example", new()
///     {
///         Enabled = true,
///         OrganizationsAccess = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		delegated, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := organizations.NewDelegatedAdministrator(ctx, "example", &organizations.DelegatedAdministratorArgs{
/// 			AccountId:        pulumi.String(delegated.AccountId),
/// 			ServicePrincipal: pulumi.String("ec2.capacitymanager.amazonaws.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewCapacityManager(ctx, "example", &ec2.CapacityManagerArgs{
/// 			Enabled:             pulumi.Bool(true),
/// 			OrganizationsAccess: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_caller_identity" "delegated" {
/// }
///
/// resource "aws_organizations_delegated_administrator" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id        = data.aws_caller_identity.delegated.account_id
///   service_principal = "ec2.capacitymanager.amazonaws.com"
/// }
/// resource "aws_ec2_capacity_manager" "example" {
///   depends_on = [aws_organizations_delegated_administrator.example]
///   lifecycle {
///     create_before_destroy = true
///   }
///   enabled              = true
///   organizations_access = true
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
/// import com.pulumi.aws.organizations.DelegatedAdministrator;
/// import com.pulumi.aws.organizations.DelegatedAdministratorArgs;
/// import com.pulumi.aws.ec2.CapacityManager;
/// import com.pulumi.aws.ec2.CapacityManagerArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var delegated = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new DelegatedAdministrator("example", DelegatedAdministratorArgs.builder()
///             .accountId(delegated.accountId())
///             .servicePrincipal("ec2.capacitymanager.amazonaws.com")
///             .build());
///
///         var exampleCapacityManager = new CapacityManager("exampleCapacityManager", CapacityManagerArgs.builder()
///             .enabled(true)
///             .organizationsAccess(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:organizations:DelegatedAdministrator
///     properties:
///       accountId: ${delegated.accountId}
///       servicePrincipal: ec2.capacitymanager.amazonaws.com
///   exampleCapacityManager:
///     type: aws:ec2:CapacityManager
///     name: example
///     properties:
///       enabled: true
///       organizationsAccess: true
///     options:
///       dependsOn:
///         - ${example}
/// variables:
///   delegated:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EC2 Capacity Manager settings using the region name. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/capacityManager:CapacityManager example us-west-2
/// ```
class CapacityManager extends pulumi.CustomResource {
  /// Whether to enable EC2 Capacity Manager for the account in the configured Region.
  late final pulumi.Output<bool> enabled;
  /// Whether to enable cross-account data aggregation for AWS Organizations. Requires `enabled` to be `true`. Can only be enabled from the Organizations management account or a delegated administrator account. If not specified, AWS defaults this to `false` when Capacity Manager is enabled. Removing this argument does not disable Organizations access; set it to `false` explicitly.
  late final pulumi.Output<bool> organizationsAccess;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [CapacityManager].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityManager]. {@macro pulumi_ec2_capacity_manager_capacity_manager_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityManager(
    String name, {
    CapacityManagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/capacityManager:CapacityManager',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    enabled = registerOutput<bool>('enabled');
    organizationsAccess = registerOutput<bool>('organizationsAccess');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [CapacityManager] resource's state with the given [name] and [id].
  static CapacityManager get(
    String name,
    pulumi.Input<String> id, {
    CapacityManagerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CapacityManager._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CapacityManager._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/capacityManager:CapacityManager',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool>('enabled');
    organizationsAccess = registerOutput<bool>('organizationsAccess');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [CapacityManager] resource.
  CapacityManager.reference(String urn)
    : super(
        'aws:ec2/capacityManager:CapacityManager',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enabled = registerOutput<bool>('enabled');
    organizationsAccess = registerOutput<bool>('organizationsAccess');
    region = registerOutput<String>('region');
  }
}
