import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_settings_args.dart';
import 'region_settings_state.dart';

/// Provides an AWS Backup Region Settings resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.backup.RegionSettings("test", {
///     resourceTypeOptInPreference: {
///         Aurora: true,
///         CloudFormation: true,
///         DocumentDB: true,
///         DSQL: true,
///         DynamoDB: true,
///         EBS: true,
///         EC2: true,
///         EFS: true,
///         FSx: true,
///         Neptune: true,
///         Redshift: true,
///         "Redshift Serverless": false,
///         RDS: false,
///         S3: false,
///         "SAP HANA on Amazon EC2": false,
///         "Storage Gateway": false,
///         VirtualMachine: false,
///     },
///     resourceTypeManagementPreference: {
///         CloudFormation: true,
///         DSQL: true,
///         DynamoDB: false,
///         EFS: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.backup.RegionSettings("test",
///     resource_type_opt_in_preference={
///         "Aurora": True,
///         "CloudFormation": True,
///         "DocumentDB": True,
///         "DSQL": True,
///         "DynamoDB": True,
///         "EBS": True,
///         "EC2": True,
///         "EFS": True,
///         "FSx": True,
///         "Neptune": True,
///         "Redshift": True,
///         "Redshift Serverless": False,
///         "RDS": False,
///         "S3": False,
///         "SAP HANA on Amazon EC2": False,
///         "Storage Gateway": False,
///         "VirtualMachine": False,
///     },
///     resource_type_management_preference={
///         "CloudFormation": True,
///         "DSQL": True,
///         "DynamoDB": False,
///         "EFS": False,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Backup.RegionSettings("test", new()
///     {
///         ResourceTypeOptInPreference =
///         {
///             { "Aurora", true },
///             { "CloudFormation", true },
///             { "DocumentDB", true },
///             { "DSQL", true },
///             { "DynamoDB", true },
///             { "EBS", true },
///             { "EC2", true },
///             { "EFS", true },
///             { "FSx", true },
///             { "Neptune", true },
///             { "Redshift", true },
///             { "Redshift Serverless", false },
///             { "RDS", false },
///             { "S3", false },
///             { "SAP HANA on Amazon EC2", false },
///             { "Storage Gateway", false },
///             { "VirtualMachine", false },
///         },
///         ResourceTypeManagementPreference =
///         {
///             { "CloudFormation", true },
///             { "DSQL", true },
///             { "DynamoDB", false },
///             { "EFS", false },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.NewRegionSettings(ctx, "test", &backup.RegionSettingsArgs{
/// 			ResourceTypeOptInPreference: pulumi.BoolMap{
/// 				"Aurora":                 pulumi.Bool(true),
/// 				"CloudFormation":         pulumi.Bool(true),
/// 				"DocumentDB":             pulumi.Bool(true),
/// 				"DSQL":                   pulumi.Bool(true),
/// 				"DynamoDB":               pulumi.Bool(true),
/// 				"EBS":                    pulumi.Bool(true),
/// 				"EC2":                    pulumi.Bool(true),
/// 				"EFS":                    pulumi.Bool(true),
/// 				"FSx":                    pulumi.Bool(true),
/// 				"Neptune":                pulumi.Bool(true),
/// 				"Redshift":               pulumi.Bool(true),
/// 				"Redshift Serverless":    pulumi.Bool(false),
/// 				"RDS":                    pulumi.Bool(false),
/// 				"S3":                     pulumi.Bool(false),
/// 				"SAP HANA on Amazon EC2": pulumi.Bool(false),
/// 				"Storage Gateway":        pulumi.Bool(false),
/// 				"VirtualMachine":         pulumi.Bool(false),
/// 			},
/// 			ResourceTypeManagementPreference: pulumi.BoolMap{
/// 				"CloudFormation": pulumi.Bool(true),
/// 				"DSQL":           pulumi.Bool(true),
/// 				"DynamoDB":       pulumi.Bool(false),
/// 				"EFS":            pulumi.Bool(false),
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
/// import com.pulumi.aws.backup.RegionSettings;
/// import com.pulumi.aws.backup.RegionSettingsArgs;
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
///         var test = new RegionSettings("test", RegionSettingsArgs.builder()
///             .resourceTypeOptInPreference(Map.ofEntries(
///                 Map.entry("Aurora", true),
///                 Map.entry("CloudFormation", true),
///                 Map.entry("DocumentDB", true),
///                 Map.entry("DSQL", true),
///                 Map.entry("DynamoDB", true),
///                 Map.entry("EBS", true),
///                 Map.entry("EC2", true),
///                 Map.entry("EFS", true),
///                 Map.entry("FSx", true),
///                 Map.entry("Neptune", true),
///                 Map.entry("Redshift", true),
///                 Map.entry("Redshift Serverless", false),
///                 Map.entry("RDS", false),
///                 Map.entry("S3", false),
///                 Map.entry("SAP HANA on Amazon EC2", false),
///                 Map.entry("Storage Gateway", false),
///                 Map.entry("VirtualMachine", false)
///             ))
///             .resourceTypeManagementPreference(Map.ofEntries(
///                 Map.entry("CloudFormation", true),
///                 Map.entry("DSQL", true),
///                 Map.entry("DynamoDB", false),
///                 Map.entry("EFS", false)
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:backup:RegionSettings
///     properties:
///       resourceTypeOptInPreference:
///         Aurora: true
///         CloudFormation: true
///         DocumentDB: true
///         DSQL: true
///         DynamoDB: true
///         EBS: true
///         EC2: true
///         EFS: true
///         FSx: true
///         Neptune: true
///         Redshift: true
///         Redshift Serverless: false
///         RDS: false
///         S3: false
///         SAP HANA on Amazon EC2: false
///         Storage Gateway: false
///         VirtualMachine: false
///       resourceTypeManagementPreference:
///         CloudFormation: true
///         DSQL: true
///         DynamoDB: false
///         EFS: false
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Region Settings using the `region`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/regionSettings:RegionSettings test us-west-2
/// ```
class RegionSettings extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of service names to their full management preferences for the Region. For more information, see the AWS Documentation on [what full management is](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management) and [which services support full management](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource).
  late final pulumi.Output<Map<String, bool>> resourceTypeManagementPreference;
  /// A map of service names to their opt-in preferences for the Region. See [AWS Documentation on which services support backup](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html).
  late final pulumi.Output<Map<String, bool>> resourceTypeOptInPreference;

  /// Creates a new [RegionSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionSettings]. {@macro pulumi_backup_region_settings_region_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionSettings(
    String name, {
    RegionSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/regionSettings:RegionSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceTypeManagementPreference = registerOutput<Map<String, bool>>('resourceTypeManagementPreference');
    this.resourceTypeOptInPreference = registerOutput<Map<String, bool>>('resourceTypeOptInPreference');
  }

  /// Gets an existing [RegionSettings] resource's state with the given [name] and [id].
  static RegionSettings get(
    String name,
    pulumi.Input<String> id, {
    RegionSettingsState? state,
  }) {
    return RegionSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/regionSettings:RegionSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceTypeManagementPreference = registerOutput<Map<String, bool>>('resourceTypeManagementPreference');
    this.resourceTypeOptInPreference = registerOutput<Map<String, bool>>('resourceTypeOptInPreference');
  }
}
