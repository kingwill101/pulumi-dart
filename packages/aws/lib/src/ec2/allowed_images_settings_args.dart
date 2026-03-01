// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_images_settings_image_criterion.dart';

/// {@template pulumi_ec2_allowed_images_settings_allowed_images_settings_args_doc}
/// The set of arguments for AllowedImagesSettings.
/// {@endtemplate}
/// {@macro pulumi_ec2_allowed_images_settings_allowed_images_settings_args_doc}
class AllowedImagesSettingsArgs {
  /// List of image criteria. Maximum of 10 criterion blocks allowed. See `image_criterion` below.
  final pulumi.Input<List<AllowedImagesSettingsImageCriterion>>? imageCriterions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the allowed images settings. Valid values are `enabled` or `audit-mode`.
  final pulumi.Input<String> state;

  /// Creates a new [AllowedImagesSettingsArgs].
  /// [imageCriterions] List of image criteria. Maximum of 10 criterion blocks allowed. See `image_criterion` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the allowed images settings. Valid values are `enabled` or `audit-mode`.
  AllowedImagesSettingsArgs({
    List<AllowedImagesSettingsImageCriterion>? imageCriterions,
    String? region,
    required String state,
  }) :
      imageCriterions = pulumi.Input.asOptionalInput<List<AllowedImagesSettingsImageCriterion>>(imageCriterions),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageCriterions': ?pulumi.Input.mapOptionalInputValue<List<AllowedImagesSettingsImageCriterion>, List<Map<String, dynamic>>>(imageCriterions, (value) => pulumi.Input.encodeList<AllowedImagesSettingsImageCriterion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'state': state,
    };
  }

  factory AllowedImagesSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AllowedImagesSettingsArgs(
      imageCriterions: map['imageCriterions'] == null ? null : pulumi.Input.decodeList<AllowedImagesSettingsImageCriterion>(map['imageCriterions'], (value) => AllowedImagesSettingsImageCriterion.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] as String,
    );
  }
}

