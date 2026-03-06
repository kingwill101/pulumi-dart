// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_images_settings_image_criterion.dart';

/// Input properties used for looking up and filtering AllowedImagesSettings resources.
class AllowedImagesSettingsState {
  /// List of image criteria. Maximum of 10 criterion blocks allowed. See `image_criterion` below.
  final pulumi.Input<List<AllowedImagesSettingsImageCriterion>>? imageCriterions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the allowed images settings. Valid values are `enabled` or `audit-mode`.
  final pulumi.Input<String>? state;

  /// Creates a new [AllowedImagesSettingsState].
  /// [imageCriterions] List of image criteria. Maximum of 10 criterion blocks allowed. See `image_criterion` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the allowed images settings. Valid values are `enabled` or `audit-mode`.
  const AllowedImagesSettingsState({
    this.imageCriterions,
    this.region,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageCriterions': ?pulumi.Input.mapOptionalInputValue<List<AllowedImagesSettingsImageCriterion>, List<Map<String, dynamic>>>(imageCriterions, (value) => pulumi.Input.encodeList<AllowedImagesSettingsImageCriterion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'state': ?state,
    };
  }

  factory AllowedImagesSettingsState.fromMap(Map<String, dynamic> map) {
    return AllowedImagesSettingsState(
      imageCriterions: (() { final guardedValue = map['imageCriterions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AllowedImagesSettingsImageCriterion>(guardedValue, (value) => AllowedImagesSettingsImageCriterion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

