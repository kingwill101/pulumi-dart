// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambdamicrovms_get_image_version_get_image_version_args_doc}
/// Arguments for getImageVersion.
/// {@endtemplate}
/// {@macro pulumi_lambdamicrovms_get_image_version_get_image_version_args_doc}
class GetImageVersionArgs {
  /// ARN or ID of the MicroVM image.
  final pulumi.Input<String> imageIdentifier;
  /// Version of the MicroVM image.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> imageVersion;
  /// Region where this data source will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetImageVersionArgs].
  /// [imageIdentifier] ARN or ID of the MicroVM image.
  /// [imageVersion] Version of the MicroVM image.
  /// [region] Region where this data source will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetImageVersionArgs({
    required this.imageIdentifier,
    required this.imageVersion,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageIdentifier': imageIdentifier,
      'imageVersion': imageVersion,
      'region': ?region,
    };
  }

  factory GetImageVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetImageVersionArgs(
      imageIdentifier: pulumi.Input.fromValue(map['imageIdentifier'] as String),
      imageVersion: pulumi.Input.fromValue(map['imageVersion'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
