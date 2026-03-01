// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_simpleapplicationserver_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_simpleapplicationserver_get_images_get_images_args_doc}
class GetImagesArgs {
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? imageType;
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? platform;

  /// Creates a new [GetImagesArgs].
  /// [ids] Optional.
  /// [imageType] Optional.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [platform] Optional.
  GetImagesArgs({
    List<String>? ids,
    String? imageType,
    String? nameRegex,
    String? outputFile,
    String? platform,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      imageType = pulumi.Input.asOptionalInput<String>(imageType),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      platform = pulumi.Input.asOptionalInput<String>(platform);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'imageType': ?imageType,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'platform': ?platform,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
    );
  }
}

