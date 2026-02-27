// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../allowed_images_settings_image_criterion/allowed_images_settings_image_criterion.dart';

/// The set of arguments for AllowedImagesSettings.
class AllowedImagesSettingsArgs {
  /// List of image criteria. Maximum of 10 criterion blocks allowed. See `image_criterion` below.
  final Input<List<AllowedImagesSettingsImageCriterion>>? imageCriterions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// State of the allowed images settings. Valid values are `enabled` or `audit-mode`.
  final Input<String> state;

  AllowedImagesSettingsArgs({
    this.imageCriterions,
    this.region,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageCriterionsValue = imageCriterions;
    if (imageCriterionsValue != null) {
      map['imageCriterions'] = Input.mapOptionalInputValue<
              List<AllowedImagesSettingsImageCriterion>,
              List<Map<String, dynamic>>>(
          imageCriterionsValue,
          (value) => Input.encodeList<AllowedImagesSettingsImageCriterion,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['state'] = state;
    return map;
  }

  factory AllowedImagesSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AllowedImagesSettingsArgs(
      imageCriterions:
          Input.asOptionalInput<List<AllowedImagesSettingsImageCriterion>>(
              map['imageCriterions']),
      region: Input.asOptionalInput<String>(map['region']),
      state: Input.asInput<String>(map['state']),
    );
  }
}
