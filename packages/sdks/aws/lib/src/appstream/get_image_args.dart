// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appstream_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_appstream_get_image_get_image_args_doc}
class GetImageArgs {
  /// ARN of the image being searched for. Cannot be used with `name_regex` or `name`.
  final pulumi.Input<String>? arn;
  /// Boolean that if it is set to `true` and there are multiple images returned the most recent will be returned. If it is set to `false` and there are multiple images return the datasource will error.
  final pulumi.Input<bool>? mostRecent;
  /// Name of the image being searched for. Cannot be used with `name_regex` or `arn`.
  final pulumi.Input<String>? name;
  /// Regular expression name of the image being searched for. Cannot be used with `arn` or `name`.
  final pulumi.Input<String>? nameRegex;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The type of image which must be (`PUBLIC`, `PRIVATE`, or `SHARED`).
  final pulumi.Input<String>? type;

  /// Creates a new [GetImageArgs].
  /// [arn] ARN of the image being searched for. Cannot be used with `name_regex` or `name`.
  /// [mostRecent] Boolean that if it is set to `true` and there are multiple images returned the most recent will be returned. If it is set to `false` and there are multiple images return the datasource will error.
  /// [name] Name of the image being searched for. Cannot be used with `name_regex` or `arn`.
  /// [nameRegex] Regular expression name of the image being searched for. Cannot be used with `arn` or `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] The type of image which must be (`PUBLIC`, `PRIVATE`, or `SHARED`).
  GetImageArgs({
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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      mostRecent: map['mostRecent'] == null ? null : ((map['mostRecent'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      nameRegex: map['nameRegex'] == null ? null : ((map['nameRegex'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

