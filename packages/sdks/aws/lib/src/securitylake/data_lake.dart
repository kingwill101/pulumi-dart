import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_args.dart';
import 'data_lake_configuration.dart';
import 'data_lake_state.dart';
import 'data_lake_timeouts.dart';

/// Resource for managing an AWS Security Lake Data Lake.
///
/// &gt; **NOTE:** The underlying `aws.securitylake.DataLake` must be configured before creating other Security Lake resources. Use a `dependsOn` statement.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securitylake.DataLake("example", {
///     configuration: {
///         lifecycleConfiguration: {
///             expiration: {
///                 days: 300,
///             },
///             transitions: [
///                 {
///                     days: 31,
///                     storageClass: "STANDARD_IA",
///                 },
///                 {
///                     days: 80,
///                     storageClass: "ONEZONE_IA",
///                 },
///             ],
///         },
///         encryptionConfigurations: [{
///             kmsKeyId: "S3_MANAGED_KEY",
///         }],
///         region: "eu-west-1",
///     },
///     metaStoreManagerRoleArn: metaStoreManager.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.DataLake("example",
///     configuration={
///         "lifecycle_configuration": {
///             "expiration": {
///                 "days": 300,
///             },
///             "transitions": [
///                 {
///                     "days": 31,
///                     "storage_class": "STANDARD_IA",
///                 },
///                 {
///                     "days": 80,
///                     "storage_class": "ONEZONE_IA",
///                 },
///             ],
///         },
///         "encryption_configurations": [{
///             "kms_key_id": "S3_MANAGED_KEY",
///         }],
///         "region": "eu-west-1",
///     },
///     meta_store_manager_role_arn=meta_store_manager["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityLake.DataLake("example", new()
///     {
///         Configuration = new Aws.SecurityLake.Inputs.DataLakeConfigurationArgs
///         {
///             LifecycleConfiguration = new Aws.SecurityLake.Inputs.DataLakeConfigurationLifecycleConfigurationArgs
///             {
///                 Expiration = new Aws.SecurityLake.Inputs.DataLakeConfigurationLifecycleConfigurationExpirationArgs
///                 {
///                     Days = 300,
///                 },
///                 Transitions = new[]
///                 {
///                     new Aws.SecurityLake.Inputs.DataLakeConfigurationLifecycleConfigurationTransitionArgs
///                     {
///                         Days = 31,
///                         StorageClass = "STANDARD_IA",
///                     },
///                     new Aws.SecurityLake.Inputs.DataLakeConfigurationLifecycleConfigurationTransitionArgs
///                     {
///                         Days = 80,
///                         StorageClass = "ONEZONE_IA",
///                     },
///                 },
///             },
///             EncryptionConfigurations = new[]
///             {
///                 new Aws.SecurityLake.Inputs.DataLakeConfigurationEncryptionConfigurationArgs
///                 {
///                     KmsKeyId = "S3_MANAGED_KEY",
///                 },
///             },
///             Region = "eu-west-1",
///         },
///         MetaStoreManagerRoleArn = metaStoreManager.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securitylake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitylake.NewDataLake(ctx, "example", &securitylake.DataLakeArgs{
/// 			Configuration: &securitylake.DataLakeConfigurationArgs{
/// 				LifecycleConfiguration: &securitylake.DataLakeConfigurationLifecycleConfigurationArgs{
/// 					Expiration: &securitylake.DataLakeConfigurationLifecycleConfigurationExpirationArgs{
/// 						Days: pulumi.Int(300),
/// 					},
/// 					Transitions: securitylake.DataLakeConfigurationLifecycleConfigurationTransitionArray{
/// 						&securitylake.DataLakeConfigurationLifecycleConfigurationTransitionArgs{
/// 							Days:         pulumi.Int(31),
/// 							StorageClass: pulumi.String("STANDARD_IA"),
/// 						},
/// 						&securitylake.DataLakeConfigurationLifecycleConfigurationTransitionArgs{
/// 							Days:         pulumi.Int(80),
/// 							StorageClass: pulumi.String("ONEZONE_IA"),
/// 						},
/// 					},
/// 				},
/// 				EncryptionConfigurations: securitylake.DataLakeConfigurationEncryptionConfigurationArray{
/// 					&securitylake.DataLakeConfigurationEncryptionConfigurationArgs{
/// 						KmsKeyId: pulumi.String("S3_MANAGED_KEY"),
/// 					},
/// 				},
/// 				Region: pulumi.String("eu-west-1"),
/// 			},
/// 			MetaStoreManagerRoleArn: pulumi.Any(metaStoreManager.Arn),
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
/// resource "aws_securitylake_datalake" "example" {
///   configuration = {
///     lifecycle_configuration = {
///       expiration = {
///         days = 300
///       }
///       transitions = [{
///         "days"         = 31
///         "storageClass" = "STANDARD_IA"
///         }, {
///         "days"         = 80
///         "storageClass" = "ONEZONE_IA"
///       }]
///     }
///     encryption_configurations = [{
///       "kmsKeyId" = "S3_MANAGED_KEY"
///     }]
///     region = "eu-west-1"
///   }
///   meta_store_manager_role_arn = metaStoreManager.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securitylake.DataLake;
/// import com.pulumi.aws.securitylake.DataLakeArgs;
/// import com.pulumi.aws.securitylake.inputs.DataLakeConfigurationArgs;
/// import com.pulumi.aws.securitylake.inputs.DataLakeConfigurationLifecycleConfigurationArgs;
/// import com.pulumi.aws.securitylake.inputs.DataLakeConfigurationLifecycleConfigurationExpirationArgs;
/// import com.pulumi.aws.securitylake.inputs.DataLakeConfigurationLifecycleConfigurationTransitionArgs;
/// import com.pulumi.aws.securitylake.inputs.DataLakeConfigurationEncryptionConfigurationArgs;
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
///         var example = new DataLake("example", DataLakeArgs.builder()
///             .configuration(DataLakeConfigurationArgs.builder()
///                 .lifecycleConfiguration(DataLakeConfigurationLifecycleConfigurationArgs.builder()
///                     .expiration(DataLakeConfigurationLifecycleConfigurationExpirationArgs.builder()
///                         .days(300)
///                         .build())
///                     .transitions(
///                         DataLakeConfigurationLifecycleConfigurationTransitionArgs.builder()
///                             .days(31)
///                             .storageClass("STANDARD_IA")
///                             .build(),
///                         DataLakeConfigurationLifecycleConfigurationTransitionArgs.builder()
///                             .days(80)
///                             .storageClass("ONEZONE_IA")
///                             .build())
///                     .build())
///                 .encryptionConfigurations(DataLakeConfigurationEncryptionConfigurationArgs.builder()
///                     .kmsKeyId("S3_MANAGED_KEY")
///                     .build())
///                 .region("eu-west-1")
///                 .build())
///             .metaStoreManagerRoleArn(metaStoreManager.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securitylake:DataLake
///     properties:
///       configuration:
///         lifecycleConfiguration:
///           expiration:
///             days: 300
///           transitions:
///             - days: 31
///               storageClass: STANDARD_IA
///             - days: 80
///               storageClass: ONEZONE_IA
///         encryptionConfigurations:
///           - kmsKeyId: S3_MANAGED_KEY
///         region: eu-west-1
///       metaStoreManagerRoleArn: ${metaStoreManager.arn}
/// ```
///
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securitylake.DataLake("example", {
///     configuration: {
///         encryptionConfigurations: [{
///             kmsKeyId: "S3_MANAGED_KEY",
///         }],
///         region: "eu-west-1",
///     },
///     metaStoreManagerRoleArn: metaStoreManager.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.DataLake("example",
///     configuration={
///         "encryption_configurations": [{
///             "kms_key_id": "S3_MANAGED_KEY",
///         }],
///         "region": "eu-west-1",
///     },
///     meta_store_manager_role_arn=meta_store_manager["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityLake.DataLake("example", new()
///     {
///         Configuration = new Aws.SecurityLake.Inputs.DataLakeConfigurationArgs
///         {
///             EncryptionConfigurations = new[]
///             {
///                 new Aws.SecurityLake.Inputs.DataLakeConfigurationEncryptionConfigurationArgs
///                 {
///                     KmsKeyId = "S3_MANAGED_KEY",
///                 },
///             },
///             Region = "eu-west-1",
///         },
///         MetaStoreManagerRoleArn = metaStoreManager.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securitylake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitylake.NewDataLake(ctx, "example", &securitylake.DataLakeArgs{
/// 			Configuration: &securitylake.DataLakeConfigurationArgs{
/// 				EncryptionConfigurations: securitylake.DataLakeConfigurationEncryptionConfigurationArray{
/// 					&securitylake.DataLakeConfigurationEncryptionConfigurationArgs{
/// 						KmsKeyId: pulumi.String("S3_MANAGED_KEY"),
/// 					},
/// 				},
/// 				Region: pulumi.String("eu-west-1"),
/// 			},
/// 			MetaStoreManagerRoleArn: pulumi.Any(metaStoreManager.Arn),
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
/// resource "aws_securitylake_datalake" "example" {
///   configuration = {
///     encryption_configurations = [{
///       "kmsKeyId" = "S3_MANAGED_KEY"
///     }]
///     region = "eu-west-1"
///   }
///   meta_store_manager_role_arn = metaStoreManager.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securitylake.DataLake;
/// import com.pulumi.aws.securitylake.DataLakeArgs;
/// import com.pulumi.aws.securitylake.inputs.DataLakeConfigurationArgs;
/// import com.pulumi.aws.securitylake.inputs.DataLakeConfigurationEncryptionConfigurationArgs;
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
///         var example = new DataLake("example", DataLakeArgs.builder()
///             .configuration(DataLakeConfigurationArgs.builder()
///                 .encryptionConfigurations(DataLakeConfigurationEncryptionConfigurationArgs.builder()
///                     .kmsKeyId("S3_MANAGED_KEY")
///                     .build())
///                 .region("eu-west-1")
///                 .build())
///             .metaStoreManagerRoleArn(metaStoreManager.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securitylake:DataLake
///     properties:
///       configuration:
///         encryptionConfigurations:
///           - kmsKeyId: S3_MANAGED_KEY
///         region: eu-west-1
///       metaStoreManagerRoleArn: ${metaStoreManager.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Security Lake data lake.
///
///
/// Using `pulumi import`, import Security Hub standards subscriptions using the standards subscription ARN. For example:
///
/// ```sh
/// $ pulumi import aws:securitylake/dataLake:DataLake example arn:aws:securitylake:eu-west-1:123456789012:data-lake/default
/// ```
class DataLake extends pulumi.CustomResource {
  /// ARN of the Data Lake.
  late final pulumi.Output<String> arn;
  /// Specify the Region or Regions that will contribute data to the rollup region.
  late final pulumi.Output<DataLakeConfiguration> configuration;
  /// ARN used to create and update the AWS Glue table. This table contains partitions generated by the ingestion and normalization of AWS log sources and custom sources.
  late final pulumi.Output<String> metaStoreManagerRoleArn;
  /// The AWS Regions where Security Lake is automatically enabled.
  late final pulumi.Output<String> region;
  /// The ARN for the Amazon Security Lake Amazon S3 bucket.
  late final pulumi.Output<String> s3BucketArn;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<DataLakeTimeouts?> timeouts;

  /// Creates a new [DataLake].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataLake]. {@macro pulumi_securitylake_data_lake_data_lake_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataLake(
    String name, {
    DataLakeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/dataLake:DataLake',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<DataLakeConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataLakeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metaStoreManagerRoleArn = registerOutput<String>('metaStoreManagerRoleArn');
    region = registerOutput<String>('region');
    s3BucketArn = registerOutput<String>('s3BucketArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<DataLakeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataLakeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DataLake] resource's state with the given [name] and [id].
  static DataLake get(
    String name,
    pulumi.Input<String> id, {
    DataLakeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataLake._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataLake._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/dataLake:DataLake',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<DataLakeConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataLakeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metaStoreManagerRoleArn = registerOutput<String>('metaStoreManagerRoleArn');
    region = registerOutput<String>('region');
    s3BucketArn = registerOutput<String>('s3BucketArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<DataLakeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataLakeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DataLake] resource.
  DataLake.reference(String urn)
    : super(
        'aws:securitylake/dataLake:DataLake',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<DataLakeConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataLakeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metaStoreManagerRoleArn = registerOutput<String>('metaStoreManagerRoleArn');
    region = registerOutput<String>('region');
    s3BucketArn = registerOutput<String>('s3BucketArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<DataLakeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataLakeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
