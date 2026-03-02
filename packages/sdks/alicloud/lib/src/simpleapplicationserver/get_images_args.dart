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
    this.ids,
    this.imageType,
    this.nameRegex,
    this.outputFile,
    this.platform,
  });

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
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      imageType: map['imageType'] == null ? null : (map['imageType'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      platform: map['platform'] == null ? null : (map['platform'] as String).input(),
    );
  }
}

