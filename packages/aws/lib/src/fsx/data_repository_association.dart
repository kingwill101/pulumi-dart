import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_repository_association_args.dart';
import 'data_repository_association_s3.dart';

/// Manages a FSx for Lustre Data Repository Association. See [Linking your file system to an S3 bucket](https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html) for more information.
///
/// > **NOTE:** Data Repository Associations are only compatible with AWS FSx for Lustre File Systems and `PERSISTENT_2` deployment type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "my-bucket"});
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
///     bucket: example.id,
///     acl: "private",
/// });
/// const exampleLustreFileSystem = new aws.fsx.LustreFileSystem("example", {
///     storageCapacity: 1200,
///     subnetIds: exampleAwsSubnet.id,
///     deploymentType: "PERSISTENT_2",
///     perUnitStorageThroughput: 125,
/// });
/// const exampleDataRepositoryAssociation = new aws.fsx.DataRepositoryAssociation("example", {
///     fileSystemId: exampleLustreFileSystem.id,
///     dataRepositoryPath: pulumi.interpolate`s3://${example.id}`,
///     fileSystemPath: "/my-bucket",
///     s3: {
///         autoExportPolicy: {
///             events: [
///                 "NEW",
///                 "CHANGED",
///                 "DELETED",
///             ],
///         },
///         autoImportPolicy: {
///             events: [
///                 "NEW",
///                 "CHANGED",
///                 "DELETED",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="my-bucket")
/// example_bucket_acl = aws.s3.BucketAcl("example",
///     bucket=example.id,
///     acl="private")
/// example_lustre_file_system = aws.fsx.LustreFileSystem("example",
///     storage_capacity=1200,
///     subnet_ids=example_aws_subnet["id"],
///     deployment_type="PERSISTENT_2",
///     per_unit_storage_throughput=125)
/// example_data_repository_association = aws.fsx.DataRepositoryAssociation("example",
///     file_system_id=example_lustre_file_system.id,
///     data_repository_path=example.id.apply(lambda id: f"s3://{id}"),
///     file_system_path="/my-bucket",
///     s3={
///         "auto_export_policy": {
///             "events": [
///                 "NEW",
///                 "CHANGED",
///                 "DELETED",
///             ],
///         },
///         "auto_import_policy": {
///             "events": [
///                 "NEW",
///                 "CHANGED",
///                 "DELETED",
///             ],
///         },
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
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "my-bucket",
///     });
///
///     var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = example.Id,
///         Acl = "private",
///     });
///
///     var exampleLustreFileSystem = new Aws.Fsx.LustreFileSystem("example", new()
///     {
///         StorageCapacity = 1200,
///         SubnetIds = exampleAwsSubnet.Id,
///         DeploymentType = "PERSISTENT_2",
///         PerUnitStorageThroughput = 125,
///     });
///
///     var exampleDataRepositoryAssociation = new Aws.Fsx.DataRepositoryAssociation("example", new()
///     {
///         FileSystemId = exampleLustreFileSystem.Id,
///         DataRepositoryPath = example.Id.Apply(id => $"s3://{id}"),
///         FileSystemPath = "/my-bucket",
///         S3 = new Aws.Fsx.Inputs.DataRepositoryAssociationS3Args
///         {
///             AutoExportPolicy = new Aws.Fsx.Inputs.DataRepositoryAssociationS3AutoExportPolicyArgs
///             {
///                 Events = new[]
///                 {
///                     "NEW",
///                     "CHANGED",
///                     "DELETED",
///                 },
///             },
///             AutoImportPolicy = new Aws.Fsx.Inputs.DataRepositoryAssociationS3AutoImportPolicyArgs
///             {
///                 Events = new[]
///                 {
///                     "NEW",
///                     "CHANGED",
///                     "DELETED",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: example.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLustreFileSystem, err := fsx.NewLustreFileSystem(ctx, "example", &fsx.LustreFileSystemArgs{
/// 			StorageCapacity:          pulumi.Int(1200),
/// 			SubnetIds:                pulumi.Any(exampleAwsSubnet.Id),
/// 			DeploymentType:           pulumi.String("PERSISTENT_2"),
/// 			PerUnitStorageThroughput: pulumi.Int(125),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fsx.NewDataRepositoryAssociation(ctx, "example", &fsx.DataRepositoryAssociationArgs{
/// 			FileSystemId: exampleLustreFileSystem.ID(),
/// 			DataRepositoryPath: example.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("s3://%v", id), nil
/// 			}).(pulumi.StringOutput),
/// 			FileSystemPath: pulumi.String("/my-bucket"),
/// 			S3: &fsx.DataRepositoryAssociationS3Args{
/// 				AutoExportPolicy: &fsx.DataRepositoryAssociationS3AutoExportPolicyArgs{
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("NEW"),
/// 						pulumi.String("CHANGED"),
/// 						pulumi.String("DELETED"),
/// 					},
/// 				},
/// 				AutoImportPolicy: &fsx.DataRepositoryAssociationS3AutoImportPolicyArgs{
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("NEW"),
/// 						pulumi.String("CHANGED"),
/// 						pulumi.String("DELETED"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.fsx.LustreFileSystem;
/// import com.pulumi.aws.fsx.LustreFileSystemArgs;
/// import com.pulumi.aws.fsx.DataRepositoryAssociation;
/// import com.pulumi.aws.fsx.DataRepositoryAssociationArgs;
/// import com.pulumi.aws.fsx.inputs.DataRepositoryAssociationS3Args;
/// import com.pulumi.aws.fsx.inputs.DataRepositoryAssociationS3AutoExportPolicyArgs;
/// import com.pulumi.aws.fsx.inputs.DataRepositoryAssociationS3AutoImportPolicyArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("my-bucket")
///             .build());
///
///         var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
///             .bucket(example.id())
///             .acl("private")
///             .build());
///
///         var exampleLustreFileSystem = new LustreFileSystem("exampleLustreFileSystem", LustreFileSystemArgs.builder()
///             .storageCapacity(1200)
///             .subnetIds(exampleAwsSubnet.id())
///             .deploymentType("PERSISTENT_2")
///             .perUnitStorageThroughput(125)
///             .build());
///
///         var exampleDataRepositoryAssociation = new DataRepositoryAssociation("exampleDataRepositoryAssociation", DataRepositoryAssociationArgs.builder()
///             .fileSystemId(exampleLustreFileSystem.id())
///             .dataRepositoryPath(example.id().applyValue(_id -> String.format("s3://%s", _id)))
///             .fileSystemPath("/my-bucket")
///             .s3(DataRepositoryAssociationS3Args.builder()
///                 .autoExportPolicy(DataRepositoryAssociationS3AutoExportPolicyArgs.builder()
///                     .events(
///                         "NEW",
///                         "CHANGED",
///                         "DELETED")
///                     .build())
///                 .autoImportPolicy(DataRepositoryAssociationS3AutoImportPolicyArgs.builder()
///                     .events(
///                         "NEW",
///                         "CHANGED",
///                         "DELETED")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-bucket
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       bucket: ${example.id}
///       acl: private
///   exampleLustreFileSystem:
///     type: aws:fsx:LustreFileSystem
///     name: example
///     properties:
///       storageCapacity: 1200
///       subnetIds: ${exampleAwsSubnet.id}
///       deploymentType: PERSISTENT_2
///       perUnitStorageThroughput: 125
///   exampleDataRepositoryAssociation:
///     type: aws:fsx:DataRepositoryAssociation
///     name: example
///     properties:
///       fileSystemId: ${exampleLustreFileSystem.id}
///       dataRepositoryPath: s3://${example.id}
///       fileSystemPath: /my-bucket
///       s3:
///         autoExportPolicy:
///           events:
///             - NEW
///             - CHANGED
///             - DELETED
///         autoImportPolicy:
///           events:
///             - NEW
///             - CHANGED
///             - DELETED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx Data Repository Associations using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/dataRepositoryAssociation:DataRepositoryAssociation example dra-0b1cfaeca11088b10
/// ```
class DataRepositoryAssociation extends pulumi.CustomResource {
  /// Amazon Resource Name of the file system.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String> associationId;

  /// Set to true to run an import data repository task to import metadata from the data repository to the file system after the data repository association is created. Defaults to `false`.
  late final pulumi.Output<bool?> batchImportMetaDataOnCreate;

  /// The path to the Amazon S3 data repository that will be linked to the file system. The path must be an S3 bucket s3://myBucket/myPrefix/. This path specifies where in the S3 data repository files will be imported from or exported to. The same S3 bucket cannot be linked more than once to the same file system.
  late final pulumi.Output<String> dataRepositoryPath;

  /// Set to true to delete files from the file system upon deleting this data repository association. Defaults to `false`.
  late final pulumi.Output<bool?> deleteDataInFilesystem;

  /// The ID of the Amazon FSx file system to on which to create a data repository association.
  late final pulumi.Output<String> fileSystemId;

  /// A path on the file system that points to a high-level directory (such as `/ns1/`) or subdirectory (such as `/ns1/subdir/`) that will be mapped 1-1 with `data_repository_path`. The leading forward slash in the name is required. Two data repository associations cannot have overlapping file system paths. For example, if a data repository is associated with file system path `/ns1/`, then you cannot link another data repository with file system path `/ns1/ns2`. This path specifies where in your file system files will be exported from or imported to. This file system directory can be linked to only one Amazon S3 bucket, and no other S3 bucket can be linked to the directory.
  late final pulumi.Output<String> fileSystemPath;

  /// For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. The maximum number of disks that a single file can be striped across is limited by the total number of disks that make up the file system.
  late final pulumi.Output<int> importedFileChunkSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// See the `s3` configuration block. Max of 1.
  /// The configuration for an Amazon S3 data repository linked to an Amazon FSx Lustre file system with a data repository association. The configuration defines which file events (new, changed, or deleted files or directories) are automatically imported from the linked data repository to the file system or automatically exported from the file system to the data repository.
  late final pulumi.Output<DataRepositoryAssociationS3> s3;

  /// A map of tags to assign to the data repository association. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DataRepositoryAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataRepositoryAssociation]. {@macro pulumi_fsx_data_repository_association_data_repository_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataRepositoryAssociation(
    String name, {
    DataRepositoryAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:fsx/dataRepositoryAssociation:DataRepositoryAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.associationId = registerOutput<String>('associationId');
    this.batchImportMetaDataOnCreate = registerOutput<bool?>(
      'batchImportMetaDataOnCreate',
    );
    this.dataRepositoryPath = registerOutput<String>('dataRepositoryPath');
    this.deleteDataInFilesystem = registerOutput<bool?>(
      'deleteDataInFilesystem',
    );
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.fileSystemPath = registerOutput<String>('fileSystemPath');
    this.importedFileChunkSize = registerOutput<int>('importedFileChunkSize');
    this.region = registerOutput<String>('region');
    this.s3 = registerOutput<DataRepositoryAssociationS3>('s3');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
