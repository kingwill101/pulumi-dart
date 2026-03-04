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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeId: (() {
        final guardedValue = map['nodeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
