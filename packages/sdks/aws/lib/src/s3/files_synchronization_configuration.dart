import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_synchronization_configuration_args.dart';
import 'files_synchronization_configuration_expiration_data_rule.dart';
import 'files_synchronization_configuration_import_data_rule.dart';
import 'files_synchronization_configuration_state.dart';

/// Manages an S3 Files Synchronization configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.FilesSynchronizationConfiguration("example", {
///     expirationDataRules: [{
///         daysAfterLastAccess: 30,
///     }],
///     importDataRules: [{
///         prefix: "",
///         sizeLessThan: 52673613135872,
///         trigger: "ON_FILE_ACCESS",
///     }],
///     fileSystemId: exampleAwsS3filesFileSystem.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.FilesSynchronizationConfiguration("example",
///     expiration_data_rules=[{
///         "days_after_last_access": 30,
///     }],
///     import_data_rules=[{
///         "prefix": "",
///         "size_less_than": int(52673613135872),
///         "trigger": "ON_FILE_ACCESS",
///     }],
///     file_system_id=example_aws_s3files_file_system["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.FilesSynchronizationConfiguration("example", new()
///     {
///         ExpirationDataRules = new[]
///         {
///             new Aws.S3.Inputs.FilesSynchronizationConfigurationExpirationDataRuleArgs
///             {
///                 DaysAfterLastAccess = 30,
///             },
///         },
///         ImportDataRules = new[]
///         {
///             new Aws.S3.Inputs.FilesSynchronizationConfigurationImportDataRuleArgs
///             {
///                 Prefix = "",
///                 SizeLessThan = 52673613135872,
///                 Trigger = "ON_FILE_ACCESS",
///             },
///         },
///         FileSystemId = exampleAwsS3filesFileSystem.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewFilesSynchronizationConfiguration(ctx, "example", &s3.FilesSynchronizationConfigurationArgs{
/// 			ExpirationDataRules: s3.FilesSynchronizationConfigurationExpirationDataRuleArray{
/// 				&s3.FilesSynchronizationConfigurationExpirationDataRuleArgs{
/// 					DaysAfterLastAccess: pulumi.Int(30),
/// 				},
/// 			},
/// 			ImportDataRules: s3.FilesSynchronizationConfigurationImportDataRuleArray{
/// 				&s3.FilesSynchronizationConfigurationImportDataRuleArgs{
/// 					Prefix:       pulumi.String(""),
/// 					SizeLessThan: pulumi.Int(52673613135872),
/// 					Trigger:      pulumi.String("ON_FILE_ACCESS"),
/// 				},
/// 			},
/// 			FileSystemId: pulumi.Any(exampleAwsS3filesFileSystem.Id),
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
/// resource "aws_s3_filessynchronizationconfiguration" "example" {
///   expiration_data_rules {
///     days_after_last_access = 30
///   }
///   import_data_rules {
///     prefix         = ""
///     size_less_than = 52673613135872
///     trigger        = "ON_FILE_ACCESS"
///   }
///   file_system_id = exampleAwsS3filesFileSystem.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.FilesSynchronizationConfiguration;
/// import com.pulumi.aws.s3.FilesSynchronizationConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.FilesSynchronizationConfigurationExpirationDataRuleArgs;
/// import com.pulumi.aws.s3.inputs.FilesSynchronizationConfigurationImportDataRuleArgs;
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
///         var example = new FilesSynchronizationConfiguration("example", FilesSynchronizationConfigurationArgs.builder()
///             .expirationDataRules(FilesSynchronizationConfigurationExpirationDataRuleArgs.builder()
///                 .daysAfterLastAccess(30)
///                 .build())
///             .importDataRules(FilesSynchronizationConfigurationImportDataRuleArgs.builder()
///                 .prefix("")
///                 .sizeLessThan(52673613135872)
///                 .trigger("ON_FILE_ACCESS")
///                 .build())
///             .fileSystemId(exampleAwsS3filesFileSystem.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:FilesSynchronizationConfiguration
///     properties:
///       expirationDataRules:
///         - daysAfterLastAccess: 30
///       importDataRules:
///         - prefix: ""
///           sizeLessThan: 5.2673613135872e+13
///           trigger: ON_FILE_ACCESS
///       fileSystemId: ${exampleAwsS3filesFileSystem.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `fileSystemId` - File system ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 Files Synchronization using `fileSystemId`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/filesSynchronizationConfiguration:FilesSynchronizationConfiguration example fs-1234567890abcdef0
/// ```
class FilesSynchronizationConfiguration extends pulumi.CustomResource {
  /// Expiration data rule configuration. See `expirationDataRule` below.
  late final pulumi.Output<List<FilesSynchronizationConfigurationExpirationDataRule>?> expirationDataRules;
  /// File system ID. Changing this value forces replacement.
  late final pulumi.Output<String> fileSystemId;
  /// One or more import data rules. See `importDataRule` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<FilesSynchronizationConfigurationImportDataRule>?> importDataRules;
  /// Latest synchronization configuration version number.
  late final pulumi.Output<int> latestVersionNumber;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [FilesSynchronizationConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FilesSynchronizationConfiguration]. {@macro pulumi_s3_files_synchronization_configuration_files_synchronization_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FilesSynchronizationConfiguration(
    String name, {
    FilesSynchronizationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/filesSynchronizationConfiguration:FilesSynchronizationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    expirationDataRules = registerOutput<List<FilesSynchronizationConfigurationExpirationDataRule>?>('expirationDataRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FilesSynchronizationConfigurationExpirationDataRule>(guardedValue, (value) => FilesSynchronizationConfigurationExpirationDataRule.fromMap((value as Map).cast<String, dynamic>())); });
    fileSystemId = registerOutput<String>('fileSystemId');
    importDataRules = registerOutput<List<FilesSynchronizationConfigurationImportDataRule>?>('importDataRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FilesSynchronizationConfigurationImportDataRule>(guardedValue, (value) => FilesSynchronizationConfigurationImportDataRule.fromMap((value as Map).cast<String, dynamic>())); });
    latestVersionNumber = registerOutput<int>('latestVersionNumber');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [FilesSynchronizationConfiguration] resource's state with the given [name] and [id].
  static FilesSynchronizationConfiguration get(
    String name,
    pulumi.Input<String> id, {
    FilesSynchronizationConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FilesSynchronizationConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FilesSynchronizationConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/filesSynchronizationConfiguration:FilesSynchronizationConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    expirationDataRules = registerOutput<List<FilesSynchronizationConfigurationExpirationDataRule>?>('expirationDataRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FilesSynchronizationConfigurationExpirationDataRule>(guardedValue, (value) => FilesSynchronizationConfigurationExpirationDataRule.fromMap((value as Map).cast<String, dynamic>())); });
    fileSystemId = registerOutput<String>('fileSystemId');
    importDataRules = registerOutput<List<FilesSynchronizationConfigurationImportDataRule>?>('importDataRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FilesSynchronizationConfigurationImportDataRule>(guardedValue, (value) => FilesSynchronizationConfigurationImportDataRule.fromMap((value as Map).cast<String, dynamic>())); });
    latestVersionNumber = registerOutput<int>('latestVersionNumber');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [FilesSynchronizationConfiguration] resource.
  FilesSynchronizationConfiguration.reference(String urn)
    : super(
        'aws:s3/filesSynchronizationConfiguration:FilesSynchronizationConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    expirationDataRules = registerOutput<List<FilesSynchronizationConfigurationExpirationDataRule>?>('expirationDataRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FilesSynchronizationConfigurationExpirationDataRule>(guardedValue, (value) => FilesSynchronizationConfigurationExpirationDataRule.fromMap((value as Map).cast<String, dynamic>())); });
    fileSystemId = registerOutput<String>('fileSystemId');
    importDataRules = registerOutput<List<FilesSynchronizationConfigurationImportDataRule>?>('importDataRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FilesSynchronizationConfigurationImportDataRule>(guardedValue, (value) => FilesSynchronizationConfigurationImportDataRule.fromMap((value as Map).cast<String, dynamic>())); });
    latestVersionNumber = registerOutput<int>('latestVersionNumber');
    region = registerOutput<String>('region');
  }
}
