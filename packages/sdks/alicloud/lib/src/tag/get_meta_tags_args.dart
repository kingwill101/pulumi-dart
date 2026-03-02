// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tag_get_meta_tags_get_meta_tags_args_doc}
/// Arguments for getMetaTags.
/// {@endtemplate}
/// {@macro pulumi_tag_get_meta_tags_get_meta_tags_args_doc}
class GetMetaTagsArgs {
  /// The name of the key.
  final pulumi.Input<String>? keyName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetMetaTagsArgs].
  /// [keyName] The name of the key.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetMetaTagsArgs({
    this.keyName,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'outputFile': ?outputFile,
    };
  }

  factory GetMetaTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetMetaTagsArgs(
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

