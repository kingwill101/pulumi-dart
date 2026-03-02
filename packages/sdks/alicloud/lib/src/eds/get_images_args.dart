// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_eds_get_images_get_images_args_doc}
class GetImagesArgs {
  /// The desktop type of the image.
  final pulumi.Input<String>? desktopInstanceType;
  /// A list of Image IDs.
  final pulumi.Input<List<String>>? ids;
  /// The image type of the image. Valid values: `SYSTEM`, `CUSTOM`.
  final pulumi.Input<String>? imageType;
  /// A regex string to filter results by Image name.
  final pulumi.Input<String>? nameRegex;
  /// The operating system type of the image. Valid values: `Windows` and `Linux`.
  final pulumi.Input<String>? osType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the image. Valid values: `Creating`, `Available`, `CreateFailed`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetImagesArgs].
  /// [desktopInstanceType] The desktop type of the image.
  /// [ids] A list of Image IDs.
  /// [imageType] The image type of the image. Valid values: `SYSTEM`, `CUSTOM`.
  /// [nameRegex] A regex string to filter results by Image name.
  /// [osType] The operating system type of the image. Valid values: `Windows` and `Linux`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the image. Valid values: `Creating`, `Available`, `CreateFailed`.
  GetImagesArgs({
    this.desktopInstanceType,
    this.ids,
    this.imageType,
    this.nameRegex,
    this.osType,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desktopInstanceType': ?desktopInstanceType,
      'ids': ?ids,
      'imageType': ?imageType,
      'nameRegex': ?nameRegex,
      'osType': ?osType,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      desktopInstanceType: map['desktopInstanceType'] == null ? null : (map['desktopInstanceType']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      imageType: map['imageType'] == null ? null : (map['imageType']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

