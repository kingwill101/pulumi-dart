// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Image {
  /// Image reference URL if type is docker. Environment name if type is azureml
  final pulumi.Input<String?>? reference;
  /// Type of the image. Possible values are: docker - For docker images. azureml - For AzureML Environment images (custom and curated)
  final pulumi.Input<dynamic>? type;
  /// Version of image being used. If latest then skip this field
  final pulumi.Input<String?>? version;

  /// Creates a new [Image].
  /// [reference] Image reference URL if type is docker. Environment name if type is azureml
  /// [type] Type of the image. Possible values are: docker - For docker images. azureml - For AzureML Environment images (custom and curated)
  /// [version] Version of image being used. If latest then skip this field
  Image({
    this.reference,
    pulumi.Input<dynamic>? type,
    this.version,
  }) : type = type ?? pulumi.Input.fromValue('docker');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': ?reference,
      'type': ?type,
      'version': ?version,
    };
  }

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      reference: (() { final guardedValue = map['reference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
