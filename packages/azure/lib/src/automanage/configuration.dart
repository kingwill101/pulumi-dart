import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_antimalware.dart';
import 'configuration_args.dart';
import 'configuration_azure_security_baseline.dart';
import 'configuration_backup.dart';

/// Manages an Automanage Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-automanage",
///     location: "West Europe",
/// });
/// const exampleConfiguration = new azure.automanage.Configuration("example", {
///     name: "example-acmp",
///     resourceGroupName: example.name,
///     location: example.location,
///     antimalware: {
///         exclusions: {
///             extensions: "exe;dll",
///             paths: "C:\\Windows\\Temp;D:\\Temp",
///             processes: "svchost.exe;notepad.exe",
///         },
///         realTimeProtectionEnabled: true,
///         scheduledScanEnabled: true,
///         scheduledScanType: "Quick",
///         scheduledScanDay: 1,
///         scheduledScanTimeInMinutes: 1339,
///     },
///     azureSecurityBaseline: {
///         assignmentType: "ApplyAndAutoCorrect",
///     },
///     automationAccountEnabled: true,
///     backup: {
///         policyName: "acctest-backup-policy-%d",
///         timeZone: "UTC",
///         instantRpRetentionRangeInDays: 2,
///         schedulePolicy: {
///             scheduleRunFrequency: "Daily",
///             scheduleRunDays: [
///                 "Monday",
///                 "Tuesday",
///             ],
///             scheduleRunTimes: ["12:00"],
///             schedulePolicyType: "SimpleSchedulePolicy",
///         },
///         retentionPolicy: {
///             retentionPolicyType: "LongTermRetentionPolicy",
///             dailySchedule: {
///                 retentionTimes: ["12:00"],
///                 retentionDuration: {
///                     count: 7,
///                     durationType: "Days",
///                 },
///             },
///             weeklySchedule: {
///                 retentionTimes: ["14:00"],
///                 retentionDuration: {
///                     count: 4,
///                     durationType: "Weeks",
///                 },
///             },
///         },
///     },
///     bootDiagnosticsEnabled: true,
///     defenderForCloudEnabled: true,
///     guestConfigurationEnabled: true,
///     logAnalyticsEnabled: true,
///     statusChangeAlertEnabled: true,
///     tags: {
///         env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-automanage",
///     location="West Europe")
/// example_configuration = azure.automanage.Configuration("example",
///     name="example-acmp",
///     resource_group_name=example.name,
///     location=example.location,
///     antimalware={
///         "exclusions": {
///             "extensions": "exe;dll",
///             "paths": "C:\\Windows\\Temp;D:\\Temp",
///             "processes": "svchost.exe;notepad.exe",
///         },
///         "real_time_protection_enabled": True,
///         "scheduled_scan_enabled": True,
///         "scheduled_scan_type": "Quick",
///         "scheduled_scan_day": 1,
///         "scheduled_scan_time_in_minutes": 1339,
///     },
///     azure_security_baseline={
///         "assignment_type": "ApplyAndAutoCorrect",
///     },
///     automation_account_enabled=True,
///     backup={
///         "policy_name": "acctest-backup-policy-%d",
///         "time_zone": "UTC",
///         "instant_rp_retention_range_in_days": 2,
///         "schedule_policy": {
///             "schedule_run_frequency": "Daily",
///             "schedule_run_days": [
///                 "Monday",
///                 "Tuesday",
///             ],
///             "schedule_run_times": ["12:00"],
///             "schedule_policy_type": "SimpleSchedulePolicy",
///         },
///         "retention_policy": {
///             "retention_policy_type": "LongTermRetentionPolicy",
///             "daily_schedule": {
///                 "retention_times": ["12:00"],
///                 "retention_duration": {
///                     "count": 7,
///                     "duration_type": "Days",
///                 },
///             },
///             "weekly_schedule": {
///                 "retention_times": ["14:00"],
///                 "retention_duration": {
///                     "count": 4,
///                     "duration_type": "Weeks",
///                 },
///             },
///         },
///     },
///     boot_diagnostics_enabled=True,
///     defender_for_cloud_enabled=True,
///     guest_configuration_enabled=True,
///     log_analytics_enabled=True,
///     status_change_alert_enabled=True,
///     tags={
///         "env": "test",
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
///         Name = "example-automanage",
///         Location = "West Europe",
///     });
///
///     var exampleConfiguration = new Azure.Automanage.Configuration("example", new()
///     {
///         Name = "example-acmp",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Antimalware = new Azure.Automanage.Inputs.ConfigurationAntimalwareArgs
///         {
///             Exclusions = new Azure.Automanage.Inputs.ConfigurationAntimalwareExclusionsArgs
///             {
///                 Extensions = "exe;dll",
///                 Paths = "C:\\Windows\\Temp;D:\\Temp",
///                 Processes = "svchost.exe;notepad.exe",
///             },
///             RealTimeProtectionEnabled = true,
///             ScheduledScanEnabled = true,
///             ScheduledScanType = "Quick",
///             ScheduledScanDay = 1,
///             ScheduledScanTimeInMinutes = 1339,
///         },
///         AzureSecurityBaseline = new Azure.Automanage.Inputs.ConfigurationAzureSecurityBaselineArgs
///         {
///             AssignmentType = "ApplyAndAutoCorrect",
///         },
///         AutomationAccountEnabled = true,
///         Backup = new Azure.Automanage.Inputs.ConfigurationBackupArgs
///         {
///             PolicyName = "acctest-backup-policy-%d",
///             TimeZone = "UTC",
///             InstantRpRetentionRangeInDays = 2,
///             SchedulePolicy = new Azure.Automanage.Inputs.ConfigurationBackupSchedulePolicyArgs
///             {
///                 ScheduleRunFrequency = "Daily",
///                 ScheduleRunDays = new[]
///                 {
///                     "Monday",
///                     "Tuesday",
///                 },
///                 ScheduleRunTimes = new[]
///                 {
///                     "12:00",
///                 },
///                 SchedulePolicyType = "SimpleSchedulePolicy",
///             },
///             RetentionPolicy = new Azure.Automanage.Inputs.ConfigurationBackupRetentionPolicyArgs
///             {
///                 RetentionPolicyType = "LongTermRetentionPolicy",
///                 DailySchedule = new Azure.Automanage.Inputs.ConfigurationBackupRetentionPolicyDailyScheduleArgs
///                 {
///                     RetentionTimes = new[]
///                     {
///                         "12:00",
///                     },
///                     RetentionDuration = new Azure.Automanage.Inputs.ConfigurationBackupRetentionPolicyDailyScheduleRetentionDurationArgs
///                     {
///                         Count = 7,
///                         DurationType = "Days",
///                     },
///                 },
///                 WeeklySchedule = new Azure.Automanage.Inputs.ConfigurationBackupRetentionPolicyWeeklyScheduleArgs
///                 {
///                     RetentionTimes = new[]
///                     {
///                         "14:00",
///                     },
///                     RetentionDuration = new Azure.Automanage.Inputs.ConfigurationBackupRetentionPolicyWeeklyScheduleRetentionDurationArgs
///                     {
///                         Count = 4,
///                         DurationType = "Weeks",
///                     },
///                 },
///             },
///         },
///         BootDiagnosticsEnabled = true,
///         DefenderForCloudEnabled = true,
///         GuestConfigurationEnabled = true,
///         LogAnalyticsEnabled = true,
///         StatusChangeAlertEnabled = true,
///         Tags =
///         {
///             { "env", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automanage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-automanage"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automanage.NewConfiguration(ctx, "example", &automanage.ConfigurationArgs{
/// 			Name:              pulumi.String("example-acmp"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Antimalware: &automanage.ConfigurationAntimalwareArgs{
/// 				Exclusions: &automanage.ConfigurationAntimalwareExclusionsArgs{
/// 					Extensions: pulumi.String("exe;dll"),
/// 					Paths:      pulumi.String("C:\\Windows\\Temp;D:\\Temp"),
/// 					Processes:  pulumi.String("svchost.exe;notepad.exe"),
/// 				},
/// 				RealTimeProtectionEnabled:  pulumi.Bool(true),
/// 				ScheduledScanEnabled:       pulumi.Bool(true),
/// 				ScheduledScanType:          pulumi.String("Quick"),
/// 				ScheduledScanDay:           pulumi.Int(1),
/// 				ScheduledScanTimeInMinutes: pulumi.Int(1339),
/// 			},
/// 			AzureSecurityBaseline: &automanage.ConfigurationAzureSecurityBaselineArgs{
/// 				AssignmentType: pulumi.String("ApplyAndAutoCorrect"),
/// 			},
/// 			AutomationAccountEnabled: pulumi.Bool(true),
/// 			Backup: &automanage.ConfigurationBackupArgs{
/// 				PolicyName:                    pulumi.String("acctest-backup-policy-%d"),
/// 				TimeZone:                      pulumi.String("UTC"),
/// 				InstantRpRetentionRangeInDays: pulumi.Int(2),
/// 				SchedulePolicy: &automanage.ConfigurationBackupSchedulePolicyArgs{
/// 					ScheduleRunFrequency: pulumi.String("Daily"),
/// 					ScheduleRunDays: pulumi.StringArray{
/// 						pulumi.String("Monday"),
/// 						pulumi.String("Tuesday"),
/// 					},
/// 					ScheduleRunTimes: pulumi.StringArray{
/// 						pulumi.String("12:00"),
/// 					},
/// 					SchedulePolicyType: pulumi.String("SimpleSchedulePolicy"),
/// 				},
/// 				RetentionPolicy: &automanage.ConfigurationBackupRetentionPolicyArgs{
/// 					RetentionPolicyType: pulumi.String("LongTermRetentionPolicy"),
/// 					DailySchedule: &automanage.ConfigurationBackupRetentionPolicyDailyScheduleArgs{
/// 						RetentionTimes: pulumi.StringArray{
/// 							pulumi.String("12:00"),
/// 						},
/// 						RetentionDuration: &automanage.ConfigurationBackupRetentionPolicyDailyScheduleRetentionDurationArgs{
/// 							Count:        pulumi.Int(7),
/// 							DurationType: pulumi.String("Days"),
/// 						},
/// 					},
/// 					WeeklySchedule: &automanage.ConfigurationBackupRetentionPolicyWeeklyScheduleArgs{
/// 						RetentionTimes: pulumi.StringArray{
/// 							pulumi.String("14:00"),
/// 						},
/// 						RetentionDuration: &automanage.ConfigurationBackupRetentionPolicyWeeklyScheduleRetentionDurationArgs{
/// 							Count:        pulumi.Int(4),
/// 							DurationType: pulumi.String("Weeks"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BootDiagnosticsEnabled:    pulumi.Bool(true),
/// 			DefenderForCloudEnabled:   pulumi.Bool(true),
/// 			GuestConfigurationEnabled: pulumi.Bool(true),
/// 			LogAnalyticsEnabled:       pulumi.Bool(true),
/// 			StatusChangeAlertEnabled:  pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
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
/// import com.pulumi.azure.automanage.Configuration;
/// import com.pulumi.azure.automanage.ConfigurationArgs;
/// import com.pulumi.azure.automanage.inputs.ConfigurationAntimalwareArgs;
/// import com.pulumi.azure.automanage.inputs.ConfigurationAntimalwareExclusionsArgs;
/// import com.pulumi.azure.automanage.inputs.ConfigurationAzureSecurityBaselineArgs;
/// import com.pulumi.azure.automanage.inputs.ConfigurationBackupArgs;
/// import com.pulumi.azure.automanage.inputs.ConfigurationBackupSchedulePolicyArgs;
/// import com.pulumi.azure.automanage.inputs.ConfigurationBackupRetentionPolicyArgs;
/// import com.pulumi.azure.automanage.inputs.ConfigurationBackupRetentionPolicyDailyScheduleArgs;
/// import com.pulumi.azure.automanage.inputs.ConfigurationBackupRetentionPolicyDailyScheduleRetentionDurationArgs;
/// import com.pulumi.azure.automanage.inputs.ConfigurationBackupRetentionPolicyWeeklyScheduleArgs;
/// import com.pulumi.azure.automanage.inputs.ConfigurationBackupRetentionPolicyWeeklyScheduleRetentionDurationArgs;
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
///             .name("example-automanage")
///             .location("West Europe")
///             .build());
///
///         var exampleConfiguration = new Configuration("exampleConfiguration", ConfigurationArgs.builder()
///             .name("example-acmp")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .antimalware(ConfigurationAntimalwareArgs.builder()
///                 .exclusions(ConfigurationAntimalwareExclusionsArgs.builder()
///                     .extensions("exe;dll")
///                     .paths("C:\\Windows\\Temp;D:\\Temp")
///                     .processes("svchost.exe;notepad.exe")
///                     .build())
///                 .realTimeProtectionEnabled(true)
///                 .scheduledScanEnabled(true)
///                 .scheduledScanType("Quick")
///                 .scheduledScanDay(1)
///                 .scheduledScanTimeInMinutes(1339)
///                 .build())
///             .azureSecurityBaseline(ConfigurationAzureSecurityBaselineArgs.builder()
///                 .assignmentType("ApplyAndAutoCorrect")
///                 .build())
///             .automationAccountEnabled(true)
///             .backup(ConfigurationBackupArgs.builder()
///                 .policyName("acctest-backup-policy-%d")
///                 .timeZone("UTC")
///                 .instantRpRetentionRangeInDays(2)
///                 .schedulePolicy(ConfigurationBackupSchedulePolicyArgs.builder()
///                     .scheduleRunFrequency("Daily")
///                     .scheduleRunDays(
///                         "Monday",
///                         "Tuesday")
///                     .scheduleRunTimes("12:00")
///                     .schedulePolicyType("SimpleSchedulePolicy")
///                     .build())
///                 .retentionPolicy(ConfigurationBackupRetentionPolicyArgs.builder()
///                     .retentionPolicyType("LongTermRetentionPolicy")
///                     .dailySchedule(ConfigurationBackupRetentionPolicyDailyScheduleArgs.builder()
///                         .retentionTimes("12:00")
///                         .retentionDuration(ConfigurationBackupRetentionPolicyDailyScheduleRetentionDurationArgs.builder()
///                             .count(7)
///                             .durationType("Days")
///                             .build())
///                         .build())
///                     .weeklySchedule(ConfigurationBackupRetentionPolicyWeeklyScheduleArgs.builder()
///                         .retentionTimes("14:00")
///                         .retentionDuration(ConfigurationBackupRetentionPolicyWeeklyScheduleRetentionDurationArgs.builder()
///                             .count(4)
///                             .durationType("Weeks")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .bootDiagnosticsEnabled(true)
///             .defenderForCloudEnabled(true)
///             .guestConfigurationEnabled(true)
///             .logAnalyticsEnabled(true)
///             .statusChangeAlertEnabled(true)
///             .tags(Map.of("env", "test"))
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
///       name: example-automanage
///       location: West Europe
///   exampleConfiguration:
///     type: azure:automanage:Configuration
///     name: example
///     properties:
///       name: example-acmp
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       antimalware:
///         exclusions:
///           extensions: exe;dll
///           paths: C:\Windows\Temp;D:\Temp
///           processes: svchost.exe;notepad.exe
///         realTimeProtectionEnabled: true
///         scheduledScanEnabled: true
///         scheduledScanType: Quick
///         scheduledScanDay: 1
///         scheduledScanTimeInMinutes: 1339
///       azureSecurityBaseline:
///         assignmentType: ApplyAndAutoCorrect
///       automationAccountEnabled: true
///       backup:
///         policyName: acctest-backup-policy-%d
///         timeZone: UTC
///         instantRpRetentionRangeInDays: 2
///         schedulePolicy:
///           scheduleRunFrequency: Daily
///           scheduleRunDays:
///             - Monday
///             - Tuesday
///           scheduleRunTimes:
///             - 12:00
///           schedulePolicyType: SimpleSchedulePolicy
///         retentionPolicy:
///           retentionPolicyType: LongTermRetentionPolicy
///           dailySchedule:
///             retentionTimes:
///               - 12:00
///             retentionDuration:
///               count: 7
///               durationType: Days
///           weeklySchedule:
///             retentionTimes:
///               - 14:00
///             retentionDuration:
///               count: 4
///               durationType: Weeks
///       bootDiagnosticsEnabled: true
///       defenderForCloudEnabled: true
///       guestConfigurationEnabled: true
///       logAnalyticsEnabled: true
///       statusChangeAlertEnabled: true
///       tags:
///         env: test
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AutoManage` - 2022-05-04
///
/// ## Import
///
/// Automanage Configuration can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automanage/configuration:Configuration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AutoManage/configurationProfiles/configurationProfile1
/// ```
class Configuration extends pulumi.CustomResource {
  /// A `antimalware` block as defined below.
  late final pulumi.Output<ConfigurationAntimalware?> antimalware;
  /// Whether the automation account is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> automationAccountEnabled;
  /// A `azure_security_baseline` block as defined below.
  late final pulumi.Output<ConfigurationAzureSecurityBaseline?> azureSecurityBaseline;
  /// A `backup` block as defined below.
  late final pulumi.Output<ConfigurationBackup?> backup;
  /// Whether the boot diagnostics are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> bootDiagnosticsEnabled;
  /// Whether the defender for cloud is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> defenderForCloudEnabled;
  /// Whether the guest configuration is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> guestConfigurationEnabled;
  /// The Azure Region where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created.
  late final pulumi.Output<String> location;
  /// Whether log analytics are enabled. Defaults to `false`.
  late final pulumi.Output<bool?> logAnalyticsEnabled;
  /// The name which should be used for this Automanage Configuration. Changing this forces a new Automanage Configuration to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Whether the status change alert is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> statusChangeAlertEnabled;
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Configuration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Configuration]. {@macro pulumi_automanage_configuration_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Configuration(
    String name, {
    ConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automanage/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.antimalware = registerOutput<ConfigurationAntimalware?>('antimalware');
    this.automationAccountEnabled = registerOutput<bool?>('automationAccountEnabled');
    this.azureSecurityBaseline = registerOutput<ConfigurationAzureSecurityBaseline?>('azureSecurityBaseline');
    this.backup = registerOutput<ConfigurationBackup?>('backup');
    this.bootDiagnosticsEnabled = registerOutput<bool?>('bootDiagnosticsEnabled');
    this.defenderForCloudEnabled = registerOutput<bool?>('defenderForCloudEnabled');
    this.guestConfigurationEnabled = registerOutput<bool?>('guestConfigurationEnabled');
    this.location = registerOutput<String>('location');
    this.logAnalyticsEnabled = registerOutput<bool?>('logAnalyticsEnabled');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.statusChangeAlertEnabled = registerOutput<bool?>('statusChangeAlertEnabled');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
