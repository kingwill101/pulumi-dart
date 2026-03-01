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
  /// > **NOTE:** `zip_file` and `oss_bucket_name`, `oss_object_name` cannot be used together.
  final pulumi.Input<String>? zipFile;

  /// Creates a new [LayerVersionArgs].
  /// [compatibleRuntimes] The list of runtime environments that are supported by the layer. Valid values: `nodejs14`, `nodejs12`, `nodejs10`, `nodejs8`, `nodejs6`, `python3.9`, `python3`, `python2.7`, `java11`, `java8`, `php7.2`, `go1`,`dotnetcore2.1`, `custom`.
  /// [description] The description of the layer version.
  /// [layerName] The name of the layer.
  /// [ossBucketName] The name of the OSS bucket that stores the ZIP package of the function code.
  /// [ossObjectName] The name of the OSS object (ZIP package) that contains the function code.
  /// [skipDestroy] Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`. When this is not set to `true`, changing any of `compatible_runtimes`, `description`, `layer_name`, `oss_bucket_name`,  `oss_object_name`, or `zip_file` forces deletion of the existing layer version and creation of a new layer version.
  /// [zipFile] The ZIP package of the function code that is encoded in the Base64 format.
  LayerVersionArgs({
    required List<String> compatibleRuntimes,
    String? description,
    required String layerName,
    String? ossBucketName,
    String? ossObjectName,
    bool? skipDestroy,
    String? zipFile,
  }) :
      compatibleRuntimes = pulumi.Input.asInput<List<String>>(compatibleRuntimes),
      description = pulumi.Input.asOptionalInput<String>(description),
      layerName = pulumi.Input.asInput<String>(layerName),
      ossBucketName = pulumi.Input.asOptionalInput<String>(ossBucketName),
      ossObjectName = pulumi.Input.asOptionalInput<String>(ossObjectName),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      zipFile = pulumi.Input.asOptionalInput<String>(zipFile);

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
      compatibleRuntimes: (map['compatibleRuntimes'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      layerName: map['layerName'] as String,
      ossBucketName: map['ossBucketName'] == null ? null : map['ossBucketName'] as String,
      ossObjectName: map['ossObjectName'] == null ? null : map['ossObjectName'] as String,
      skipDestroy: map['skipDestroy'] == null ? null : map['skipDestroy'] as bool,
      zipFile: map['zipFile'] == null ? null : map['zipFile'] as String,
    );
  }
}

