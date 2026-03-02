// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_honeypot_images_get_honeypot_images_args_doc}
/// Arguments for getHoneypotImages.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_honeypot_images_get_honeypot_images_args_doc}
class GetHoneypotImagesArgs {
  /// A list of Honeypot Image IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Honeypot mirror nam.
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? nodeId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetHoneypotImagesArgs].
  /// [ids] A list of Honeypot Image IDs.
  /// [nameRegex] A regex string to filter results by Honeypot mirror nam.
  /// [nodeId] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetHoneypotImagesArgs({
    this.ids,
    this.nameRegex,
    this.nodeId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'nodeId': ?nodeId,
      'outputFile': ?outputFile,
    };
  }

  factory GetHoneypotImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetHoneypotImagesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

