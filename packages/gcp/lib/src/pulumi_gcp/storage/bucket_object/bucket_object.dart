import 'package:pulumi/pulumi.dart';
import '../bucket_object_contexts/bucket_object_contexts.dart';
import '../bucket_object_customer_encryption/bucket_object_customer_encryption.dart';
import '../bucket_object_retention/bucket_object_retention.dart';
import 'bucket_object_args.dart';

/// Creates a new object inside an existing bucket in Google cloud storage service (GCS).
/// [ACLs](https://cloud.google.com/storage/docs/access-control/lists) can be applied using the <span pulumi-lang-nodejs="`gcp.storage.ObjectACL`" pulumi-lang-dotnet="`gcp.storage.ObjectACL`" pulumi-lang-go="`storage.ObjectACL`" pulumi-lang-python="`storage.ObjectACL`" pulumi-lang-yaml="`gcp.storage.ObjectACL`" pulumi-lang-java="`gcp.storage.ObjectACL`">`gcp.storage.ObjectACL`</span> resource.
/// For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/objects).
///
/// A datasource can be used to retrieve the data of the stored object:
///
/// * <span pulumi-lang-nodejs="`gcp.storage.getBucketObjectContent`" pulumi-lang-dotnet="`gcp.storage.getBucketObjectContent`" pulumi-lang-go="`storage.getBucketObjectContent`" pulumi-lang-python="`storage_get_bucket_object_content`" pulumi-lang-yaml="`gcp.storage.getBucketObjectContent`" pulumi-lang-java="`gcp.storage.getBucketObjectContent`">`gcp.storage.getBucketObjectContent`</span>: Retrieves the content within a specified bucket object in Google Cloud Storage Service (GCS)
///
///
/// ## Example Usage
///
/// Example creating a public object in an existing `image-store` bucket.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const picture = new gcp.storage.BucketObject("picture", {
/// name: "butterfly01",
/// source: new pulumi.asset.FileAsset("/images/nature/garden-tiger-moth.jpg"),
/// bucket: "image-store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// picture = gcp.storage.BucketObject("picture",
/// name="butterfly01",
/// source=pulumi.FileAsset("/images/nature/garden-tiger-moth.jpg"),
/// bucket="image-store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var picture = new Gcp.Storage.BucketObject("picture", new()
/// {
/// Name = "butterfly01",
/// Source = new FileAsset("/images/nature/garden-tiger-moth.jpg"),
/// Bucket = "image-store",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewBucketObject(ctx, "picture", &storage.BucketObjectArgs{
/// Name:   pulumi.String("butterfly01"),
/// Source: pulumi.NewFileAsset("/images/nature/garden-tiger-moth.jpg"),
/// Bucket: pulumi.String("image-store"),
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
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.asset.FileAsset;
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
/// var picture = new BucketObject("picture", BucketObjectArgs.builder()
/// .name("butterfly01")
/// .source(new FileAsset("/images/nature/garden-tiger-moth.jpg"))
/// .bucket("image-store")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// picture:
/// type: gcp:storage:BucketObject
/// properties:
/// name: butterfly01
/// source:
/// fn::FileAsset: /images/nature/garden-tiger-moth.jpg
/// bucket: image-store
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Example creating an empty folder in an existing `image-store` bucket.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const emptyFolder = new gcp.storage.BucketObject("empty_folder", {
/// name: "empty_folder/",
/// content: " ",
/// bucket: "image-store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// empty_folder = gcp.storage.BucketObject("empty_folder",
/// name="empty_folder/",
/// content=" ",
/// bucket="image-store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var emptyFolder = new Gcp.Storage.BucketObject("empty_folder", new()
/// {
/// Name = "empty_folder/",
/// Content = " ",
/// Bucket = "image-store",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewBucketObject(ctx, "empty_folder", &storage.BucketObjectArgs{
/// Name:    pulumi.String("empty_folder/"),
/// Content: pulumi.String(" "),
/// Bucket:  pulumi.String("image-store"),
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
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
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
/// var emptyFolder = new BucketObject("emptyFolder", BucketObjectArgs.builder()
/// .name("empty_folder/")
/// .content(" ")
/// .bucket("image-store")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// emptyFolder:
/// type: gcp:storage:BucketObject
/// name: empty_folder
/// properties:
/// name: empty_folder/
/// content: ' '
/// bucket: image-store
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Example creating an contexts for an object.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucketObject = new gcp.storage.BucketObject("bucket_object", {
/// bucket: "test-bucket",
/// name: "test-object",
/// content: "test-content",
/// contexts: {
/// customs: [
/// {
/// key: "testKey",
/// value: "test",
/// },
/// {
/// key: "testKeyTwo",
/// value: "test",
/// },
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket_object = gcp.storage.BucketObject("bucket_object",
/// bucket="test-bucket",
/// name="test-object",
/// content="test-content",
/// contexts={
/// "customs": [
/// {
/// "key": "testKey",
/// "value": "test",
/// },
/// {
/// "key": "testKeyTwo",
/// "value": "test",
/// },
/// ],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bucketObject = new Gcp.Storage.BucketObject("bucket_object", new()
/// {
/// Bucket = "test-bucket",
/// Name = "test-object",
/// Content = "test-content",
/// Contexts = new Gcp.Storage.Inputs.BucketObjectContextsArgs
/// {
/// Customs = new[]
/// {
/// new Gcp.Storage.Inputs.BucketObjectContextsCustomArgs
/// {
/// Key = "testKey",
/// Value = "test",
/// },
/// new Gcp.Storage.Inputs.BucketObjectContextsCustomArgs
/// {
/// Key = "testKeyTwo",
/// Value = "test",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.NewBucketObject(ctx, "bucket_object", &storage.BucketObjectArgs{
/// Bucket:  pulumi.String("test-bucket"),
/// Name:    pulumi.String("test-object"),
/// Content: pulumi.String("test-content"),
/// Contexts: &storage.BucketObjectContextsArgs{
/// Customs: storage.BucketObjectContextsCustomArray{
/// &storage.BucketObjectContextsCustomArgs{
/// Key:   pulumi.String("testKey"),
/// Value: pulumi.String("test"),
/// },
/// &storage.BucketObjectContextsCustomArgs{
/// Key:   pulumi.String("testKeyTwo"),
/// Value: pulumi.String("test"),
/// },
/// },
/// },
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
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.storage.inputs.BucketObjectContextsArgs;
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
/// var bucketObject = new BucketObject("bucketObject", BucketObjectArgs.builder()
/// .bucket("test-bucket")
/// .name("test-object")
/// .content("test-content")
/// .contexts(BucketObjectContextsArgs.builder()
/// .customs(
/// BucketObjectContextsCustomArgs.builder()
/// .key("testKey")
/// .value("test")
/// .build(),
/// BucketObjectContextsCustomArgs.builder()
/// .key("testKeyTwo")
/// .value("test")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bucketObject:
/// type: gcp:storage:BucketObject
/// name: bucket_object
/// properties:
/// bucket: test-bucket
/// name: test-object
/// content: test-content
/// contexts:
/// customs:
/// - key: testKey
/// value: test
/// - key: testKeyTwo
/// value: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// This resource does not support import.
class BucketObject extends CustomResource {
  /// The name of the containing bucket.
  late final Output<String> bucket;

  /// [Cache-Control](https://tools.ietf.org/html/rfc7234#section-5.2)
  /// directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600
  late final Output<String?> cacheControl;

  /// Data as <span pulumi-lang-nodejs="`string`" pulumi-lang-dotnet="`String`" pulumi-lang-go="`string`" pulumi-lang-python="`string`" pulumi-lang-yaml="`string`" pulumi-lang-java="`string`">`string`</span> to be uploaded. Must be defined if <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> is not. **Note**: The <span pulumi-lang-nodejs="`content`" pulumi-lang-dotnet="`Content`" pulumi-lang-go="`content`" pulumi-lang-python="`content`" pulumi-lang-yaml="`content`" pulumi-lang-java="`content`">`content`</span> field is marked as sensitive.
  late final Output<String> content;

  /// [Content-Disposition](https://tools.ietf.org/html/rfc6266) of the object data.
  late final Output<String?> contentDisposition;

  /// [Content-Encoding](https://tools.ietf.org/html/rfc7231#section-3.1.2.2) of the object data.
  late final Output<String?> contentEncoding;

  /// [Content-Language](https://tools.ietf.org/html/rfc7231#section-3.1.3.2) of the object data.
  late final Output<String?> contentLanguage;

  /// [Content-Type](https://tools.ietf.org/html/rfc7231#section-3.1.1.5) of the object data. Defaults to "application/octet-stream" or "text/plain; charset=utf-8".
  late final Output<String> contentType;

  /// Contexts attached to an object, in key-value pairs. For more information about object contexts, see [Object contexts overview](https://cloud.google.com/storage/docs/object-contexts). Structure is documented below.
  late final Output<BucketObjectContexts?> contexts;

  /// (Computed) Base 64 CRC32 hash of the uploaded data.
  late final Output<String> crc32c;

  /// Enables object encryption with Customer-Supplied Encryption Key (CSEK). Google [documentation about CSEK.](https://cloud.google.com/storage/docs/encryption/customer-supplied-keys)
  /// Structure is documented below.
  late final Output<BucketObjectCustomerEncryption?> customerEncryption;
  late final Output<String?> deletionPolicy;
  late final Output<String?> detectMd5hash;

  /// Whether an object is under [event-based hold](https://cloud.google.com/storage/docs/object-holds#hold-types). Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any).
  late final Output<bool?> eventBasedHold;

  /// When set to true, it ensure the object's Content-Type is empty.
  late final Output<bool?> forceEmptyContentType;

  /// (Computed) The content generation of this object. Used for object [versioning](https://cloud.google.com/storage/docs/object-versioning) and [soft delete](https://cloud.google.com/storage/docs/soft-delete).
  late final Output<int> generation;

  /// The resource name of the Cloud KMS key that will be used to [encrypt](https://cloud.google.com/storage/docs/encryption/using-customer-managed-keys) the object.
  late final Output<String> kmsKeyName;

  /// (Computed) Base 64 MD5 hash of the uploaded data.
  late final Output<String> md5hash;

  /// (Computed) Hex value of md5hash`
  late final Output<String> md5hexhash;

  /// (Computed) A url reference to download this object.
  late final Output<String> mediaLink;

  /// User-provided metadata, in key/value pairs.
  ///
  /// One of the following is required:
  late final Output<Map<String, String>?> metadata;

  /// The name of the object. If you're interpolating the name of this object, see <span pulumi-lang-nodejs="`outputName`" pulumi-lang-dotnet="`OutputName`" pulumi-lang-go="`outputName`" pulumi-lang-python="`output_name`" pulumi-lang-yaml="`outputName`" pulumi-lang-java="`outputName`">`output_name`</span> instead.
  late final Output<String> name;

  /// (Computed) The name of the object. Use this field in interpolations with <span pulumi-lang-nodejs="`gcp.storage.ObjectACL`" pulumi-lang-dotnet="`gcp.storage.ObjectACL`" pulumi-lang-go="`storage.ObjectACL`" pulumi-lang-python="`storage.ObjectACL`" pulumi-lang-yaml="`gcp.storage.ObjectACL`" pulumi-lang-java="`gcp.storage.ObjectACL`">`gcp.storage.ObjectACL`</span> to recreate
  /// <span pulumi-lang-nodejs="`gcp.storage.ObjectACL`" pulumi-lang-dotnet="`gcp.storage.ObjectACL`" pulumi-lang-go="`storage.ObjectACL`" pulumi-lang-python="`storage.ObjectACL`" pulumi-lang-yaml="`gcp.storage.ObjectACL`" pulumi-lang-java="`gcp.storage.ObjectACL`">`gcp.storage.ObjectACL`</span> resources when your <span pulumi-lang-nodejs="`gcp.storage.BucketObject`" pulumi-lang-dotnet="`gcp.storage.BucketObject`" pulumi-lang-go="`storage.BucketObject`" pulumi-lang-python="`storage.BucketObject`" pulumi-lang-yaml="`gcp.storage.BucketObject`" pulumi-lang-java="`gcp.storage.BucketObject`">`gcp.storage.BucketObject`</span> is recreated.
  late final Output<String> outputName;

  /// The [object retention](http://cloud.google.com/storage/docs/object-lock) settings for the object. The retention settings allow an object to be retained until a provided date. Structure is documented below.
  late final Output<BucketObjectRetention?> retention;

  /// (Computed) A url reference to this object.
  late final Output<String> selfLink;

  /// A path to the data you want to upload. Must be defined
  /// if <span pulumi-lang-nodejs="`content`" pulumi-lang-dotnet="`Content`" pulumi-lang-go="`content`" pulumi-lang-python="`content`" pulumi-lang-yaml="`content`" pulumi-lang-java="`content`">`content`</span> is not.
  ///
  /// - - -
  late final Output<dynamic> source;

  /// User-provided md5hash to trigger replacement of object in storage bucket, Must be Base 64 MD5 hash of the object data. The usual way to set this is filemd5("file.zip"), where "file.zip" is the local filename
  late final Output<String?> sourceMd5hash;

  /// The [StorageClass](https://cloud.google.com/storage/docs/storage-classes) of the new bucket object.
  /// Supported values include: `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`. If not provided, this defaults to the bucket's default
  /// storage class or to a [standard](https://cloud.google.com/storage/docs/storage-classes#standard) class.
  late final Output<String> storageClass;

  /// Whether an object is under [temporary hold](https://cloud.google.com/storage/docs/object-holds#hold-types). While this flag is set to true, the object is protected against deletion and overwrites.
  late final Output<bool?> temporaryHold;

  BucketObject(
    String name, {
    BucketObjectArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/bucketObject:BucketObject',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.cacheControl = registerOutput<String?>('cacheControl');
    this.content = registerOutput<String>('content');
    this.contentDisposition = registerOutput<String?>('contentDisposition');
    this.contentEncoding = registerOutput<String?>('contentEncoding');
    this.contentLanguage = registerOutput<String?>('contentLanguage');
    this.contentType = registerOutput<String>('contentType');
    this.contexts = registerOutput<BucketObjectContexts?>('contexts');
    this.crc32c = registerOutput<String>('crc32c');
    this.customerEncryption =
        registerOutput<BucketObjectCustomerEncryption?>('customerEncryption');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.detectMd5hash = registerOutput<String?>('detectMd5hash');
    this.eventBasedHold = registerOutput<bool?>('eventBasedHold');
    this.forceEmptyContentType = registerOutput<bool?>('forceEmptyContentType');
    this.generation = registerOutput<int>('generation');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.md5hash = registerOutput<String>('md5hash');
    this.md5hexhash = registerOutput<String>('md5hexhash');
    this.mediaLink = registerOutput<String>('mediaLink');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.outputName = registerOutput<String>('outputName');
    this.retention = registerOutput<BucketObjectRetention?>('retention');
    this.selfLink = registerOutput<String>('selfLink');
    this.source = registerOutput<dynamic>('source');
    this.sourceMd5hash = registerOutput<String?>('sourceMd5hash');
    this.storageClass = registerOutput<String>('storageClass');
    this.temporaryHold = registerOutput<bool?>('temporaryHold');
  }
}
