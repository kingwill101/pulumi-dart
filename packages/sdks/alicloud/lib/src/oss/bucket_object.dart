import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_args.dart';
import 'bucket_object_state.dart';

/// Provides a resource to put a object(content or file) to a oss bucket.
///
/// ## Example Usage
///
/// ### Uploading a file to a bucket
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `terraform-example-${_default.result}`});
/// const defaultBucketAcl = new alicloud.oss.BucketAcl("default", {
///     bucket: defaultBucket.bucket,
///     acl: "private",
/// });
/// const defaultBucketObject = new alicloud.oss.BucketObject("default", {
///     bucket: defaultBucket.bucket,
///     key: "example_key",
///     source: "./main.tf",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"terraform-example-{default['result']}")
/// default_bucket_acl = alicloud.oss.BucketAcl("default",
///     bucket=default_bucket.bucket,
///     acl="private")
/// default_bucket_object = alicloud.oss.BucketObject("default",
///     bucket=default_bucket.bucket,
///     key="example_key",
///     source="./main.tf")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"terraform-example-{@default.Result}",
///     });
///
///     var defaultBucketAcl = new AliCloud.Oss.BucketAcl("default", new()
///     {
///         Bucket = defaultBucket.BucketName,
///         Acl = "private",
///     });
///
///     var defaultBucketObject = new AliCloud.Oss.BucketObject("default", new()
///     {
///         Bucket = defaultBucket.BucketName,
///         Key = "example_key",
///         Source = "./main.tf",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "default", &oss.BucketAclArgs{
/// 			Bucket: defaultBucket.Bucket,
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketObject(ctx, "default", &oss.BucketObjectArgs{
/// 			Bucket: defaultBucket.Bucket,
/// 			Key:    pulumi.String("example_key"),
/// 			Source: pulumi.String("./main.tf"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
/// import com.pulumi.alicloud.oss.BucketObject;
/// import com.pulumi.alicloud.oss.BucketObjectArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var defaultBucketAcl = new BucketAcl("defaultBucketAcl", BucketAclArgs.builder()
///             .bucket(defaultBucket.bucket())
///             .acl("private")
///             .build());
///
///         var defaultBucketObject = new BucketObject("defaultBucketObject", BucketObjectArgs.builder()
///             .bucket(defaultBucket.bucket())
///             .key("example_key")
///             .source("./main.tf")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: terraform-example-${default.result}
///   defaultBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: default
///     properties:
///       bucket: ${defaultBucket.bucket}
///       acl: private
///   defaultBucketObject:
///     type: alicloud:oss:BucketObject
///     name: default
///     properties:
///       bucket: ${defaultBucket.bucket}
///       key: example_key
///       source: ./main.tf
/// ```
///
///
/// ### Uploading a content to a bucket
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `terraform-example-${_default.result}`});
/// const defaultBucketAcl = new alicloud.oss.BucketAcl("default", {
///     bucket: defaultBucket.bucket,
///     acl: "private",
/// });
/// const defaultBucketObject = new alicloud.oss.BucketObject("default", {
///     bucket: defaultBucket.bucket,
///     key: "example_key",
///     content: "the content that you want to upload.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"terraform-example-{default['result']}")
/// default_bucket_acl = alicloud.oss.BucketAcl("default",
///     bucket=default_bucket.bucket,
///     acl="private")
/// default_bucket_object = alicloud.oss.BucketObject("default",
///     bucket=default_bucket.bucket,
///     key="example_key",
///     content="the content that you want to upload.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"terraform-example-{@default.Result}",
///     });
///
///     var defaultBucketAcl = new AliCloud.Oss.BucketAcl("default", new()
///     {
///         Bucket = defaultBucket.BucketName,
///         Acl = "private",
///     });
///
///     var defaultBucketObject = new AliCloud.Oss.BucketObject("default", new()
///     {
///         Bucket = defaultBucket.BucketName,
///         Key = "example_key",
///         Content = "the content that you want to upload.",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "default", &oss.BucketAclArgs{
/// 			Bucket: defaultBucket.Bucket,
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketObject(ctx, "default", &oss.BucketObjectArgs{
/// 			Bucket:  defaultBucket.Bucket,
/// 			Key:     pulumi.String("example_key"),
/// 			Content: pulumi.String("the content that you want to upload."),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
/// import com.pulumi.alicloud.oss.BucketObject;
/// import com.pulumi.alicloud.oss.BucketObjectArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var defaultBucketAcl = new BucketAcl("defaultBucketAcl", BucketAclArgs.builder()
///             .bucket(defaultBucket.bucket())
///             .acl("private")
///             .build());
///
///         var defaultBucketObject = new BucketObject("defaultBucketObject", BucketObjectArgs.builder()
///             .bucket(defaultBucket.bucket())
///             .key("example_key")
///             .content("the content that you want to upload.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: terraform-example-${default.result}
///   defaultBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: default
///     properties:
///       bucket: ${defaultBucket.bucket}
///       acl: private
///   defaultBucketObject:
///     type: alicloud:oss:BucketObject
///     name: default
///     properties:
///       bucket: ${defaultBucket.bucket}
///       key: example_key
///       content: the content that you want to upload.
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class BucketObject extends pulumi.CustomResource {
  /// The [canned ACL](https://www.alibabacloud.com/help/doc-detail/52284.htm) to apply. Defaults to "private".
  late final pulumi.Output<String?> acl;
  /// The name of the bucket to put the file in.
  late final pulumi.Output<String> bucket;
  /// Specifies caching behavior along the request/reply chain. Read [RFC2616 Cache-Control](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  late final pulumi.Output<String?> cacheControl;
  /// The literal content being uploaded to the bucket.
  late final pulumi.Output<String?> content;
  /// Specifies presentational information for the object. Read [RFC2616 Content-Disposition](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  late final pulumi.Output<String?> contentDisposition;
  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [RFC2616 Content-Encoding](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  late final pulumi.Output<String?> contentEncoding;
  /// the content length of request.
  late final pulumi.Output<String> contentLength;
  /// The MD5 value of the content. Read [MD5](https://www.alibabacloud.com/help/doc-detail/31978.htm) for computing method.
  late final pulumi.Output<String?> contentMd5;
  /// A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input.
  late final pulumi.Output<String> contentType;
  /// the ETag generated for the object (an MD5 sum of the object content).
  late final pulumi.Output<String> etag;
  /// Specifies expire date for the the request/response. Read [RFC2616 Expires](https://www.ietf.org/rfc/rfc2616.txt) for further details.
  late final pulumi.Output<String?> expires;
  /// The name of the object once it is in the bucket.
  late final pulumi.Output<String> key;
  /// Specifies the primary key managed by KMS. This parameter is valid when the value of `server_side_encryption` is set to KMS.
  ///
  /// Either `source` or `content` must be provided to specify the bucket content.
  /// These two arguments are mutually-exclusive.
  late final pulumi.Output<String?> kmsKeyId;
  /// Specifies server-side encryption of the object in OSS. Valid values are `AES256`, `KMS`. Default value is `AES256`.
  late final pulumi.Output<String?> serverSideEncryption;
  /// The path to the source file being uploaded to the bucket.
  late final pulumi.Output<String?> source;
  /// A unique version ID value for the object, if bucket versioning is enabled.
  late final pulumi.Output<String> versionId;

  /// Creates a new [BucketObject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketObject]. {@macro pulumi_oss_bucket_object_bucket_object_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketObject(
    String name, {
    BucketObjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketObject:BucketObject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String?>('acl');
    this.bucket = registerOutput<String>('bucket');
    this.cacheControl = registerOutput<String?>('cacheControl');
    this.content = registerOutput<String?>('content');
    this.contentDisposition = registerOutput<String?>('contentDisposition');
    this.contentEncoding = registerOutput<String?>('contentEncoding');
    this.contentLength = registerOutput<String>('contentLength');
    this.contentMd5 = registerOutput<String?>('contentMd5');
    this.contentType = registerOutput<String>('contentType');
    this.etag = registerOutput<String>('etag');
    this.expires = registerOutput<String?>('expires');
    this.key = registerOutput<String>('key');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.serverSideEncryption = registerOutput<String?>('serverSideEncryption');
    this.source = registerOutput<String?>('source');
    this.versionId = registerOutput<String>('versionId');
  }

  /// Gets an existing [BucketObject] resource's state with the given [name] and [id].
  static BucketObject get(
    String name,
    pulumi.Input<String> id, {
    BucketObjectState? state,
  }) {
    return BucketObject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketObject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketObject:BucketObject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String?>('acl');
    this.bucket = registerOutput<String>('bucket');
    this.cacheControl = registerOutput<String?>('cacheControl');
    this.content = registerOutput<String?>('content');
    this.contentDisposition = registerOutput<String?>('contentDisposition');
    this.contentEncoding = registerOutput<String?>('contentEncoding');
    this.contentLength = registerOutput<String>('contentLength');
    this.contentMd5 = registerOutput<String?>('contentMd5');
    this.contentType = registerOutput<String>('contentType');
    this.etag = registerOutput<String>('etag');
    this.expires = registerOutput<String?>('expires');
    this.key = registerOutput<String>('key');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.serverSideEncryption = registerOutput<String?>('serverSideEncryption');
    this.source = registerOutput<String?>('source');
    this.versionId = registerOutput<String>('versionId');
  }
}
