// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_simpleapplicationserver_get_server_custom_images_get_server_custom_images_args_doc}
/// Arguments for getServerCustomImages.
/// {@endtemplate}
/// {@macro pulumi_simpleapplicationserver_get_server_custom_images_get_server_custom_images_args_doc}
class GetServerCustomImagesArgs {
  /// A list of Custom Image IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Custom Image name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetServerCustomImagesArgs].
  /// [ids] A list of Custom Image IDs.
  /// [nameRegex] A regex string to filter results by Custom Image name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetServerCustomImagesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetServerCustomImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetServerCustomImagesArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

