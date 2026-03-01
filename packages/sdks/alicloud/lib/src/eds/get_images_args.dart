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
    pulumi.Output<String>? desktopInstanceType,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? imageType,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      desktopInstanceType = pulumi.Input.asOptionalInput<String>(desktopInstanceType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      imageType = pulumi.Input.asOptionalInput<String>(imageType),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      desktopInstanceType: map['desktopInstanceType'] == null ? null : pulumi.Output.create<String>(map['desktopInstanceType'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      imageType: map['imageType'] == null ? null : pulumi.Output.create<String>(map['imageType'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

