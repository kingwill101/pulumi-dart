import 'package:pulumi/pulumi.dart';
import '../bucket_object_contexts/bucket_object_contexts.dart';
import '../bucket_object_customer_encryption/bucket_object_customer_encryption.dart';
import '../bucket_object_retention/bucket_object_retention.dart';
import 'bucket_object_args.dart';

/// Creates a new object inside an existing bucket in Google cloud storage service (GCS).
/// [ACLs](https://cloud.google.com/storage/docs/access-control/lists) can be applied using the `gcp.storage.ObjectACL` resource.
/// For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/objects).
///
/// A datasource can be used to retrieve the data of the stored object:
///
/// * `gcp.storage.getBucketObjectContent`: Retrieves the content within a specified bucket object in Google Cloud Storage Service (GCS)
///
///
/// ## Example Usage
///
/// Example creating a public object in an existing `image-store` bucket.
///
///
///
/// Example creating an empty folder in an existing `image-store` bucket.
///
///
///
/// Example creating an contexts for an object.
///
///
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

  /// Data as `string` to be uploaded. Must be defined if `source` is not. **Note**: The `content` field is marked as sensitive.
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

  /// The name of the object. If you're interpolating the name of this object, see `output_name` instead.
  late final Output<String> name;

  /// (Computed) The name of the object. Use this field in interpolations with `gcp.storage.ObjectACL` to recreate
  /// `gcp.storage.ObjectACL` resources when your `gcp.storage.BucketObject` is recreated.
  late final Output<String> outputName;

  /// The [object retention](http://cloud.google.com/storage/docs/object-lock) settings for the object. The retention settings allow an object to be retained until a provided date. Structure is documented below.
  late final Output<BucketObjectRetention?> retention;

  /// (Computed) A url reference to this object.
  late final Output<String> selfLink;

  /// A path to the data you want to upload. Must be defined
  /// if `content` is not.
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
