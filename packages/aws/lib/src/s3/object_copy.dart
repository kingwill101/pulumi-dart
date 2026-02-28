import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_copy_args.dart';
import 'object_copy_grant.dart';
import 'object_copy_override_provider.dart';

/// Provides a resource for copying an S3 object.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.s3.ObjectCopy("test", {
///     bucket: "destination_bucket",
///     key: "destination_key",
///     source: "source_bucket/source_key",
///     grants: [{
///         uri: "http://acs.amazonaws.com/groups/global/AllUsers",
///         type: "Group",
///         permissions: ["READ"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.s3.ObjectCopy("test",
///     bucket="destination_bucket",
///     key="destination_key",
///     source="source_bucket/source_key",
///     grants=[{
///         "uri": "http://acs.amazonaws.com/groups/global/AllUsers",
///         "type": "Group",
///         "permissions": ["READ"],
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
///     var test = new Aws.S3.ObjectCopy("test", new()
///     {
///         Bucket = "destination_bucket",
///         Key = "destination_key",
///         Source = "source_bucket/source_key",
///         Grants = new[]
///         {
///             new Aws.S3.Inputs.ObjectCopyGrantArgs
///             {
///                 Uri = "http://acs.amazonaws.com/groups/global/AllUsers",
///                 Type = "Group",
///                 Permissions = new[]
///                 {
///                     "READ",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewObjectCopy(ctx, "test", &s3.ObjectCopyArgs{
/// 			Bucket: pulumi.String("destination_bucket"),
/// 			Key:    pulumi.String("destination_key"),
/// 			Source: pulumi.String("source_bucket/source_key"),
/// 			Grants: s3.ObjectCopyGrantArray{
/// 				&s3.ObjectCopyGrantArgs{
/// 					Uri:  pulumi.String("http://acs.amazonaws.com/groups/global/AllUsers"),
/// 					Type: pulumi.String("Group"),
/// 					Permissions: pulumi.StringArray{
/// 						pulumi.String("READ"),
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
/// import com.pulumi.aws.s3.ObjectCopy;
/// import com.pulumi.aws.s3.ObjectCopyArgs;
/// import com.pulumi.aws.s3.inputs.ObjectCopyGrantArgs;
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
///         var test = new ObjectCopy("test", ObjectCopyArgs.builder()
///             .bucket("destination_bucket")
///             .key("destination_key")
///             .source("source_bucket/source_key")
///             .grants(ObjectCopyGrantArgs.builder()
///                 .uri("http://acs.amazonaws.com/groups/global/AllUsers")
///                 .type("Group")
///                 .permissions("READ")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:s3:ObjectCopy
///     properties:
///       bucket: destination_bucket
///       key: destination_key
///       source: source_bucket/source_key
///       grants:
///         - uri: http://acs.amazonaws.com/groups/global/AllUsers
///           type: Group
///           permissions:
///             - READ
/// ```
///
///
/// ### Ignoring Provider `default_tags`
///
/// S3 objects support a [maximum of 10 tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html).
/// If the resource's own `tags` and the provider-level `default_tags` would together lead to more than 10 tags on an S3 object copy, use the `override_provider` configuration block to suppress any provider-level `default_tags`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.s3.ObjectCopy("test", {
///     bucket: "destination_bucket",
///     key: "destination_key",
///     source: "source_bucket/source_key",
///     overrideProvider: {
///         defaultTags: {
///             tags: {},
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.s3.ObjectCopy("test",
///     bucket="destination_bucket",
///     key="destination_key",
///     source="source_bucket/source_key",
///     override_provider={
///         "default_tags": {
///             "tags": {},
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
///     var test = new Aws.S3.ObjectCopy("test", new()
///     {
///         Bucket = "destination_bucket",
///         Key = "destination_key",
///         Source = "source_bucket/source_key",
///         OverrideProvider = new Aws.S3.Inputs.ObjectCopyOverrideProviderArgs
///         {
///             DefaultTags = new Aws.S3.Inputs.ObjectCopyOverrideProviderDefaultTagsArgs
///             {
///                 Tags = null,
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
/// 		_, err := s3.NewObjectCopy(ctx, "test", &s3.ObjectCopyArgs{
/// 			Bucket: pulumi.String("destination_bucket"),
/// 			Key:    pulumi.String("destination_key"),
/// 			Source: pulumi.String("source_bucket/source_key"),
/// 			OverrideProvider: &s3.ObjectCopyOverrideProviderArgs{
/// 				DefaultTags: &s3.ObjectCopyOverrideProviderDefaultTagsArgs{
/// 					Tags: pulumi.StringMap{},
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
/// import com.pulumi.aws.s3.ObjectCopy;
/// import com.pulumi.aws.s3.ObjectCopyArgs;
/// import com.pulumi.aws.s3.inputs.ObjectCopyOverrideProviderArgs;
/// import com.pulumi.aws.s3.inputs.ObjectCopyOverrideProviderDefaultTagsArgs;
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
///         var test = new ObjectCopy("test", ObjectCopyArgs.builder()
///             .bucket("destination_bucket")
///             .key("destination_key")
///             .source("source_bucket/source_key")
///             .overrideProvider(ObjectCopyOverrideProviderArgs.builder()
///                 .defaultTags(ObjectCopyOverrideProviderDefaultTagsArgs.builder()
///                     .tags(Map.ofEntries(
///                     ))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:s3:ObjectCopy
///     properties:
///       bucket: destination_bucket
///       key: destination_key
///       source: source_bucket/source_key
///       overrideProvider:
///         defaultTags:
///           tags: {}
/// ```
class ObjectCopy extends pulumi.CustomResource {
  /// [Canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. Valid values are `private`, `public-read`, `public-read-write`, `authenticated-read`, `aws-exec-read`, `bucket-owner-read`, and `bucket-owner-full-control`. Conflicts with `grant`.
  late final pulumi.Output<String> acl;
  /// ARN of the object.
  late final pulumi.Output<String> arn;
  /// Name of the bucket to put the file in.
  late final pulumi.Output<String> bucket;
  late final pulumi.Output<bool> bucketKeyEnabled;
  /// Specifies caching behavior along the request/reply chain Read [w3c cache_control](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9) for further details.
  late final pulumi.Output<String> cacheControl;
  /// Indicates the algorithm used to create the checksum for the object. If a value is specified and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `CRC32`, `CRC32C`, `CRC64NVME` `SHA1`, `SHA256`.
  late final pulumi.Output<String?> checksumAlgorithm;
  /// The base64-encoded, 32-bit CRC32 checksum of the object.
  late final pulumi.Output<String> checksumCrc32;
  /// The base64-encoded, 32-bit CRC32C checksum of the object.
  late final pulumi.Output<String> checksumCrc32c;
  /// The base64-encoded, 64-bit CRC64NVME checksum of the object.
  late final pulumi.Output<String> checksumCrc64nvme;
  /// The base64-encoded, 160-bit SHA-1 digest of the object.
  late final pulumi.Output<String> checksumSha1;
  /// The base64-encoded, 256-bit SHA-256 digest of the object.
  late final pulumi.Output<String> checksumSha256;
  /// Specifies presentational information for the object. Read [w3c content_disposition](http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1) for further information.
  late final pulumi.Output<String> contentDisposition;
  /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read [w3c content encoding](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11) for further information.
  late final pulumi.Output<String> contentEncoding;
  /// Language the content is in e.g., en-US or en-GB.
  late final pulumi.Output<String> contentLanguage;
  /// Standard MIME type describing the format of the object data, e.g., `application/octet-stream`. All Valid MIME Types are valid for this input.
  late final pulumi.Output<String> contentType;
  /// Copies the object if its entity tag (ETag) matches the specified tag.
  late final pulumi.Output<String?> copyIfMatch;
  /// Copies the object if it has been modified since the specified time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String?> copyIfModifiedSince;
  /// Copies the object if its entity tag (ETag) is different than the specified ETag.
  late final pulumi.Output<String?> copyIfNoneMatch;
  /// Copies the object if it hasn't been modified since the specified time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String?> copyIfUnmodifiedSince;
  /// Specifies the algorithm to use to when encrypting the object (for example, AES256).
  late final pulumi.Output<String> customerAlgorithm;
  /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side-encryption-customer-algorithm header.
  late final pulumi.Output<String?> customerKey;
  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  late final pulumi.Output<String> customerKeyMd5;
  /// ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption. More information on possible values can be found on [Common Response Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonResponseHeaders.html).
  late final pulumi.Output<String> etag;
  /// Account id of the expected destination bucket owner. If the destination bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Account id of the expected source bucket owner. If the source bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  late final pulumi.Output<String?> expectedSourceBucketOwner;
  /// If the object expiration is configured, this attribute will be set.
  late final pulumi.Output<String> expiration;
  /// Date and time at which the object is no longer cacheable, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String?> expires;
  /// Allow the object to be deleted by removing any legal hold on any object version. Default is `false`. This value should be set to `true` only if the bucket has S3 object lock enabled.
  late final pulumi.Output<bool?> forceDestroy;
  /// Configuration block for header grants. Documented below. Conflicts with `acl`.
  late final pulumi.Output<List<ObjectCopyGrant>?> grants;
  /// Name of the object once it is in the bucket.
  late final pulumi.Output<String> key;
  /// Specifies the AWS KMS Encryption Context to use for object encryption. The value is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
  late final pulumi.Output<String> kmsEncryptionContext;
  /// Specifies the AWS KMS Key ARN to use for object encryption. This value is a fully qualified **ARN** of the KMS Key. If using `aws.kms.Key`, use the exported `arn` attribute: `kms_key_id = aws_kms_key.foo.arn`
  late final pulumi.Output<String> kmsKeyId;
  /// Returns the date that the object was last modified, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String> lastModified;
  /// Map of keys/values to provision metadata (will be automatically prefixed by `x-amz-meta-`, note that only lowercase label are currently supported by the AWS Go API).
  late final pulumi.Output<Map<String, String>> metadata;
  /// Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request. Valid values are `COPY` and `REPLACE`.
  late final pulumi.Output<String?> metadataDirective;
  /// The [legal hold](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-legal-holds) status that you want to apply to the specified object. Valid values are `ON` and `OFF`.
  late final pulumi.Output<String> objectLockLegalHoldStatus;
  /// Object lock [retention mode](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes) that you want to apply to this object. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  late final pulumi.Output<String> objectLockMode;
  /// Date and time, in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8), when this object's object lock will [expire](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods).
  late final pulumi.Output<String> objectLockRetainUntilDate;
  late final pulumi.Output<ObjectCopyOverrideProvider?> overrideProvider;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// If present, indicates that the requester was successfully charged for the request.
  late final pulumi.Output<bool> requestCharged;
  /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from requester pays buckets, see Downloading Objects in Requestor Pays Buckets (https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 Developer Guide. If included, the only valid value is `requester`.
  late final pulumi.Output<String?> requestPayer;
  /// Specifies server-side encryption of the object in S3. Valid values are `AES256` and `aws:kms`.
  late final pulumi.Output<String> serverSideEncryption;
  /// Specifies the source object for the copy operation. You specify the value in one of two formats. For objects not accessed through an access point, specify the name of the source bucket and the key of the source object, separated by a slash (`/`). For example, `testbucket/test1.json`. For objects accessed through access points, specify the ARN of the object as accessed through the access point, in the format `arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key>`. For example, `arn:aws:s3:us-west-2:9999912999:accesspoint/my-access-point/object/testbucket/test1.json`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> source;
  /// Specifies the algorithm to use when decrypting the source object (for example, AES256).
  late final pulumi.Output<String?> sourceCustomerAlgorithm;
  /// Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
  late final pulumi.Output<String?> sourceCustomerKey;
  /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
  late final pulumi.Output<String?> sourceCustomerKeyMd5;
  /// Version of the copied object in the source bucket.
  late final pulumi.Output<String> sourceVersionId;
  /// Specifies the desired [storage class](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html#AmazonS3-CopyObject-request-header-StorageClass) for the object. Defaults to `STANDARD`.
  late final pulumi.Output<String> storageClass;
  /// Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request. Valid values are `COPY` and `REPLACE`.
  late final pulumi.Output<String?> taggingDirective;
  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Version ID of the newly created copy.
  late final pulumi.Output<String> versionId;
  /// Specifies a target URL for [website redirect](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).
  late final pulumi.Output<String> websiteRedirect;

  /// Creates a new [ObjectCopy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectCopy]. {@macro pulumi_s3_object_copy_object_copy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectCopy(
    String name, {
    ObjectCopyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/objectCopy:ObjectCopy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String>('acl');
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.bucketKeyEnabled = registerOutput<bool>('bucketKeyEnabled');
    this.cacheControl = registerOutput<String>('cacheControl');
    this.checksumAlgorithm = registerOutput<String?>('checksumAlgorithm');
    this.checksumCrc32 = registerOutput<String>('checksumCrc32');
    this.checksumCrc32c = registerOutput<String>('checksumCrc32c');
    this.checksumCrc64nvme = registerOutput<String>('checksumCrc64nvme');
    this.checksumSha1 = registerOutput<String>('checksumSha1');
    this.checksumSha256 = registerOutput<String>('checksumSha256');
    this.contentDisposition = registerOutput<String>('contentDisposition');
    this.contentEncoding = registerOutput<String>('contentEncoding');
    this.contentLanguage = registerOutput<String>('contentLanguage');
    this.contentType = registerOutput<String>('contentType');
    this.copyIfMatch = registerOutput<String?>('copyIfMatch');
    this.copyIfModifiedSince = registerOutput<String?>('copyIfModifiedSince');
    this.copyIfNoneMatch = registerOutput<String?>('copyIfNoneMatch');
    this.copyIfUnmodifiedSince = registerOutput<String?>('copyIfUnmodifiedSince');
    this.customerAlgorithm = registerOutput<String>('customerAlgorithm');
    this.customerKey = registerOutput<String?>('customerKey');
    this.customerKeyMd5 = registerOutput<String>('customerKeyMd5');
    this.etag = registerOutput<String>('etag');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.expectedSourceBucketOwner = registerOutput<String?>('expectedSourceBucketOwner');
    this.expiration = registerOutput<String>('expiration');
    this.expires = registerOutput<String?>('expires');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.grants = registerOutput<List<ObjectCopyGrant>?>('grants');
    this.key = registerOutput<String>('key');
    this.kmsEncryptionContext = registerOutput<String>('kmsEncryptionContext');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.lastModified = registerOutput<String>('lastModified');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.metadataDirective = registerOutput<String?>('metadataDirective');
    this.objectLockLegalHoldStatus = registerOutput<String>('objectLockLegalHoldStatus');
    this.objectLockMode = registerOutput<String>('objectLockMode');
    this.objectLockRetainUntilDate = registerOutput<String>('objectLockRetainUntilDate');
    this.overrideProvider = registerOutput<ObjectCopyOverrideProvider?>('overrideProvider');
    this.region = registerOutput<String>('region');
    this.requestCharged = registerOutput<bool>('requestCharged');
    this.requestPayer = registerOutput<String?>('requestPayer');
    this.serverSideEncryption = registerOutput<String>('serverSideEncryption');
    this.source = registerOutput<String>('source');
    this.sourceCustomerAlgorithm = registerOutput<String?>('sourceCustomerAlgorithm');
    this.sourceCustomerKey = registerOutput<String?>('sourceCustomerKey');
    this.sourceCustomerKeyMd5 = registerOutput<String?>('sourceCustomerKeyMd5');
    this.sourceVersionId = registerOutput<String>('sourceVersionId');
    this.storageClass = registerOutput<String>('storageClass');
    this.taggingDirective = registerOutput<String?>('taggingDirective');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.versionId = registerOutput<String>('versionId');
    this.websiteRedirect = registerOutput<String>('websiteRedirect');
  }
}
