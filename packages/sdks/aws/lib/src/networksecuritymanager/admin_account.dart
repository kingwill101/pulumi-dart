import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_account_admin_scope.dart';
import 'admin_account_args.dart';
import 'admin_account_state.dart';
import 'admin_account_timeouts.dart';

/// Manages an AWS Network Security Manager Admin Account. An administrator account can centrally create and manage AWS WAF and Shield Advanced protection across the accounts and organizational units (OUs) of an AWS Organization. The resource must be managed from the organization's management account, and the administrator's authority can be narrowed with an `adminScope`.
///
/// &gt; AWS Organizations trusted access for Network Security Manager must remain enabled. If trusted access is disabled outside Terraform, the resource is treated as absent during refresh.
///
/// &gt; Setting an administrator account again shortly after it was removed, or while the service is still creating its service-linked role, is rejected by AWS with a `ConflictException`. The resource retries the request until it is accepted or the `create` timeout expires.
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
/// const example = new aws.networksecuritymanager.AdminAccount("example", {
///     accountId: "123456789012",
///     priority: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networksecuritymanager.AdminAccount("example",
///     account_id="123456789012",
///     priority=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkSecurityManager.AdminAccount("example", new()
///     {
///         AccountId = "123456789012",
///         Priority = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networksecuritymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecuritymanager.NewAdminAccount(ctx, "example", &networksecuritymanager.AdminAccountArgs{
/// 			AccountId: pulumi.String("123456789012"),
/// 			Priority:  pulumi.Int(1),
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
/// resource "aws_networksecuritymanager_admin_account" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "123456789012"
///   priority   = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networksecuritymanager.AdminAccount;
/// import com.pulumi.aws.networksecuritymanager.AdminAccountArgs;
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
///         var example = new AdminAccount("example", AdminAccountArgs.builder()
///             .accountId("123456789012")
///             .priority(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networksecuritymanager:AdminAccount
///     properties:
///       accountId: '123456789012'
///       priority: 1
/// ```
///
///
/// ### Scoped Administrator
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networksecuritymanager.AdminAccount("example", {
///     adminScope: {
///         firewallTypeScope: {
///             firewallTypes: ["WAF"],
///         },
///         scopeFilter: {
///             includeOnly: {
///                 organizationalUnits: ["ou-abcd-12345678"],
///             },
///         },
///     },
///     accountId: "123456789012",
///     priority: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networksecuritymanager.AdminAccount("example",
///     admin_scope={
///         "firewall_type_scope": {
///             "firewall_types": ["WAF"],
///         },
///         "scope_filter": {
///             "include_only": {
///                 "organizational_units": ["ou-abcd-12345678"],
///             },
///         },
///     },
///     account_id="123456789012",
///     priority=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkSecurityManager.AdminAccount("example", new()
///     {
///         AdminScope = new Aws.NetworkSecurityManager.Inputs.AdminAccountAdminScopeArgs
///         {
///             FirewallTypeScope = new Aws.NetworkSecurityManager.Inputs.AdminAccountAdminScopeFirewallTypeScopeArgs
///             {
///                 FirewallTypes = new[]
///                 {
///                     "WAF",
///                 },
///             },
///             ScopeFilter = new Aws.NetworkSecurityManager.Inputs.AdminAccountAdminScopeScopeFilterArgs
///             {
///                 IncludeOnly = new Aws.NetworkSecurityManager.Inputs.AdminAccountAdminScopeScopeFilterIncludeOnlyArgs
///                 {
///                     OrganizationalUnits = new[]
///                     {
///                         "ou-abcd-12345678",
///                     },
///                 },
///             },
///         },
///         AccountId = "123456789012",
///         Priority = 2,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networksecuritymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecuritymanager.NewAdminAccount(ctx, "example", &networksecuritymanager.AdminAccountArgs{
/// 			AdminScope: &networksecuritymanager.AdminAccountAdminScopeArgs{
/// 				FirewallTypeScope: &networksecuritymanager.AdminAccountAdminScopeFirewallTypeScopeArgs{
/// 					FirewallTypes: pulumi.StringArray{
/// 						pulumi.String("WAF"),
/// 					},
/// 				},
/// 				ScopeFilter: &networksecuritymanager.AdminAccountAdminScopeScopeFilterArgs{
/// 					IncludeOnly: &networksecuritymanager.AdminAccountAdminScopeScopeFilterIncludeOnlyArgs{
/// 						OrganizationalUnits: pulumi.StringArray{
/// 							pulumi.String("ou-abcd-12345678"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			AccountId: pulumi.String("123456789012"),
/// 			Priority:  pulumi.Int(2),
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
/// resource "aws_networksecuritymanager_admin_account" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   admin_scope {
///     firewall_type_scope {
///       firewall_types = ["WAF"]
///     }
///     scope_filter {
///       include_only {
///         organizational_units = ["ou-abcd-12345678"]
///       }
///     }
///   }
///   account_id = "123456789012"
///   priority   = 2
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networksecuritymanager.AdminAccount;
/// import com.pulumi.aws.networksecuritymanager.AdminAccountArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.AdminAccountAdminScopeArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.AdminAccountAdminScopeFirewallTypeScopeArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.AdminAccountAdminScopeScopeFilterArgs;
/// import com.pulumi.aws.networksecuritymanager.inputs.AdminAccountAdminScopeScopeFilterIncludeOnlyArgs;
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
///         var example = new AdminAccount("example", AdminAccountArgs.builder()
///             .adminScope(AdminAccountAdminScopeArgs.builder()
///                 .firewallTypeScope(AdminAccountAdminScopeFirewallTypeScopeArgs.builder()
///                     .firewallTypes("WAF")
///                     .build())
///                 .scopeFilter(AdminAccountAdminScopeScopeFilterArgs.builder()
///                     .includeOnly(AdminAccountAdminScopeScopeFilterIncludeOnlyArgs.builder()
///                         .organizationalUnits("ou-abcd-12345678")
///                         .build())
///                     .build())
///                 .build())
///             .accountId("123456789012")
///             .priority(2)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networksecuritymanager:AdminAccount
///     properties:
///       adminScope:
///         firewallTypeScope:
///           firewallTypes:
///             - WAF
///         scopeFilter:
///           includeOnly:
///             organizationalUnits:
///               - ou-abcd-12345678
///       accountId: '123456789012'
///       priority: 2
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `adminAccountId` (String) AWS account ID of the administrator account, corresponding to the resource's `accountId` argument.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Network Security Manager Admin Account using the `accountId`. For example:
///
/// ```sh
/// $ pulumi import aws:networksecuritymanager/adminAccount:AdminAccount example 123456789012
/// ```
class AdminAccount extends pulumi.CustomResource {
  /// AWS account ID to set as a Network Security Manager administrator account.
  late final pulumi.Output<String> accountId;
  /// Scope of what the administrator account can manage. If omitted, AWS applies its default scope. See `adminScope` Block below.
  late final pulumi.Output<AdminAccountAdminScope?> adminScope;
  /// Priority of the administrator account, between `1` and `10`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the administrator account. Valid values: `ONBOARDED`, `OFFBOARDED`.
  late final pulumi.Output<String> status;
  late final pulumi.Output<AdminAccountTimeouts?> timeouts;

  /// Creates a new [AdminAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdminAccount]. {@macro pulumi_networksecuritymanager_admin_account_admin_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdminAccount(
    String name, {
    AdminAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/adminAccount:AdminAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.55.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    adminScope = registerOutput<AdminAccountAdminScope?>('adminScope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AdminAccountAdminScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    timeouts = registerOutput<AdminAccountTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AdminAccountTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AdminAccount] resource's state with the given [name] and [id].
  static AdminAccount get(
    String name,
    pulumi.Input<String> id, {
    AdminAccountState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AdminAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AdminAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/adminAccount:AdminAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    adminScope = registerOutput<AdminAccountAdminScope?>('adminScope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AdminAccountAdminScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    timeouts = registerOutput<AdminAccountTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AdminAccountTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AdminAccount] resource.
  AdminAccount.reference(String urn)
    : super(
        'aws:networksecuritymanager/adminAccount:AdminAccount',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    adminScope = registerOutput<AdminAccountAdminScope?>('adminScope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AdminAccountAdminScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    timeouts = registerOutput<AdminAccountTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AdminAccountTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
