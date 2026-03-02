// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LayerVersion resources.
class LayerVersionState {
  /// The access mode of Layer Version.
  final pulumi.Input<String>? acl;
  /// The arn of Layer Version.
  final pulumi.Input<String>? arn;
  /// The checksum of the layer code package.
  final pulumi.Input<String>? codeCheckSum;
  /// The list of runtime environments that are supported by the layer. Valid values: `nodejs14`, `nodejs12`, `nodejs10`, `nodejs8`, `nodejs6`, `python3.9`, `python3`, `python2.7`, `java11`, `java8`, `php7.2`, `go1`,`dotnetcore2.1`, `custom`.
  final pulumi.Input<List<String>>? compatibleRuntimes;
  /// The description of the layer version.
  final pulumi.Input<String>? description;
  /// The name of the layer.
  final pulumi.Input<String>? layerName;
  /// The name of the OSS bucket that stores the ZIP package of the function code.
  final pulumi.Input<String>? ossBucketName;
  /// The name of the OSS object (ZIP package) that contains the function code.
  final pulumi.Input<String>? ossObjectName;
  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`. When this is not set to `true`, changing any of `compatible_runtimes`, `description`, `layer_name`, `oss_bucket_name`,  `oss_object_name`, or `zip_file` forces deletion of the existing layer version and creation of a new layer version.
  final pulumi.Input<bool>? skipDestroy;
  /// The version of Layer Version.
  final pulumi.Input<String>? version;
  /// The ZIP package of the function code that is encoded in the Base64 format.
  ///
  /// > **NOTE:** `zip_file` and `oss_bucket_name`, `oss_object_name` cannot be used together.
  final pulumi.Input<String>? zipFile;

  /// Creates a new [LayerVersionState].
  /// [acl] The access mode of Layer Version.
  /// [arn] The arn of Layer Version.
  /// [codeCheckSum] The checksum of the layer code package.
  /// [compatibleRuntimes] The list of runtime environments that are supported by the layer. Valid values: `nodejs14`, `nodejs12`, `nodejs10`, `nodejs8`, `nodejs6`, `python3.9`, `python3`, `python2.7`, `java11`, `java8`, `php7.2`, `go1`,`dotnetcore2.1`, `custom`.
  /// [description] The description of the layer version.
  /// [layerName] The name of the layer.
  /// [ossBucketName] The name of the OSS bucket that stores the ZIP package of the function code.
  /// [ossObjectName] The name of the OSS object (ZIP package) that contains the function code.
  /// [skipDestroy] Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`. When this is not set to `true`, changing any of `compatible_runtimes`, `description`, `layer_name`, `oss_bucket_name`,  `oss_object_name`, or `zip_file` forces deletion of the existing layer version and creation of a new layer version.
  /// [version] The version of Layer Version.
  /// [zipFile] The ZIP package of the function code that is encoded in the Base64 format.
  LayerVersionState({
    this.acl,
    this.arn,
    this.codeCheckSum,
    this.compatibleRuntimes,
    this.description,
    this.layerName,
    this.ossBucketName,
    this.ossObjectName,
    this.skipDestroy,
    this.version,
    this.zipFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'arn': ?arn,
      'codeCheckSum': ?codeCheckSum,
      'compatibleRuntimes': ?compatibleRuntimes,
      'description': ?description,
      'layerName': ?layerName,
      'ossBucketName': ?ossBucketName,
      'ossObjectName': ?ossObjectName,
      'skipDestroy': ?skipDestroy,
      'version': ?version,
      'zipFile': ?zipFile,
    };
  }

  factory LayerVersionState.fromMap(Map<String, dynamic> map) {
    return LayerVersionState(
      acl: map['acl'] == null ? null : (map['acl'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      codeCheckSum: map['codeCheckSum'] == null ? null : (map['codeCheckSum'] as String).input(),
      compatibleRuntimes: map['compatibleRuntimes'] == null ? null : ((map['compatibleRuntimes'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      layerName: map['layerName'] == null ? null : (map['layerName'] as String).input(),
      ossBucketName: map['ossBucketName'] == null ? null : (map['ossBucketName'] as String).input(),
      ossObjectName: map['ossObjectName'] == null ? null : (map['ossObjectName'] as String).input(),
      skipDestroy: map['skipDestroy'] == null ? null : (map['skipDestroy'] as bool).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      zipFile: map['zipFile'] == null ? null : (map['zipFile'] as String).input(),
    );
  }
}

