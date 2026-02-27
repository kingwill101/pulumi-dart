import 'package:pulumi/pulumi.dart' hide Config;
import 'bucket_object_args.dart';
import 'bucket_object_customer_encryption_response.dart';
import 'bucket_object_owner_response.dart';
import 'bucket_object_retention_response.dart';
import 'object_access_control_response.dart';

/// Stores a new object and metadata.
class BucketObject extends CustomResource {
  /// Access controls on the object.
  late final Output<List<ObjectAccessControlResponse>> acl;
  late final Output<String> bucket;

  /// Cache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600.
  late final Output<String> cacheControl;

  /// Number of underlying components that make up this object. Components are accumulated by compose operations.
  late final Output<int> componentCount;

  /// Content-Disposition of the object data.
  late final Output<String> contentDisposition;

  /// If set, sets the contentEncoding property of the final object to this value. Setting this parameter is equivalent to setting the contentEncoding metadata property. This can be useful when uploading an object with uploadType=media to indicate the encoding of the content being uploaded.
  late final Output<String> contentEncoding;

  /// Content-Language of the object data.
  late final Output<String> contentLanguage;

  /// Content-Type of the object data. If an object is stored without a Content-Type, it is served as application/octet-stream.
  late final Output<String> contentType;

  /// CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see Hashes and ETags: Best Practices.
  late final Output<String> crc32c;

  /// A timestamp in RFC 3339 format specified by the user for an object.
  late final Output<String> customTime;

  /// Metadata of customer-supplied encryption key, if the object is encrypted by such a key.
  late final Output<BucketObjectCustomerEncryptionResponse> customerEncryption;

  /// HTTP 1.1 Entity tag for the object.
  late final Output<String> etag;

  /// Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false.
  late final Output<bool> eventBasedHold;

  /// The content generation of this object. Used for object versioning.
  late final Output<String> generation;

  /// This is the time (in the future) when the soft-deleted object will no longer be restorable. It is equal to the soft delete time plus the current soft delete retention duration of the bucket.
  late final Output<String> hardDeleteTime;

  /// Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  late final Output<String?> ifGenerationMatch;

  /// Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  late final Output<String?> ifGenerationNotMatch;

  /// Makes the operation conditional on whether the object's current metageneration matches the given value.
  late final Output<String?> ifMetagenerationMatch;

  /// Makes the operation conditional on whether the object's current metageneration does not match the given value.
  late final Output<String?> ifMetagenerationNotMatch;

  /// The kind of item this is. For objects, this is always storage#object.
  late final Output<String> kind;

  /// Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any.
  late final Output<String> kmsKeyName;

  /// MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
  late final Output<String> md5Hash;

  /// Media download link.
  late final Output<String> mediaLink;

  /// User-provided metadata, in key/value pairs.
  late final Output<Map<String, String>> metadata;

  /// The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.
  late final Output<String> metageneration;

  /// Name of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any. For information about how to URL encode object names to be path safe, see [Encoding URI Path Parts](https://cloud.google.com/storage/docs/request-endpoints#encoding).
  late final Output<String> name;

  /// The owner of the object. This will always be the uploader of the object.
  late final Output<BucketObjectOwnerResponse> owner;

  /// Apply a predefined set of access controls to this object.
  late final Output<String?> predefinedAcl;

  /// Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
  late final Output<String?> projection;

  /// A collection of object level retention parameters.
  late final Output<BucketObjectRetentionResponse> retention;

  /// A server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).
  late final Output<String> retentionExpirationTime;

  /// The link to this object.
  late final Output<String> selfLink;

  /// Content-Length of the data in bytes.
  late final Output<String> size;

  /// The time at which the object became soft-deleted in RFC 3339 format.
  late final Output<String> softDeleteTime;

  /// Storage class of the object.
  late final Output<String> storageClass;

  /// Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.
  late final Output<bool> temporaryHold;

  /// The creation time of the object in RFC 3339 format.
  late final Output<String> timeCreated;

  /// The time at which the object became noncurrent in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.
  late final Output<String> timeDeleted;

  /// The time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated.
  late final Output<String> timeStorageClassUpdated;

  /// The modification time of the object metadata in RFC 3339 format. Set initially to object creation time and then updated whenever any metadata of the object changes. This includes changes made by a requester, such as modifying custom metadata, as well as changes made by Cloud Storage on behalf of a requester, such as changing the storage class based on an Object Lifecycle Configuration.
  late final Output<String> updated;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  late final Output<String?> userProject;

  BucketObject(
    String name, {
    BucketObjectArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:BucketObject',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acl = registerOutput<List<ObjectAccessControlResponse>>('acl');
    this.bucket = registerOutput<String>('bucket');
    this.cacheControl = registerOutput<String>('cacheControl');
    this.componentCount = registerOutput<int>('componentCount');
    this.contentDisposition = registerOutput<String>('contentDisposition');
    this.contentEncoding = registerOutput<String>('contentEncoding');
    this.contentLanguage = registerOutput<String>('contentLanguage');
    this.contentType = registerOutput<String>('contentType');
    this.crc32c = registerOutput<String>('crc32c');
    this.customTime = registerOutput<String>('customTime');
    this.customerEncryption =
        registerOutput<BucketObjectCustomerEncryptionResponse>(
            'customerEncryption');
    this.etag = registerOutput<String>('etag');
    this.eventBasedHold = registerOutput<bool>('eventBasedHold');
    this.generation = registerOutput<String>('generation');
    this.hardDeleteTime = registerOutput<String>('hardDeleteTime');
    this.ifGenerationMatch = registerOutput<String?>('ifGenerationMatch');
    this.ifGenerationNotMatch = registerOutput<String?>('ifGenerationNotMatch');
    this.ifMetagenerationMatch =
        registerOutput<String?>('ifMetagenerationMatch');
    this.ifMetagenerationNotMatch =
        registerOutput<String?>('ifMetagenerationNotMatch');
    this.kind = registerOutput<String>('kind');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.md5Hash = registerOutput<String>('md5Hash');
    this.mediaLink = registerOutput<String>('mediaLink');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.metageneration = registerOutput<String>('metageneration');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<BucketObjectOwnerResponse>('owner');
    this.predefinedAcl = registerOutput<String?>('predefinedAcl');
    this.projection = registerOutput<String?>('projection');
    this.retention = registerOutput<BucketObjectRetentionResponse>('retention');
    this.retentionExpirationTime =
        registerOutput<String>('retentionExpirationTime');
    this.selfLink = registerOutput<String>('selfLink');
    this.size = registerOutput<String>('size');
    this.softDeleteTime = registerOutput<String>('softDeleteTime');
    this.storageClass = registerOutput<String>('storageClass');
    this.temporaryHold = registerOutput<bool>('temporaryHold');
    this.timeCreated = registerOutput<String>('timeCreated');
    this.timeDeleted = registerOutput<String>('timeDeleted');
    this.timeStorageClassUpdated =
        registerOutput<String>('timeStorageClassUpdated');
    this.updated = registerOutput<String>('updated');
    this.userProject = registerOutput<String?>('userProject');
  }
}
