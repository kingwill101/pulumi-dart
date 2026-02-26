import 'package:pulumi/pulumi.dart';
import 'folder_args2.dart';

/// A Google Cloud Storage Folder.
///
/// The Folder resource represents a folder in a Cloud Storage bucket with hierarchical namespace enabled
///
///
/// To get more information about Folder, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/folders)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/folders-overview)
///
/// ## Example Usage
///
/// ### Storage Folder Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
/// name: "my-bucket",
/// location: "EU",
/// uniformBucketLevelAccess: true,
/// hierarchicalNamespace: {
/// enabled: true,
/// },
/// });
/// const folder = new gcp.storage.Folder("folder", {
/// bucket: bucket.name,
/// name: "parent-folder/",
/// });
/// const subfolder = new gcp.storage.Folder("subfolder", {
/// bucket: bucket.name,
/// name: pulumi.interpolate`${folder.name}subfolder/`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
/// name="my-bucket",
/// location="EU",
/// uniform_bucket_level_access=True,
/// hierarchical_namespace={
/// "enabled": True,
/// })
/// folder = gcp.storage.Folder("folder",
/// bucket=bucket.name,
/// name="parent-folder/")
/// subfolder = gcp.storage.Folder("subfolder",
/// bucket=bucket.name,
/// name=folder.name.apply(lambda name: f"{name}subfolder/"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bucket = new Gcp.Storage.Bucket("bucket", new()
/// {
/// Name = "my-bucket",
/// Location = "EU",
/// UniformBucketLevelAccess = true,
/// HierarchicalNamespace = new Gcp.Storage.Inputs.BucketHierarchicalNamespaceArgs
/// {
/// Enabled = true,
/// },
/// });
///
/// var folder = new Gcp.Storage.Folder("folder", new()
/// {
/// Bucket = bucket.Name,
/// Name = "parent-folder/",
/// });
///
/// var subfolder = new Gcp.Storage.Folder("subfolder", new()
/// {
/// Bucket = bucket.Name,
/// Name = folder.Name.Apply(name => $"{name}subfolder/"),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// Name:                     pulumi.String("my-bucket"),
/// Location:                 pulumi.String("EU"),
/// UniformBucketLevelAccess: pulumi.Bool(true),
/// HierarchicalNamespace: &storage.BucketHierarchicalNamespaceArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// folder, err := storage.NewFolder(ctx, "folder", &storage.FolderArgs{
/// Bucket: bucket.Name,
/// Name:   pulumi.String("parent-folder/"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = storage.NewFolder(ctx, "subfolder", &storage.FolderArgs{
/// Bucket: bucket.Name,
/// Name: folder.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("%vsubfolder/", name), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.inputs.BucketHierarchicalNamespaceArgs;
/// import com.pulumi.gcp.storage.Folder;
/// import com.pulumi.gcp.storage.FolderArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .name("my-bucket")
/// .location("EU")
/// .uniformBucketLevelAccess(true)
/// .hierarchicalNamespace(BucketHierarchicalNamespaceArgs.builder()
/// .enabled(true)
/// .build())
/// .build());
///
/// var folder = new Folder("folder", FolderArgs.builder()
/// .bucket(bucket.name())
/// .name("parent-folder/")
/// .build());
///
/// var subfolder = new Folder("subfolder", FolderArgs.builder()
/// .bucket(bucket.name())
/// .name(folder.name().applyValue(_name -> String.format("%ssubfolder/", _name)))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: my-bucket
/// location: EU
/// uniformBucketLevelAccess: true
/// hierarchicalNamespace:
/// enabled: true
/// folder:
/// type: gcp:storage:Folder
/// properties:
/// bucket: ${bucket.name}
/// name: parent-folder/
/// subfolder:
/// type: gcp:storage:Folder
/// properties:
/// bucket: ${bucket.name}
/// name: ${folder.name}subfolder/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Folder can be imported using any of these accepted formats:
///
/// * `{{bucket}}/folders/{{name}}`
///
/// * `{{bucket}}/{{name}}`
///
/// When using the `pulumi import` command, Folder can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/folder:Folder default {{bucket}}/folders/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/folder:Folder default {{bucket}}/{{name}}
/// ```
class Folder2 extends CustomResource {
  /// The name of the bucket that contains the folder.
  late final Output<String> bucket;

  /// The timestamp at which this folder was created.
  late final Output<String> createTime;

  /// If set to true, items within folder if any will be force destroyed.
  late final Output<bool?> forceDestroy;

  /// The metadata generation of the folder.
  late final Output<String> metageneration;

  /// The name of the folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`, `example@#/`, `a-b/d-f/`.
  late final Output<String> name;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The timestamp at which this folder was most recently updated.
  late final Output<String> updateTime;

  Folder2(
    String name, {
    FolderArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/folder:Folder',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.metageneration = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
