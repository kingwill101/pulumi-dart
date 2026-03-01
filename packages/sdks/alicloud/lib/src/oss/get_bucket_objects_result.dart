// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_objects_object.dart';

/// Result data returned by getBucketObjects.
class GetBucketObjectsResult {
  final String bucketName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? keyPrefix;
  final String? keyRegex;
  /// A list of bucket objects. Each element contains the following attributes:
  final List<GetBucketObjectsObject> objects;
  final String? outputFile;

  /// Creates a new [GetBucketObjectsResult].
  /// [bucketName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyPrefix] Optional.
  /// [keyRegex] Optional.
  /// [objects] A list of bucket objects. Each element contains the following attributes:
  /// [outputFile] Optional.
  GetBucketObjectsResult({
    required this.bucketName,
    required this.id,
    this.keyPrefix,
    this.keyRegex,
    required this.objects,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'id': id,
      'keyPrefix': ?keyPrefix,
      'keyRegex': ?keyRegex,
      'objects': pulumi.Input.encodeList<GetBucketObjectsObject, Map<String, dynamic>>(objects, (value) => value.toMap()),
      'outputFile': ?outputFile,
    };
  }

  factory GetBucketObjectsResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectsResult(
      bucketName: map['bucketName'] as String,
      id: map['id'] as String,
      keyPrefix: map['keyPrefix'] == null ? null : map['keyPrefix'] as String,
      keyRegex: map['keyRegex'] == null ? null : map['keyRegex'] as String,
      objects: pulumi.Input.decodeList<GetBucketObjectsObject>(map['objects'], (value) => GetBucketObjectsObject.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

