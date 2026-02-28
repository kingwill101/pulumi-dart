import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_audit_config_args.dart';
import 'iam_audit_config_audit_log_config.dart';

/// Allows management of audit logging config for a given service for a Google Cloud Platform Organization.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const config = new gcp.organizations.IamAuditConfig("config", {
///     orgId: "your-organization-id",
///     service: "allServices",
///     auditLogConfigs: [{
///         logType: "DATA_READ",
///         exemptedMembers: ["user:joebloggs@example.com"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// config = gcp.organizations.IamAuditConfig("config",
///     org_id="your-organization-id",
///     service="allServices",
///     audit_log_configs=[{
///         "log_type": "DATA_READ",
///         "exempted_members": ["user:joebloggs@example.com"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Gcp.Organizations.IamAuditConfig("config", new()
///     {
///         OrgId = "your-organization-id",
///         Service = "allServices",
///         AuditLogConfigs = new[]
///         {
///             new Gcp.Organizations.Inputs.IamAuditConfigAuditLogConfigArgs
///             {
///                 LogType = "DATA_READ",
///                 ExemptedMembers = new[]
///                 {
///                     "user:joebloggs@example.com",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIamAuditConfig(ctx, "config", &organizations.IamAuditConfigArgs{
/// 			OrgId:   pulumi.String("your-organization-id"),
/// 			Service: pulumi.String("allServices"),
/// 			AuditLogConfigs: organizations.IamAuditConfigAuditLogConfigArray{
/// 				&organizations.IamAuditConfigAuditLogConfigArgs{
/// 					LogType: pulumi.String("DATA_READ"),
/// 					ExemptedMembers: pulumi.StringArray{
/// 						pulumi.String("user:joebloggs@example.com"),
/// 					},
/// 				},
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
/// import com.pulumi.gcp.organizations.IamAuditConfig;
/// import com.pulumi.gcp.organizations.IamAuditConfigArgs;
/// import com.pulumi.gcp.organizations.inputs.IamAuditConfigAuditLogConfigArgs;
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
///         var config = new IamAuditConfig("config", IamAuditConfigArgs.builder()
///             .orgId("your-organization-id")
///             .service("allServices")
///             .auditLogConfigs(IamAuditConfigAuditLogConfigArgs.builder()
///                 .logType("DATA_READ")
///                 .exemptedMembers("user:joebloggs@example.com")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   config:
///     type: gcp:organizations:IamAuditConfig
///     properties:
///       orgId: your-organization-id
///       service: allServices
///       auditLogConfigs:
///         - logType: DATA_READ
///           exemptedMembers:
///             - user:joebloggs@example.com
/// ```
///
///
/// ## Import
///
/// IAM audit config imports use the identifier of the resource in question and the service, e.g.
///
/// ```sh
/// $ pulumi import gcp:organizations/iamAuditConfig:IamAuditConfig config "your-organization-id foo.googleapis.com"
/// ```
class IamAuditConfig extends pulumi.CustomResource {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  late final pulumi.Output<List<IamAuditConfigAuditLogConfig>> auditLogConfigs;

  /// The etag of iam policy
  late final pulumi.Output<String> etag;

  /// The numeric ID of the organization in which you want to manage the audit logging config.
  late final pulumi.Output<String> orgId;

  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are google\_organization\_iam\_audit\_config resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  late final pulumi.Output<String> service;

  /// Creates a new [IamAuditConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamAuditConfig]. {@macro pulumi_organizations_iam_audit_config_iam_audit_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamAuditConfig(
    String name, {
    IamAuditConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/iamAuditConfig:IamAuditConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.auditLogConfigs =
        registerOutput<List<IamAuditConfigAuditLogConfig>>('auditLogConfigs');
    this.etag = registerOutput<String>('etag');
    this.orgId = registerOutput<String>('orgId');
    this.service = registerOutput<String>('service');
  }
}
