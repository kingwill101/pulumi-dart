// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appstream_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_appstream_get_image_get_image_args_doc}
class GetImageArgs {
  /// ARN of the image being searched for. Cannot be used with `nameRegex` or `name`.
  final pulumi.Input<String>? arn;
  /// Boolean that if it is set to `true` and there are multiple images returned the most recent will be returned. If it is set to `false` and there are multiple images return the datasource will error.
  final pulumi.Input<bool>? mostRecent;
  /// Name of the image being searched for. Cannot be used with `nameRegex` or `arn`.
  final pulumi.Input<String>? name;
  /// Regular expression name of the image being searched for. Cannot be used with `arn` or `name`.
  final pulumi.Input<String>? nameRegex;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of image which must be (`PUBLIC`, `PRIVATE`, or `SHARED`).
  final pulumi.Input<String>? type;

  /// Creates a new [GetImageArgs].
  /// [arn] ARN of the image being searched for. Cannot be used with `nameRegex` or `name`.
  /// [mostRecent] Boolean that if it is set to `true` and there are multiple images returned the most recent will be returned. If it is set to `false` and there are multiple images return the datasource will error.
  /// [name] Name of the image being searched for. Cannot be used with `nameRegex` or `arn`.
  /// [nameRegex] Regular expression name of the image being searched for. Cannot be used with `arn` or `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of image which must be (`PUBLIC`, `PRIVATE`, or `SHARED`).
  const GetImageArgs({
    this.arn,
    this.mostRecent,
    this.name,
    this.nameRegex,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'region': ?region,
      'type': ?type,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
