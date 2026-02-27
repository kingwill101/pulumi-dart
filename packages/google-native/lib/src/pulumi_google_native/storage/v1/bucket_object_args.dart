// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_customer_encryption.dart';
import 'bucket_object_owner.dart';
import 'bucket_object_retention.dart';
import 'object_access_control.dart';

/// The set of arguments for BucketObject.
class BucketObjectArgs {
  /// Access controls on the object.
  final pulumi.Input<List<ObjectAccessControl>>? acl;

  /// The name of the bucket containing this object.
  final pulumi.Input<String> bucket;

  /// Cache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600.
  final pulumi.Input<String>? cacheControl;

  /// Number of underlying components that make up this object. Components are accumulated by compose operations.
  final pulumi.Input<int>? componentCount;

  /// Content-Disposition of the object data.
  final pulumi.Input<String>? contentDisposition;

  /// Content-Encoding of the object data.
  final pulumi.Input<String>? contentEncoding;

  /// Content-Language of the object data.
  final pulumi.Input<String>? contentLanguage;

  /// Content-Type of the object data. If an object is stored without a Content-Type, it is served as application/octet-stream.
  final pulumi.Input<String>? contentType;

  /// CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see Hashes and ETags: Best Practices.
  final pulumi.Input<String>? crc32c;

  /// A timestamp in RFC 3339 format specified by the user for an object.
  final pulumi.Input<String>? customTime;

  /// Metadata of customer-supplied encryption key, if the object is encrypted by such a key.
  final pulumi.Input<BucketObjectCustomerEncryption>? customerEncryption;

  /// HTTP 1.1 Entity tag for the object.
  final pulumi.Input<String>? etag;

  /// Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false.
  final pulumi.Input<bool>? eventBasedHold;

  /// The content generation of this object. Used for object versioning.
  final pulumi.Input<String>? generation;

  /// This is the time (in the future) when the soft-deleted object will no longer be restorable. It is equal to the soft delete time plus the current soft delete retention duration of the bucket.
  final pulumi.Input<String>? hardDeleteTime;

  /// The ID of the object, including the bucket name, object name, and generation number.
  final pulumi.Input<String>? id;

  /// Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  final pulumi.Input<String>? ifGenerationMatch;

  /// Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  final pulumi.Input<String>? ifGenerationNotMatch;

  /// Makes the operation conditional on whether the object's current metageneration matches the given value.
  final pulumi.Input<String>? ifMetagenerationMatch;

  /// Makes the operation conditional on whether the object's current metageneration does not match the given value.
  final pulumi.Input<String>? ifMetagenerationNotMatch;

  /// The kind of item this is. For objects, this is always storage#object.
  final pulumi.Input<String>? kind;

  /// Not currently supported. Specifying the parameter causes the request to fail with status code 400 - Bad Request.
  final pulumi.Input<String>? kmsKeyName;

  /// MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
  final pulumi.Input<String>? md5Hash;

  /// Media download link.
  final pulumi.Input<String>? mediaLink;

  /// User-provided metadata, in key/value pairs.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.
  final pulumi.Input<String>? metageneration;

  /// The name of the object. Required if not specified by URL parameter.
  final pulumi.Input<String>? name;

  /// The owner of the object. This will always be the uploader of the object.
  final pulumi.Input<BucketObjectOwner>? owner;

  /// Apply a predefined set of access controls to this object.
  final pulumi.Input<String>? predefinedAcl;

  /// Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
  final pulumi.Input<String>? projection;

  /// A collection of object level retention parameters.
  final pulumi.Input<BucketObjectRetention>? retention;

  /// A server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).
  final pulumi.Input<String>? retentionExpirationTime;

  /// The link to this object.
  final pulumi.Input<String>? selfLink;

  /// Content-Length of the data in bytes.
  final pulumi.Input<String>? size;

  /// The time at which the object became soft-deleted in RFC 3339 format.
  final pulumi.Input<String>? softDeleteTime;
  final pulumi.Input<dynamic>? source;

  /// Storage class of the object.
  final pulumi.Input<String>? storageClass;

  /// Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.
  final pulumi.Input<bool>? temporaryHold;

  /// The creation time of the object in RFC 3339 format.
  final pulumi.Input<String>? timeCreated;

  /// The time at which the object became noncurrent in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.
  final pulumi.Input<String>? timeDeleted;

  /// The time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated.
  final pulumi.Input<String>? timeStorageClassUpdated;

  /// The modification time of the object metadata in RFC 3339 format. Set initially to object creation time and then updated whenever any metadata of the object changes. This includes changes made by a requester, such as modifying custom metadata, as well as changes made by Cloud Storage on behalf of a requester, such as changing the storage class based on an Object Lifecycle Configuration.
  final pulumi.Input<String>? updated;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;

  BucketObjectArgs({
    this.acl,
    required this.bucket,
    this.cacheControl,
    this.componentCount,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.crc32c,
    this.customTime,
    this.customerEncryption,
    this.etag,
    this.eventBasedHold,
    this.generation,
    this.hardDeleteTime,
    this.id,
    this.ifGenerationMatch,
    this.ifGenerationNotMatch,
    this.ifMetagenerationMatch,
    this.ifMetagenerationNotMatch,
    this.kind,
    this.kmsKeyName,
    this.md5Hash,
    this.mediaLink,
    this.metadata,
    this.metageneration,
    this.name,
    this.owner,
    this.predefinedAcl,
    this.projection,
    this.retention,
    this.retentionExpirationTime,
    this.selfLink,
    this.size,
    this.softDeleteTime,
    this.source,
    this.storageClass,
    this.temporaryHold,
    this.timeCreated,
    this.timeDeleted,
    this.timeStorageClassUpdated,
    this.updated,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aclValue = acl;
    if (aclValue != null) {
      map['acl'] = pulumi.Input.mapOptionalInputValue<List<ObjectAccessControl>,
              List<Map<String, dynamic>>>(
          aclValue,
          (value) => pulumi.Input.encodeList<ObjectAccessControl,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['bucket'] = bucket;
    final cacheControlValue = cacheControl;
    if (cacheControlValue != null) {
      map['cacheControl'] = cacheControlValue;
    }
    final componentCountValue = componentCount;
    if (componentCountValue != null) {
      map['componentCount'] = componentCountValue;
    }
    final contentDispositionValue = contentDisposition;
    if (contentDispositionValue != null) {
      map['contentDisposition'] = contentDispositionValue;
    }
    final contentEncodingValue = contentEncoding;
    if (contentEncodingValue != null) {
      map['contentEncoding'] = contentEncodingValue;
    }
    final contentLanguageValue = contentLanguage;
    if (contentLanguageValue != null) {
      map['contentLanguage'] = contentLanguageValue;
    }
    final contentTypeValue = contentType;
    if (contentTypeValue != null) {
      map['contentType'] = contentTypeValue;
    }
    final crc32cValue = crc32c;
    if (crc32cValue != null) {
      map['crc32c'] = crc32cValue;
    }
    final customTimeValue = customTime;
    if (customTimeValue != null) {
      map['customTime'] = customTimeValue;
    }
    final customerEncryptionValue = customerEncryption;
    if (customerEncryptionValue != null) {
      map['customerEncryption'] = pulumi.Input.mapOptionalInputValue<
              BucketObjectCustomerEncryption, Map<String, dynamic>>(
          customerEncryptionValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final eventBasedHoldValue = eventBasedHold;
    if (eventBasedHoldValue != null) {
      map['eventBasedHold'] = eventBasedHoldValue;
    }
    final generationValue = generation;
    if (generationValue != null) {
      map['generation'] = generationValue;
    }
    final hardDeleteTimeValue = hardDeleteTime;
    if (hardDeleteTimeValue != null) {
      map['hardDeleteTime'] = hardDeleteTimeValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final ifGenerationMatchValue = ifGenerationMatch;
    if (ifGenerationMatchValue != null) {
      map['ifGenerationMatch'] = ifGenerationMatchValue;
    }
    final ifGenerationNotMatchValue = ifGenerationNotMatch;
    if (ifGenerationNotMatchValue != null) {
      map['ifGenerationNotMatch'] = ifGenerationNotMatchValue;
    }
    final ifMetagenerationMatchValue = ifMetagenerationMatch;
    if (ifMetagenerationMatchValue != null) {
      map['ifMetagenerationMatch'] = ifMetagenerationMatchValue;
    }
    final ifMetagenerationNotMatchValue = ifMetagenerationNotMatch;
    if (ifMetagenerationNotMatchValue != null) {
      map['ifMetagenerationNotMatch'] = ifMetagenerationNotMatchValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final md5HashValue = md5Hash;
    if (md5HashValue != null) {
      map['md5Hash'] = md5HashValue;
    }
    final mediaLinkValue = mediaLink;
    if (mediaLinkValue != null) {
      map['mediaLink'] = mediaLinkValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final metagenerationValue = metageneration;
    if (metagenerationValue != null) {
      map['metageneration'] = metagenerationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final ownerValue = owner;
    if (ownerValue != null) {
      map['owner'] = pulumi.Input.mapOptionalInputValue<BucketObjectOwner,
          Map<String, dynamic>>(ownerValue, (value) => value.toMap());
    }
    final predefinedAclValue = predefinedAcl;
    if (predefinedAclValue != null) {
      map['predefinedAcl'] = predefinedAclValue;
    }
    final projectionValue = projection;
    if (projectionValue != null) {
      map['projection'] = projectionValue;
    }
    final retentionValue = retention;
    if (retentionValue != null) {
      map['retention'] = pulumi.Input.mapOptionalInputValue<
          BucketObjectRetention,
          Map<String, dynamic>>(retentionValue, (value) => value.toMap());
    }
    final retentionExpirationTimeValue = retentionExpirationTime;
    if (retentionExpirationTimeValue != null) {
      map['retentionExpirationTime'] = retentionExpirationTimeValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    final softDeleteTimeValue = softDeleteTime;
    if (softDeleteTimeValue != null) {
      map['softDeleteTime'] = softDeleteTimeValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    final temporaryHoldValue = temporaryHold;
    if (temporaryHoldValue != null) {
      map['temporaryHold'] = temporaryHoldValue;
    }
    final timeCreatedValue = timeCreated;
    if (timeCreatedValue != null) {
      map['timeCreated'] = timeCreatedValue;
    }
    final timeDeletedValue = timeDeleted;
    if (timeDeletedValue != null) {
      map['timeDeleted'] = timeDeletedValue;
    }
    final timeStorageClassUpdatedValue = timeStorageClassUpdated;
    if (timeStorageClassUpdatedValue != null) {
      map['timeStorageClassUpdated'] = timeStorageClassUpdatedValue;
    }
    final updatedValue = updated;
    if (updatedValue != null) {
      map['updated'] = updatedValue;
    }
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory BucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return BucketObjectArgs(
      acl: pulumi.Input.asOptionalInput<List<ObjectAccessControl>>(map['acl']),
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      cacheControl: pulumi.Input.asOptionalInput<String>(map['cacheControl']),
      componentCount: pulumi.Input.asOptionalInput<int>(map['componentCount']),
      contentDisposition:
          pulumi.Input.asOptionalInput<String>(map['contentDisposition']),
      contentEncoding:
          pulumi.Input.asOptionalInput<String>(map['contentEncoding']),
      contentLanguage:
          pulumi.Input.asOptionalInput<String>(map['contentLanguage']),
      contentType: pulumi.Input.asOptionalInput<String>(map['contentType']),
      crc32c: pulumi.Input.asOptionalInput<String>(map['crc32c']),
      customTime: pulumi.Input.asOptionalInput<String>(map['customTime']),
      customerEncryption:
          pulumi.Input.asOptionalInput<BucketObjectCustomerEncryption>(
              map['customerEncryption']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      eventBasedHold: pulumi.Input.asOptionalInput<bool>(map['eventBasedHold']),
      generation: pulumi.Input.asOptionalInput<String>(map['generation']),
      hardDeleteTime:
          pulumi.Input.asOptionalInput<String>(map['hardDeleteTime']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      ifGenerationMatch:
          pulumi.Input.asOptionalInput<String>(map['ifGenerationMatch']),
      ifGenerationNotMatch:
          pulumi.Input.asOptionalInput<String>(map['ifGenerationNotMatch']),
      ifMetagenerationMatch:
          pulumi.Input.asOptionalInput<String>(map['ifMetagenerationMatch']),
      ifMetagenerationNotMatch:
          pulumi.Input.asOptionalInput<String>(map['ifMetagenerationNotMatch']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      md5Hash: pulumi.Input.asOptionalInput<String>(map['md5Hash']),
      mediaLink: pulumi.Input.asOptionalInput<String>(map['mediaLink']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      metageneration:
          pulumi.Input.asOptionalInput<String>(map['metageneration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      owner: pulumi.Input.asOptionalInput<BucketObjectOwner>(map['owner']),
      predefinedAcl: pulumi.Input.asOptionalInput<String>(map['predefinedAcl']),
      projection: pulumi.Input.asOptionalInput<String>(map['projection']),
      retention:
          pulumi.Input.asOptionalInput<BucketObjectRetention>(map['retention']),
      retentionExpirationTime:
          pulumi.Input.asOptionalInput<String>(map['retentionExpirationTime']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
      size: pulumi.Input.asOptionalInput<String>(map['size']),
      softDeleteTime:
          pulumi.Input.asOptionalInput<String>(map['softDeleteTime']),
      source: pulumi.Input.asOptionalInput<dynamic>(map['source']),
      storageClass: pulumi.Input.asOptionalInput<String>(map['storageClass']),
      temporaryHold: pulumi.Input.asOptionalInput<bool>(map['temporaryHold']),
      timeCreated: pulumi.Input.asOptionalInput<String>(map['timeCreated']),
      timeDeleted: pulumi.Input.asOptionalInput<String>(map['timeDeleted']),
      timeStorageClassUpdated:
          pulumi.Input.asOptionalInput<String>(map['timeStorageClassUpdated']),
      updated: pulumi.Input.asOptionalInput<String>(map['updated']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
