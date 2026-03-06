// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_meta_tags_tag.dart';

/// Result data returned by getMetaTags.
class GetMetaTagsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? keyName;
  final String? outputFile;
  final List<GetMetaTagsTag> tags;

  /// Creates a new [GetMetaTagsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyName] Optional.
  /// [outputFile] Optional.
  /// [tags] Required.
  const GetMetaTagsResult({
    required this.id,
    this.keyName,
    this.outputFile,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keyName': ?keyName,
      'outputFile': ?outputFile,
      'tags': pulumi.Input.encodeList<GetMetaTagsTag, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory GetMetaTagsResult.fromMap(Map<String, dynamic> map) {
    return GetMetaTagsResult(
      id: map['id'] as String,
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: pulumi.Input.decodeList<GetMetaTagsTag>(map['tags']!, (value) => GetMetaTagsTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

