import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_bucket_object_args.dart';

/// Provides a bucket object resource for Spaces, DigitalOcean's object storage product.
/// The `digitalocean.SpacesBucketObject` resource allows Terraform to upload content
/// to Spaces.
///
/// The [Spaces API](https://docs.digitalocean.com/reference/api/spaces-api/) was
/// designed to be interoperable with Amazon's AWS S3 API. This allows users to
/// interact with the service while using the tools they already know. Spaces
/// mirrors S3's authentication framework and requests to Spaces require a key pair
/// similar to Amazon's Access ID and Secret Key.
///
/// The authentication requirement can be met by either setting the
/// `SPACES_ACCESS_KEY_ID` and `SPACES_SECRET_ACCESS_KEY` environment variables or
/// the provider's `spaces_access_id` and `spaces_secret_key` arguments to the
/// access ID and secret you generate via the DigitalOcean control panel. For
/// example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const static_assets = new digitalocean.SpacesBucket("static-assets", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// static_assets = digitalocean.SpacesBucket("static-assets")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var static_assets = new DigitalOcean.SpacesBucket("static-assets");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewSpacesBucket(ctx, "static-assets", nil)
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
/// import com.pulumi.digitalocean.SpacesBucket;
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
///         var static_assets = new SpacesBucket("static-assets");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   static-assets:
///     type: digitalocean:SpacesBucket
/// ```
///
///
/// For more information, See [An Introduction to DigitalOcean Spaces](https://www.digitalocean.com/community/tutorials/an-introduction-to-digitalocean-spaces)
///
/// ## Example Usage
///
/// ### Create a Key in a Spaces Bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.SpacesBucket("foobar", {
///     name: "foobar",
///     region: digitalocean.Region.NYC3,
/// });
/// const index = new digitalocean.SpacesBucketObject("index", {
///     region: foobar.region,
///     bucket: foobar.name,
///     key: "index.html",
///     content: "<html><body><p>This page is empty.</p></body></html>",
///     contentType: "text/html",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.SpacesBucket("foobar",
///     name="foobar",
///     region=digitalocean.Region.NYC3)
/// index = digitalocean.SpacesBucketObject("index",
///     region=foobar.region,
///     bucket=foobar.name,
///     key="index.html",
///     content="<html><body><p>This page is empty.</p></body></html>",
///     content_type="text/html")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.SpacesBucket("foobar", new()
///     {
///         Name = "foobar",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
///     var index = new DigitalOcean.SpacesBucketObject("index", new()
///     {
///         Region = foobar.Region,
///         Bucket = foobar.Name,
///         Key = "index.html",
///         Content = "<html><body><p>This page is empty.</p></body></html>",
///         ContentType = "text/html",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := digitalocean.NewSpacesBucket(ctx, "foobar", &digitalocean.SpacesBucketArgs{
/// 			Name:   pulumi.String("foobar"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewSpacesBucketObject(ctx, "index", &digitalocean.SpacesBucketObjectArgs{
/// 			Region:      foobar.Region,
/// 			Bucket:      foobar.Name,
/// 			Key:         pulumi.String("index.html"),
/// 			Content:     pulumi.String("<html><body><p>This page is empty.</p></body></html>"),
/// 			ContentType: pulumi.String("text/html"),
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
/// import com.pulumi.digitalocean.SpacesBucket;
/// import com.pulumi.digitalocean.SpacesBucketArgs;
/// import com.pulumi.digitalocean.SpacesBucketObject;
/// import com.pulumi.digitalocean.SpacesBucketObjectArgs;
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
///         var foobar = new SpacesBucket("foobar", SpacesBucketArgs.builder()
///             .name("foobar")
///             .region("nyc3")
///             .build());
///
///         var index = new SpacesBucketObject("index", SpacesBucketObjectArgs.builder()
///             .region(foobar.region())
///             .bucket(foobar.name())
///             .key("index.html")
///             .content("<html><body><p>This page is empty.</p></body></html>")
///             .contentType("text/html")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:SpacesBucket
///     properties:
///       name: foobar
///       region: nyc3
///   index:
///     type: digitalocean:SpacesBucketObject
///     properties:
///       region: ${foobar.region}
///       bucket: ${foobar.name}
///       key: index.html
///       content: <html><body><p>This page is empty.</p></body></html>
///       contentType: text/html
/// ```
///
///
/// ## Import
///
/// Importing this resource is not supported.
class SpacesBucketObject extends pulumi.CustomResource {
  /// The canned ACL to apply. DigitalOcean supports "private" and "public-read". (Defaults to "private".)
  late final pulumi.Output<String?> acl;
  /// The name of the bucket to put the file in.
  late final pulumi.Output<String> bucket;
  /// Specifies caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  late final pulumi.Output<String?> cacheControl;
  /// Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text.
  late final pulumi.Output<String?> content;
  /// Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the `gzipbase64` function with small text strings. For larger objects, use `source` to stream the content from a disk file.
  late final pulumi.Output<String?> contentBase64;
  /// Specifies presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  late final pulumi.Output<String?> contentDisposition;
  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  late final pulumi.Output<String?> contentEncoding;
  /// The language the content is in e.g. en-US or en-GB.
  late final pulumi.Output<String?> contentLanguage;
  /// A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input.
  late final pulumi.Output<String> contentType;
  /// Used to trigger updates. The only meaningful value is `${filemd5("path/to/file")}` (Terraform 0.11.12 or later) or `${md5(file("path/to/file"))}` (Terraform 0.11.11 or earlier).
  late final pulumi.Output<String> etag;
  /// Allow the object to be deleted by removing any legal hold on any object version.
  /// Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  ///
  /// If no content is provided through `source`, `content` or `content_base64`, then the object will be empty.
  ///
  /// > **Note:** Terraform ignores all leading `/`s in the object's `key` and treats multiple `/`s in the rest of the object's `key` as a single `/`, so values of `/index.html` and `index.html` correspond to the same S3 object as do `first//second///third//` and `first/second/third/`.
  late final pulumi.Output<bool?> forceDestroy;
  /// The name of the object once it is in the bucket.
  late final pulumi.Output<String> key;
  /// A mapping of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The region where the bucket resides (Defaults to `nyc3`)
  late final pulumi.Output<String> region;
  /// The path to a file that will be read and uploaded as raw bytes for the object content.
  late final pulumi.Output<String?> source;
  /// A unique version ID value for the object, if bucket versioning is enabled.
  late final pulumi.Output<String> versionId;
  /// Specifies a target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  late final pulumi.Output<String?> websiteRedirect;

  /// Creates a new [SpacesBucketObject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpacesBucketObject]. {@macro pulumi_index_spaces_bucket_object_spaces_bucket_object_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpacesBucketObject(
    String name, {
    SpacesBucketObjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/spacesBucketObject:SpacesBucketObject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String?>('acl');
    this.bucket = registerOutput<String>('bucket');
    this.cacheControl = registerOutput<String?>('cacheControl');
    this.content = registerOutput<String?>('content');
    this.contentBase64 = registerOutput<String?>('contentBase64');
    this.contentDisposition = registerOutput<String?>('contentDisposition');
    this.contentEncoding = registerOutput<String?>('contentEncoding');
    this.contentLanguage = registerOutput<String?>('contentLanguage');
    this.contentType = registerOutput<String>('contentType');
    this.etag = registerOutput<String>('etag');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.key = registerOutput<String>('key');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.region = registerOutput<String>('region');
    this.source = registerOutput<String?>('source');
    this.versionId = registerOutput<String>('versionId');
    this.websiteRedirect = registerOutput<String?>('websiteRedirect');
  }
}
