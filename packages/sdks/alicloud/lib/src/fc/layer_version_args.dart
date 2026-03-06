// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_layer_version_layer_version_args_doc}
/// The set of arguments for LayerVersion.
/// {@endtemplate}
/// {@macro pulumi_fc_layer_version_layer_version_args_doc}
class LayerVersionArgs {
  /// The list of runtime environments that are supported by the layer. Valid values: `nodejs14`, `nodejs12`, `nodejs10`, `nodejs8`, `nodejs6`, `python3.9`, `python3`, `python2.7`, `java11`, `java8`, `php7.2`, `go1`,`dotnetcore2.1`, `custom`.
  final pulumi.Input<List<String>> compatibleRuntimes;
  /// The description of the layer version.
  final pulumi.Input<String>? description;
  /// The name of the layer.
  final pulumi.Input<String> layerName;
  /// The name of the OSS bucket that stores the ZIP package of the function code.
  final pulumi.Input<String>? ossBucketName;
  /// The name of the OSS object (ZIP package) that contains the function code.
  final pulumi.Input<String>? ossObjectName;
  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`. When this is not set to `true`, changing any of `compatible_runtimes`, `description`, `layer_name`, `oss_bucket_name`,  `oss_object_name`, or `zip_file` forces deletion of the existing layer version and creation of a new layer version.
  final pulumi.Input<bool>? skipDestroy;
  /// The ZIP package of the function code that is encoded in the Base64 format.
  ///
  /// &gt; **NOTE:** `zip_file` and `oss_bucket_name`, `oss_object_name` cannot be used together.
  final pulumi.Input<String>? zipFile;

  /// Creates a new [LayerVersionArgs].
  /// [compatibleRuntimes] The list of runtime environments that are supported by the layer. Valid values: `nodejs14`, `nodejs12`, `nodejs10`, `nodejs8`, `nodejs6`, `python3.9`, `python3`, `python2.7`, `java11`, `java8`, `php7.2`, `go1`,`dotnetcore2.1`, `custom`.
  /// [description] The description of the layer version.
  /// [layerName] The name of the layer.
  /// [ossBucketName] The name of the OSS bucket that stores the ZIP package of the function code.
  /// [ossObjectName] The name of the OSS object (ZIP package) that contains the function code.
  /// [skipDestroy] Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`. When this is not set to `true`, changing any of `compatible_runtimes`, `description`, `layer_name`, `oss_bucket_name`,  `oss_object_name`, or `zip_file` forces deletion of the existing layer version and creation of a new layer version.
  /// [zipFile] The ZIP package of the function code that is encoded in the Base64 format.
  const LayerVersionArgs({
    required this.compatibleRuntimes,
    this.description,
    required this.layerName,
    this.ossBucketName,
    this.ossObjectName,
    this.skipDestroy,
    this.zipFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibleRuntimes': compatibleRuntimes,
      'description': ?description,
      'layerName': layerName,
      'ossBucketName': ?ossBucketName,
      'ossObjectName': ?ossObjectName,
      'skipDestroy': ?skipDestroy,
      'zipFile': ?zipFile,
    };
  }

  factory LayerVersionArgs.fromMap(Map<String, dynamic> map) {
    return LayerVersionArgs(
      compatibleRuntimes: pulumi.Input.fromValue((map['compatibleRuntimes'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      layerName: pulumi.Input.fromValue(map['layerName'] as String),
      ossBucketName: (() { final guardedValue = map['ossBucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossObjectName: (() { final guardedValue = map['ossObjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zipFile: (() { final guardedValue = map['zipFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

