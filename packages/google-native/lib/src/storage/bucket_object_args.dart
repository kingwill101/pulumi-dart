// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_customer_encryption.dart';
import 'bucket_object_owner.dart';
import 'bucket_object_retention.dart';
import 'object_access_control.dart';

/// {@template pulumi_storage_v1_bucket_object_args_doc}
/// The set of arguments for BucketObject.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_bucket_object_args_doc}
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

  /// Creates a new [BucketObjectArgs].
  /// [acl] Access controls on the object.
  /// [bucket] The name of the bucket containing this object.
  /// [cacheControl] Cache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600.
  /// [componentCount] Number of underlying components that make up this object. Components are accumulated by compose operations.
  /// [contentDisposition] Content-Disposition of the object data.
  /// [contentEncoding] Content-Encoding of the object data.
  /// [contentLanguage] Content-Language of the object data.
  /// [contentType] Content-Type of the object data. If an object is stored without a Content-Type, it is served as application/octet-stream.
  /// [crc32c] CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see Hashes and ETags: Best Practices.
  /// [customTime] A timestamp in RFC 3339 format specified by the user for an object.
  /// [customerEncryption] Metadata of customer-supplied encryption key, if the object is encrypted by such a key.
  /// [etag] HTTP 1.1 Entity tag for the object.
  /// [eventBasedHold] Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false.
  /// [generation] The content generation of this object. Used for object versioning.
  /// [hardDeleteTime] This is the time (in the future) when the soft-deleted object will no longer be restorable. It is equal to the soft delete time plus the current soft delete retention duration of the bucket.
  /// [id] The ID of the object, including the bucket name, object name, and generation number.
  /// [ifGenerationMatch] Makes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
  /// [ifGenerationNotMatch] Makes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
  /// [ifMetagenerationMatch] Makes the operation conditional on whether the object's current metageneration matches the given value.
  /// [ifMetagenerationNotMatch] Makes the operation conditional on whether the object's current metageneration does not match the given value.
  /// [kind] The kind of item this is. For objects, this is always storage#object.
  /// [kmsKeyName] Not currently supported. Specifying the parameter causes the request to fail with status code 400 - Bad Request.
  /// [md5Hash] MD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.
  /// [mediaLink] Media download link.
  /// [metadata] User-provided metadata, in key/value pairs.
  /// [metageneration] The version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.
  /// [name] The name of the object. Required if not specified by URL parameter.
  /// [owner] The owner of the object. This will always be the uploader of the object.
  /// [predefinedAcl] Apply a predefined set of access controls to this object.
  /// [projection] Set of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full.
  /// [retention] A collection of object level retention parameters.
  /// [retentionExpirationTime] A server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).
  /// [selfLink] The link to this object.
  /// [size] Content-Length of the data in bytes.
  /// [softDeleteTime] The time at which the object became soft-deleted in RFC 3339 format.
  /// [source] Optional.
  /// [storageClass] Storage class of the object.
  /// [temporaryHold] Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.
  /// [timeCreated] The creation time of the object in RFC 3339 format.
  /// [timeDeleted] The time at which the object became noncurrent in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.
  /// [timeStorageClassUpdated] The time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated.
  /// [updated] The modification time of the object metadata in RFC 3339 format. Set initially to object creation time and then updated whenever any metadata of the object changes. This includes changes made by a requester, such as modifying custom metadata, as well as changes made by Cloud Storage on behalf of a requester, such as changing the storage class based on an Object Lifecycle Configuration.
  /// [userProject] The project to be billed for this request. Required for Requester Pays buckets.
  BucketObjectArgs({
    List<ObjectAccessControl>? acl,
    required String bucket,
    String? cacheControl,
    int? componentCount,
    String? contentDisposition,
    String? contentEncoding,
    String? contentLanguage,
    String? contentType,
    String? crc32c,
    String? customTime,
    BucketObjectCustomerEncryption? customerEncryption,
    String? etag,
    bool? eventBasedHold,
    String? generation,
    String? hardDeleteTime,
    String? id,
    String? ifGenerationMatch,
    String? ifGenerationNotMatch,
    String? ifMetagenerationMatch,
    String? ifMetagenerationNotMatch,
    String? kind,
    String? kmsKeyName,
    String? md5Hash,
    String? mediaLink,
    Map<String, String>? metadata,
    String? metageneration,
    String? name,
    BucketObjectOwner? owner,
    String? predefinedAcl,
    String? projection,
    BucketObjectRetention? retention,
    String? retentionExpirationTime,
    String? selfLink,
    String? size,
    String? softDeleteTime,
    dynamic source,
    String? storageClass,
    bool? temporaryHold,
    String? timeCreated,
    String? timeDeleted,
    String? timeStorageClassUpdated,
    String? updated,
    String? userProject,
  })  : acl = pulumi.Input.asOptionalInput<List<ObjectAccessControl>>(acl),
        bucket = pulumi.Input.asInput<String>(bucket),
        cacheControl = pulumi.Input.asOptionalInput<String>(cacheControl),
        componentCount = pulumi.Input.asOptionalInput<int>(componentCount),
        contentDisposition =
            pulumi.Input.asOptionalInput<String>(contentDisposition),
        contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
        contentLanguage = pulumi.Input.asOptionalInput<String>(contentLanguage),
        contentType = pulumi.Input.asOptionalInput<String>(contentType),
        crc32c = pulumi.Input.asOptionalInput<String>(crc32c),
        customTime = pulumi.Input.asOptionalInput<String>(customTime),
        customerEncryption =
            pulumi.Input.asOptionalInput<BucketObjectCustomerEncryption>(
                customerEncryption),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        eventBasedHold = pulumi.Input.asOptionalInput<bool>(eventBasedHold),
        generation = pulumi.Input.asOptionalInput<String>(generation),
        hardDeleteTime = pulumi.Input.asOptionalInput<String>(hardDeleteTime),
        id = pulumi.Input.asOptionalInput<String>(id),
        ifGenerationMatch =
            pulumi.Input.asOptionalInput<String>(ifGenerationMatch),
        ifGenerationNotMatch =
            pulumi.Input.asOptionalInput<String>(ifGenerationNotMatch),
        ifMetagenerationMatch =
            pulumi.Input.asOptionalInput<String>(ifMetagenerationMatch),
        ifMetagenerationNotMatch =
            pulumi.Input.asOptionalInput<String>(ifMetagenerationNotMatch),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
        md5Hash = pulumi.Input.asOptionalInput<String>(md5Hash),
        mediaLink = pulumi.Input.asOptionalInput<String>(mediaLink),
        metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
        metageneration = pulumi.Input.asOptionalInput<String>(metageneration),
        name = pulumi.Input.asOptionalInput<String>(name),
        owner = pulumi.Input.asOptionalInput<BucketObjectOwner>(owner),
        predefinedAcl = pulumi.Input.asOptionalInput<String>(predefinedAcl),
        projection = pulumi.Input.asOptionalInput<String>(projection),
        retention =
            pulumi.Input.asOptionalInput<BucketObjectRetention>(retention),
        retentionExpirationTime =
            pulumi.Input.asOptionalInput<String>(retentionExpirationTime),
        selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
        size = pulumi.Input.asOptionalInput<String>(size),
        softDeleteTime = pulumi.Input.asOptionalInput<String>(softDeleteTime),
        source = pulumi.Input.asOptionalInput<dynamic>(source),
        storageClass = pulumi.Input.asOptionalInput<String>(storageClass),
        temporaryHold = pulumi.Input.asOptionalInput<bool>(temporaryHold),
        timeCreated = pulumi.Input.asOptionalInput<String>(timeCreated),
        timeDeleted = pulumi.Input.asOptionalInput<String>(timeDeleted),
        timeStorageClassUpdated =
            pulumi.Input.asOptionalInput<String>(timeStorageClassUpdated),
        updated = pulumi.Input.asOptionalInput<String>(updated),
        userProject = pulumi.Input.asOptionalInput<String>(userProject);

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
      acl: map['acl'] == null
          ? null
          : pulumi.Input.decodeList<ObjectAccessControl>(
              map['acl'],
              (value) => ObjectAccessControl.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bucket: map['bucket'] as String,
      cacheControl:
          map['cacheControl'] == null ? null : map['cacheControl'] as String,
      componentCount:
          map['componentCount'] == null ? null : map['componentCount'] as int,
      contentDisposition: map['contentDisposition'] == null
          ? null
          : map['contentDisposition'] as String,
      contentEncoding: map['contentEncoding'] == null
          ? null
          : map['contentEncoding'] as String,
      contentLanguage: map['contentLanguage'] == null
          ? null
          : map['contentLanguage'] as String,
      contentType:
          map['contentType'] == null ? null : map['contentType'] as String,
      crc32c: map['crc32c'] == null ? null : map['crc32c'] as String,
      customTime:
          map['customTime'] == null ? null : map['customTime'] as String,
      customerEncryption: map['customerEncryption'] == null
          ? null
          : BucketObjectCustomerEncryption.fromMap(
              (map['customerEncryption'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      eventBasedHold:
          map['eventBasedHold'] == null ? null : map['eventBasedHold'] as bool,
      generation:
          map['generation'] == null ? null : map['generation'] as String,
      hardDeleteTime: map['hardDeleteTime'] == null
          ? null
          : map['hardDeleteTime'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ifGenerationMatch: map['ifGenerationMatch'] == null
          ? null
          : map['ifGenerationMatch'] as String,
      ifGenerationNotMatch: map['ifGenerationNotMatch'] == null
          ? null
          : map['ifGenerationNotMatch'] as String,
      ifMetagenerationMatch: map['ifMetagenerationMatch'] == null
          ? null
          : map['ifMetagenerationMatch'] as String,
      ifMetagenerationNotMatch: map['ifMetagenerationNotMatch'] == null
          ? null
          : map['ifMetagenerationNotMatch'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      md5Hash: map['md5Hash'] == null ? null : map['md5Hash'] as String,
      mediaLink: map['mediaLink'] == null ? null : map['mediaLink'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      metageneration: map['metageneration'] == null
          ? null
          : map['metageneration'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      owner: map['owner'] == null
          ? null
          : BucketObjectOwner.fromMap(
              (map['owner'] as Map).cast<String, dynamic>()),
      predefinedAcl:
          map['predefinedAcl'] == null ? null : map['predefinedAcl'] as String,
      projection:
          map['projection'] == null ? null : map['projection'] as String,
      retention: map['retention'] == null
          ? null
          : BucketObjectRetention.fromMap(
              (map['retention'] as Map).cast<String, dynamic>()),
      retentionExpirationTime: map['retentionExpirationTime'] == null
          ? null
          : map['retentionExpirationTime'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      softDeleteTime: map['softDeleteTime'] == null
          ? null
          : map['softDeleteTime'] as String,
      source: map['source'] == null ? null : map['source'],
      storageClass:
          map['storageClass'] == null ? null : map['storageClass'] as String,
      temporaryHold:
          map['temporaryHold'] == null ? null : map['temporaryHold'] as bool,
      timeCreated:
          map['timeCreated'] == null ? null : map['timeCreated'] as String,
      timeDeleted:
          map['timeDeleted'] == null ? null : map['timeDeleted'] as String,
      timeStorageClassUpdated: map['timeStorageClassUpdated'] == null
          ? null
          : map['timeStorageClassUpdated'] as String,
      updated: map['updated'] == null ? null : map['updated'] as String,
      userProject:
          map['userProject'] == null ? null : map['userProject'] as String,
    );
  }
}
