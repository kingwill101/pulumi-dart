import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_queue_properties_args.dart';
import 'account_queue_properties_cors_rule.dart';
import 'account_queue_properties_hour_metrics.dart';
import 'account_queue_properties_logging.dart';
import 'account_queue_properties_minute_metrics.dart';

/// Manages the Queue Properties of an Azure Storage Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "GRS",
///     tags: {
///         environment: "staging",
///     },
/// });
/// const exampleAccountQueueProperties = new azure.storage.AccountQueueProperties("example", {
///     storageAccountId: exampleAccount.id,
///     corsRules: [{
///         allowedOrigins: ["http://www.example.com"],
///         exposedHeaders: ["x-tempo-*"],
///         allowedHeaders: ["x-tempo-*"],
///         allowedMethods: [
///             "GET",
///             "PUT",
///         ],
///         maxAgeInSeconds: 500,
///     }],
///     logging: {
///         version: "1.0",
///         "delete": true,
///         read: true,
///         write: true,
///         retentionPolicyDays: 7,
///     },
///     hourMetrics: {
///         version: "1.0",
///         retentionPolicyDays: 7,
///     },
///     minuteMetrics: {
///         version: "1.0",
///         retentionPolicyDays: 7,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="GRS",
///     tags={
///         "environment": "staging",
///     })
/// example_account_queue_properties = azure.storage.AccountQueueProperties("example",
///     storage_account_id=example_account.id,
///     cors_rules=[{
///         "allowed_origins": ["http://www.example.com"],
///         "exposed_headers": ["x-tempo-*"],
///         "allowed_headers": ["x-tempo-*"],
///         "allowed_methods": [
///             "GET",
///             "PUT",
///         ],
///         "max_age_in_seconds": 500,
///     }],
///     logging={
///         "version": "1.0",
///         "delete": True,
///         "read": True,
///         "write": True,
///         "retention_policy_days": 7,
///     },
///     hour_metrics={
///         "version": "1.0",
///         "retention_policy_days": 7,
///     },
///     minute_metrics={
///         "version": "1.0",
///         "retention_policy_days": 7,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "GRS",
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
///     var exampleAccountQueueProperties = new Azure.Storage.AccountQueueProperties("example", new()
///     {
///         StorageAccountId = exampleAccount.Id,
///         CorsRules = new[]
///         {
///             new Azure.Storage.Inputs.AccountQueuePropertiesCorsRuleArgs
///             {
///                 AllowedOrigins = new[]
///                 {
///                     "http://www.example.com",
///                 },
///                 ExposedHeaders = new[]
///                 {
///                     "x-tempo-*",
///                 },
///                 AllowedHeaders = new[]
///                 {
///                     "x-tempo-*",
///                 },
///                 AllowedMethods = new[]
///                 {
///                     "GET",
///                     "PUT",
///                 },
///                 MaxAgeInSeconds = 500,
///             },
///         },
///         Logging = new Azure.Storage.Inputs.AccountQueuePropertiesLoggingArgs
///         {
///             Version = "1.0",
///             Delete = true,
///             Read = true,
///             Write = true,
///             RetentionPolicyDays = 7,
///         },
///         HourMetrics = new Azure.Storage.Inputs.AccountQueuePropertiesHourMetricsArgs
///         {
///             Version = "1.0",
///             RetentionPolicyDays = 7,
///         },
///         MinuteMetrics = new Azure.Storage.Inputs.AccountQueuePropertiesMinuteMetricsArgs
///         {
///             Version = "1.0",
///             RetentionPolicyDays = 7,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("GRS"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewAccountQueueProperties(ctx, "example", &storage.AccountQueuePropertiesArgs{
/// 			StorageAccountId: exampleAccount.ID(),
/// 			CorsRules: storage.AccountQueuePropertiesCorsRuleArray{
/// 				&storage.AccountQueuePropertiesCorsRuleArgs{
/// 					AllowedOrigins: pulumi.StringArray{
/// 						pulumi.String("http://www.example.com"),
/// 					},
/// 					ExposedHeaders: pulumi.StringArray{
/// 						pulumi.String("x-tempo-*"),
/// 					},
/// 					AllowedHeaders: pulumi.StringArray{
/// 						pulumi.String("x-tempo-*"),
/// 					},
/// 					AllowedMethods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("PUT"),
/// 					},
/// 					MaxAgeInSeconds: pulumi.Int(500),
/// 				},
/// 			},
/// 			Logging: &storage.AccountQueuePropertiesLoggingArgs{
/// 				Version:             pulumi.String("1.0"),
/// 				Delete:              pulumi.Bool(true),
/// 				Read:                pulumi.Bool(true),
/// 				Write:               pulumi.Bool(true),
/// 				RetentionPolicyDays: pulumi.Int(7),
/// 			},
/// 			HourMetrics: &storage.AccountQueuePropertiesHourMetricsArgs{
/// 				Version:             pulumi.String("1.0"),
/// 				RetentionPolicyDays: pulumi.Int(7),
/// 			},
/// 			MinuteMetrics: &storage.AccountQueuePropertiesMinuteMetricsArgs{
/// 				Version:             pulumi.String("1.0"),
/// 				RetentionPolicyDays: pulumi.Int(7),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.AccountQueueProperties;
/// import com.pulumi.azure.storage.AccountQueuePropertiesArgs;
/// import com.pulumi.azure.storage.inputs.AccountQueuePropertiesCorsRuleArgs;
/// import com.pulumi.azure.storage.inputs.AccountQueuePropertiesLoggingArgs;
/// import com.pulumi.azure.storage.inputs.AccountQueuePropertiesHourMetricsArgs;
/// import com.pulumi.azure.storage.inputs.AccountQueuePropertiesMinuteMetricsArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("GRS")
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///         var exampleAccountQueueProperties = new AccountQueueProperties("exampleAccountQueueProperties", AccountQueuePropertiesArgs.builder()
///             .storageAccountId(exampleAccount.id())
///             .corsRules(AccountQueuePropertiesCorsRuleArgs.builder()
///                 .allowedOrigins("http://www.example.com")
///                 .exposedHeaders("x-tempo-*")
///                 .allowedHeaders("x-tempo-*")
///                 .allowedMethods(
///                     "GET",
///                     "PUT")
///                 .maxAgeInSeconds(500)
///                 .build())
///             .logging(AccountQueuePropertiesLoggingArgs.builder()
///                 .version("1.0")
///                 .delete(true)
///                 .read(true)
///                 .write(true)
///                 .retentionPolicyDays(7)
///                 .build())
///             .hourMetrics(AccountQueuePropertiesHourMetricsArgs.builder()
///                 .version("1.0")
///                 .retentionPolicyDays(7)
///                 .build())
///             .minuteMetrics(AccountQueuePropertiesMinuteMetricsArgs.builder()
///                 .version("1.0")
///                 .retentionPolicyDays(7)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: GRS
///       tags:
///         environment: staging
///   exampleAccountQueueProperties:
///     type: azure:storage:AccountQueueProperties
///     name: example
///     properties:
///       storageAccountId: ${exampleAccount.id}
///       corsRules:
///         - allowedOrigins:
///             - http://www.example.com
///           exposedHeaders:
///             - x-tempo-*
///           allowedHeaders:
///             - x-tempo-*
///           allowedMethods:
///             - GET
///             - PUT
///           maxAgeInSeconds: '500'
///       logging:
///         version: '1.0'
///         delete: true
///         read: true
///         write: true
///         retentionPolicyDays: 7
///       hourMetrics:
///         version: '1.0'
///         retentionPolicyDays: 7
///       minuteMetrics:
///         version: '1.0'
///         retentionPolicyDays: 7
/// ```
///
///
/// ## Import
///
/// Storage Account Queue Properties can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/accountQueueProperties:AccountQueueProperties queueprops /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/myaccount
/// ```
class AccountQueuePropertiesStorage extends pulumi.CustomResource {
  /// A `cors_rule` block as defined above.
  late final pulumi.Output<List<AccountQueuePropertiesCorsRule>?> corsRules;
  /// A `hour_metrics` block as defined below.
  ///
  /// > **Note:** At least one of `cors_rule`, `logging`, `minute_metrics`, or `hour_metrics` must be specified.
  late final pulumi.Output<AccountQueuePropertiesHourMetrics> hourMetrics;
  /// A `logging` block as defined below.
  late final pulumi.Output<AccountQueuePropertiesLogging> logging;
  /// A `minute_metrics` block as defined below.
  late final pulumi.Output<AccountQueuePropertiesMinuteMetrics> minuteMetrics;
  /// The ID of the Storage Account to set Queue Properties on. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [AccountQueuePropertiesStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountQueuePropertiesStorage]. {@macro pulumi_storage_account_queue_properties_account_queue_properties_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountQueuePropertiesStorage(
    String name, {
    AccountQueuePropertiesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/accountQueueProperties:AccountQueueProperties',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.corsRules = registerOutput<List<AccountQueuePropertiesCorsRule>?>('corsRules');
    this.hourMetrics = registerOutput<AccountQueuePropertiesHourMetrics>('hourMetrics');
    this.logging = registerOutput<AccountQueuePropertiesLogging>('logging');
    this.minuteMetrics = registerOutput<AccountQueuePropertiesMinuteMetrics>('minuteMetrics');
    this.storageAccountId = registerOutput<String>('storageAccountId');
  }
}
