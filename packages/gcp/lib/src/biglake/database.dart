import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_hive_options.dart';

/// Databases are containers of tables.
///
///
/// To get more information about Database, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/biglake/rest/v1/projects.locations.catalogs.databases)
/// * How-to Guides
/// * [Manage open source metadata with BigLake Metastore](https://cloud.google.com/bigquery/docs/manage-open-source-metadata#create_databases)
///
/// ## Example Usage
///
/// ### Biglake Database
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const catalog = new gcp.biglake.Catalog("catalog", {
///     name: "my_catalog",
///     location: "US",
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "my_bucket",
///     location: "US",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const metadataFolder = new gcp.storage.BucketObject("metadata_folder", {
///     name: "metadata/",
///     content: " ",
///     bucket: bucket.name,
/// });
/// const database = new gcp.biglake.Database("database", {
///     name: "my_database",
///     catalog: catalog.id,
///     type: "HIVE",
///     hiveOptions: {
///         locationUri: pulumi.interpolate`gs://${bucket.name}/${metadataFolder.name}`,
///         parameters: {
///             owner: "John Doe",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// catalog = gcp.biglake.Catalog("catalog",
///     name="my_catalog",
///     location="US")
/// bucket = gcp.storage.Bucket("bucket",
///     name="my_bucket",
///     location="US",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// metadata_folder = gcp.storage.BucketObject("metadata_folder",
///     name="metadata/",
///     content=" ",
///     bucket=bucket.name)
/// database = gcp.biglake.Database("database",
///     name="my_database",
///     catalog=catalog.id,
///     type="HIVE",
///     hive_options={
///         "location_uri": pulumi.Output.all(
///             bucketName=bucket.name,
///             metadataFolderName=metadata_folder.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['metadataFolderName']}")
/// ,
///         "parameters": {
///             "owner": "John Doe",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var catalog = new Gcp.BigLake.Catalog("catalog", new()
///     {
///         Name = "my_catalog",
///         Location = "US",
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "my_bucket",
///         Location = "US",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var metadataFolder = new Gcp.Storage.BucketObject("metadata_folder", new()
///     {
///         Name = "metadata/",
///         Content = " ",
///         Bucket = bucket.Name,
///     });
///
///     var database = new Gcp.BigLake.Database("database", new()
///     {
///         Name = "my_database",
///         Catalog = catalog.Id,
///         Type = "HIVE",
///         HiveOptions = new Gcp.BigLake.Inputs.DatabaseHiveOptionsArgs
///         {
///             LocationUri = Output.Tuple(bucket.Name, metadataFolder.Name).Apply(values =>
///             {
///                 var bucketName = values.Item1;
///                 var metadataFolderName = values.Item2;
///                 return $"gs://{bucketName}/{metadataFolderName}";
///             }),
///             Parameters =
///             {
///                 { "owner", "John Doe" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		catalog, err := biglake.NewCatalog(ctx, "catalog", &biglake.CatalogArgs{
/// 			Name:     pulumi.String("my_catalog"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my_bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		metadataFolder, err := storage.NewBucketObject(ctx, "metadata_folder", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("metadata/"),
/// 			Content: pulumi.String(" "),
/// 			Bucket:  bucket.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewDatabase(ctx, "database", &biglake.DatabaseArgs{
/// 			Name:    pulumi.String("my_database"),
/// 			Catalog: catalog.ID(),
/// 			Type:    pulumi.String("HIVE"),
/// 			HiveOptions: &biglake.DatabaseHiveOptionsArgs{
/// 				LocationUri: pulumi.All(bucket.Name, metadataFolder.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					bucketName := _args[0].(string)
/// 					metadataFolderName := _args[1].(string)
/// 					return fmt.Sprintf("gs://%v/%v", bucketName, metadataFolderName), nil
/// 				}).(pulumi.StringOutput),
/// 				Parameters: pulumi.StringMap{
/// 					"owner": pulumi.String("John Doe"),
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
/// import com.pulumi.gcp.biglake.Catalog;
/// import com.pulumi.gcp.biglake.CatalogArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.biglake.Database;
/// import com.pulumi.gcp.biglake.DatabaseArgs;
/// import com.pulumi.gcp.biglake.inputs.DatabaseHiveOptionsArgs;
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
///         var catalog = new Catalog("catalog", CatalogArgs.builder()
///             .name("my_catalog")
///             .location("US")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("my_bucket")
///             .location("US")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var metadataFolder = new BucketObject("metadataFolder", BucketObjectArgs.builder()
///             .name("metadata/")
///             .content(" ")
///             .bucket(bucket.name())
///             .build());
///
///         var database = new Database("database", DatabaseArgs.builder()
///             .name("my_database")
///             .catalog(catalog.id())
///             .type("HIVE")
///             .hiveOptions(DatabaseHiveOptionsArgs.builder()
///                 .locationUri(Output.tuple(bucket.name(), metadataFolder.name()).applyValue(values -> {
///                     var bucketName = values.t1;
///                     var metadataFolderName = values.t2;
///                     return String.format("gs://%s/%s", bucketName,metadataFolderName);
///                 }))
///                 .parameters(Map.of("owner", "John Doe"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   catalog:
///     type: gcp:biglake:Catalog
///     properties:
///       name: my_catalog
///       location: US
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: my_bucket
///       location: US
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   metadataFolder:
///     type: gcp:storage:BucketObject
///     name: metadata_folder
///     properties:
///       name: metadata/
///       content: ' '
///       bucket: ${bucket.name}
///   database:
///     type: gcp:biglake:Database
///     properties:
///       name: my_database
///       catalog: ${catalog.id}
///       type: HIVE
///       hiveOptions:
///         locationUri: gs://${bucket.name}/${metadataFolder.name}
///         parameters:
///           owner: John Doe
/// ```
///
///
/// ## Import
///
/// Database can be imported using any of these accepted formats:
///
/// * `{{catalog}}/databases/{{name}}`
///
/// When using the `pulumi import` command, Database can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/database:Database default {{catalog}}/databases/{{name}}
/// ```
class Database extends pulumi.CustomResource {
  /// The parent catalog.
  late final pulumi.Output<String> catalog;
  /// Output only. The creation time of the database. A timestamp in RFC3339
  /// UTC "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Output only. The deletion time of the database. Only set after the
  /// database is deleted. A timestamp in RFC3339 UTC "Zulu" format, with
  /// nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> deleteTime;
  /// Output only. The time when this database is considered expired. Only set
  /// after the database is deleted. A timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> expireTime;
  /// Options of a Hive database.
  /// Structure is documented below.
  late final pulumi.Output<DatabaseHiveOptions> hiveOptions;
  /// The name of the database.
  late final pulumi.Output<String> name;
  /// The database type.
  late final pulumi.Output<String> type;
  /// Output only. The last modification time of the database. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_biglake_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalog = registerOutput<String>('catalog');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.expireTime = registerOutput<String>('expireTime');
    this.hiveOptions = registerOutput<DatabaseHiveOptions>('hiveOptions');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
