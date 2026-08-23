import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_synchronization_configuration_args.dart';
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
///     fileSystemId: exampleAwsS3filesFileSystem.id,
///     importDataRules: [{
///         prefix: "",
///         sizeLessThan: 52673613135872,
///         trigger: "ON_FILE_ACCESS",
///     }],
///     expirationDataRules: [{
///         daysAfterLastAccess: 30,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.FilesSynchronizationConfiguration("example",
///     file_system_id=example_aws_s3files_file_system["id"],
///     import_data_rules=[{
///         "prefix": "",
///         "size_less_than": int(52673613135872),
///         "trigger": "ON_FILE_ACCESS",
///     }],
///     expiration_data_rules=[{
///         "days_after_last_access": 30,
///     }])
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
///         FileSystemId = exampleAwsS3filesFileSystem.Id,
///         ImportDataRules = new[]
///         {
///             new Aws.S3.Inputs.FilesSynchronizationConfigurationImportDataRuleArgs
///             {
///                 Prefix = "",
///                 SizeLessThan = 52673613135872,
///                 Trigger = "ON_FILE_ACCESS",
///             },
///         },
///         ExpirationDataRules = new[]
///         {
///             new Aws.S3.Inputs.FilesSynchronizationConfigurationExpirationDataRuleArgs
///             {
///                 DaysAfterLastAccess = 30,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewFilesSynchronizationConfiguration(ctx, "example", &s3.FilesSynchronizationConfigurationArgs{
/// 			FileSystemId: pulumi.Any(exampleAwsS3filesFileSystem.Id),
/// 			ImportDataRules: s3.FilesSynchronizationConfigurationImportDataRuleArray{
/// 				&s3.FilesSynchronizationConfigurationImportDataRuleArgs{
/// 					Prefix:       pulumi.String(""),
/// 					SizeLessThan: pulumi.Int(52673613135872),
/// 					Trigger:      pulumi.String("ON_FILE_ACCESS"),
/// 				},
/// 			},
/// 			ExpirationDataRules: s3.FilesSynchronizationConfigurationExpirationDataRuleArray{
/// 				&s3.FilesSynchronizationConfigurationExpirationDataRuleArgs{
/// 					DaysAfterLastAccess: pulumi.Int(30),
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
///   file_system_id = exampleAwsS3filesFileSystem.id
///   import_data_rules {
///     prefix         = ""
///     size_less_than = 52673613135872
///     trigger        = "ON_FILE_ACCESS"
///   }
///   expiration_data_rules {
///     days_after_last_access = 30
///   }
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
/// import com.pulumi.aws.s3.inputs.FilesSynchronizationConfigurationImportDataRuleArgs;
/// import com.pulumi.aws.s3.inputs.FilesSynchronizationConfigurationExpirationDataRuleArgs;
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
///             .fileSystemId(exampleAwsS3filesFileSystem.id())
///             .importDataRules(FilesSynchronizationConfigurationImportDataRuleArgs.builder()
///                 .prefix("")
///                 .sizeLessThan(52673613135872)
///                 .trigger("ON_FILE_ACCESS")
///                 .build())
///             .expirationDataRules(FilesSynchronizationConfigurationExpirationDataRuleArgs.builder()
///                 .daysAfterLastAccess(30)
///                 .build())
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
///       fileSystemId: ${exampleAwsS3filesFileSystem.id}
///       importDataRules:
///         - prefix: ""
///           sizeLessThan: 5.2673613135872e+13
///           trigger: ON_FILE_ACCESS
///       expirationDataRules:
///         - daysAfterLastAccess: 30
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
  late final pulumi.Output<List<Map<String, dynamic>>?> expirationDataRules;
  /// File system ID. Changing this value forces replacement.
  late final pulumi.Output<String> fileSystemId;
  /// One or more import data rules. See `importDataRule` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<Map<String, dynamic>>?> importDataRules;
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    expirationDataRules = registerOutput<List<Map<String, dynamic>>?>('expirationDataRules');
    fileSystemId = registerOutput<String>('fileSystemId');
    importDataRules = registerOutput<List<Map<String, dynamic>>?>('importDataRules');
    latestVersionNumber = registerOutput<int>('latestVersionNumber');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [FilesSynchronizationConfiguration] resource's state with the given [name] and [id].
  static FilesSynchronizationConfiguration get(
    String name,
    pulumi.Input<String> id, {
    FilesSynchronizationConfigurationState? state,
  }) {
    return FilesSynchronizationConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    expirationDataRules = registerOutput<List<Map<String, dynamic>>?>('expirationDataRules');
    fileSystemId = registerOutput<String>('fileSystemId');
    importDataRules = registerOutput<List<Map<String, dynamic>>?>('importDataRules');
    latestVersionNumber = registerOutput<int>('latestVersionNumber');
    region = registerOutput<String>('region');
  }
}
