import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_args.dart';
import 'trust_store_ca_certificates_bundle_source.dart';
import 'trust_store_state.dart';
import 'trust_store_timeouts.dart';

/// Manages an AWS CloudFront Trust Store.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.TrustStore("example", {
///     caCertificatesBundleSource: {
///         caCertificatesBundleS3Location: {
///             bucket: "example-bucket",
///             key: "ca-certificates.pem",
///             region: "us-east-1",
///         },
///     },
///     name: "example-trust-store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.TrustStore("example",
///     ca_certificates_bundle_source={
///         "ca_certificates_bundle_s3_location": {
///             "bucket": "example-bucket",
///             "key": "ca-certificates.pem",
///             "region": "us-east-1",
///         },
///     },
///     name="example-trust-store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.TrustStore("example", new()
///     {
///         CaCertificatesBundleSource = new Aws.CloudFront.Inputs.TrustStoreCaCertificatesBundleSourceArgs
///         {
///             CaCertificatesBundleS3Location = new Aws.CloudFront.Inputs.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs
///             {
///                 Bucket = "example-bucket",
///                 Key = "ca-certificates.pem",
///                 Region = "us-east-1",
///             },
///         },
///         Name = "example-trust-store",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewTrustStore(ctx, "example", &cloudfront.TrustStoreArgs{
/// 			CaCertificatesBundleSource: &cloudfront.TrustStoreCaCertificatesBundleSourceArgs{
/// 				CaCertificatesBundleS3Location: &cloudfront.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs{
/// 					Bucket: pulumi.String("example-bucket"),
/// 					Key:    pulumi.String("ca-certificates.pem"),
/// 					Region: pulumi.String("us-east-1"),
/// 				},
/// 			},
/// 			Name: pulumi.String("example-trust-store"),
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
/// resource "aws_cloudfront_truststore" "example" {
///   ca_certificates_bundle_source = {
///     ca_certificates_bundle_s3_location = {
///       bucket = "example-bucket"
///       key    = "ca-certificates.pem"
///       region = "us-east-1"
///     }
///   }
///   name = "example-trust-store"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudfront.TrustStore;
/// import com.pulumi.aws.cloudfront.TrustStoreArgs;
/// import com.pulumi.aws.cloudfront.inputs.TrustStoreCaCertificatesBundleSourceArgs;
/// import com.pulumi.aws.cloudfront.inputs.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs;
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
///         var example = new TrustStore("example", TrustStoreArgs.builder()
///             .caCertificatesBundleSource(TrustStoreCaCertificatesBundleSourceArgs.builder()
///                 .caCertificatesBundleS3Location(TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs.builder()
///                     .bucket("example-bucket")
///                     .key("ca-certificates.pem")
///                     .region("us-east-1")
///                     .build())
///                 .build())
///             .name("example-trust-store")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:TrustStore
///     properties:
///       caCertificatesBundleSource:
///         caCertificatesBundleS3Location:
///           bucket: example-bucket
///           key: ca-certificates.pem
///           region: us-east-1
///       name: example-trust-store
/// ```
///
///
/// ### With S3 Object Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.TrustStore("example", {
///     caCertificatesBundleSource: {
///         caCertificatesBundleS3Location: {
///             bucket: "example-bucket",
///             key: "ca-certificates.pem",
///             region: "us-east-1",
///             version: "abc123",
///         },
///     },
///     name: "example-trust-store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.TrustStore("example",
///     ca_certificates_bundle_source={
///         "ca_certificates_bundle_s3_location": {
///             "bucket": "example-bucket",
///             "key": "ca-certificates.pem",
///             "region": "us-east-1",
///             "version": "abc123",
///         },
///     },
///     name="example-trust-store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.TrustStore("example", new()
///     {
///         CaCertificatesBundleSource = new Aws.CloudFront.Inputs.TrustStoreCaCertificatesBundleSourceArgs
///         {
///             CaCertificatesBundleS3Location = new Aws.CloudFront.Inputs.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs
///             {
///                 Bucket = "example-bucket",
///                 Key = "ca-certificates.pem",
///                 Region = "us-east-1",
///                 Version = "abc123",
///             },
///         },
///         Name = "example-trust-store",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewTrustStore(ctx, "example", &cloudfront.TrustStoreArgs{
/// 			CaCertificatesBundleSource: &cloudfront.TrustStoreCaCertificatesBundleSourceArgs{
/// 				CaCertificatesBundleS3Location: &cloudfront.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs{
/// 					Bucket:  pulumi.String("example-bucket"),
/// 					Key:     pulumi.String("ca-certificates.pem"),
/// 					Region:  pulumi.String("us-east-1"),
/// 					Version: pulumi.String("abc123"),
/// 				},
/// 			},
/// 			Name: pulumi.String("example-trust-store"),
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
/// resource "aws_cloudfront_truststore" "example" {
///   ca_certificates_bundle_source = {
///     ca_certificates_bundle_s3_location = {
///       bucket  = "example-bucket"
///       key     = "ca-certificates.pem"
///       region  = "us-east-1"
///       version = "abc123"
///     }
///   }
///   name = "example-trust-store"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudfront.TrustStore;
/// import com.pulumi.aws.cloudfront.TrustStoreArgs;
/// import com.pulumi.aws.cloudfront.inputs.TrustStoreCaCertificatesBundleSourceArgs;
/// import com.pulumi.aws.cloudfront.inputs.TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs;
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
///         var example = new TrustStore("example", TrustStoreArgs.builder()
///             .caCertificatesBundleSource(TrustStoreCaCertificatesBundleSourceArgs.builder()
///                 .caCertificatesBundleS3Location(TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3LocationArgs.builder()
///                     .bucket("example-bucket")
///                     .key("ca-certificates.pem")
///                     .region("us-east-1")
///                     .version("abc123")
///                     .build())
///                 .build())
///             .name("example-trust-store")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:TrustStore
///     properties:
///       caCertificatesBundleSource:
///         caCertificatesBundleS3Location:
///           bucket: example-bucket
///           key: ca-certificates.pem
///           region: us-east-1
///           version: abc123
///       name: example-trust-store
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Trust Store using the trust store ID. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/trustStore:TrustStore example ts_12abcXYZhA4Q6RS6tuvW5Xy0ZZZ
/// ```
class TrustStore extends pulumi.CustomResource {
  /// ARN of the trust store.
  late final pulumi.Output<String> arn;
  /// Configuration block for the CA certificates bundle source. See `caCertificatesBundleSource` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<TrustStoreCaCertificatesBundleSource> caCertificatesBundleSource;
  /// ETag of the trust store.
  late final pulumi.Output<String> etag;
  /// Name of the trust store. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Number of CA certificates in the trust store.
  late final pulumi.Output<int> numberOfCaCertificates;
  /// Key-value tags for the place index. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<TrustStoreTimeouts?> timeouts;

  /// Creates a new [TrustStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrustStore]. {@macro pulumi_cloudfront_trust_store_trust_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrustStore(
    String name, {
    TrustStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/trustStore:TrustStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    caCertificatesBundleSource = registerOutput<TrustStoreCaCertificatesBundleSource>('caCertificatesBundleSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustStoreCaCertificatesBundleSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    numberOfCaCertificates = registerOutput<int>('numberOfCaCertificates');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<TrustStoreTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustStoreTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TrustStore] resource's state with the given [name] and [id].
  static TrustStore get(
    String name,
    pulumi.Input<String> id, {
    TrustStoreState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TrustStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TrustStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/trustStore:TrustStore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    caCertificatesBundleSource = registerOutput<TrustStoreCaCertificatesBundleSource>('caCertificatesBundleSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustStoreCaCertificatesBundleSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    numberOfCaCertificates = registerOutput<int>('numberOfCaCertificates');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<TrustStoreTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustStoreTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [TrustStore] resource.
  TrustStore.reference(String urn)
    : super(
        'aws:cloudfront/trustStore:TrustStore',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    caCertificatesBundleSource = registerOutput<TrustStoreCaCertificatesBundleSource>('caCertificatesBundleSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustStoreCaCertificatesBundleSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    numberOfCaCertificates = registerOutput<int>('numberOfCaCertificates');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<TrustStoreTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrustStoreTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
