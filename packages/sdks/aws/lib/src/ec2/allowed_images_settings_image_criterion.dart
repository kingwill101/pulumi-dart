// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_images_settings_image_criterion_creation_date_condition.dart';
import 'allowed_images_settings_image_criterion_deprecation_time_condition.dart';

class AllowedImagesSettingsImageCriterion {
  /// Condition based on AMI creation date. See `creation_date_condition` below.
  final pulumi.Input<AllowedImagesSettingsImageCriterionCreationDateCondition>?
  creationDateCondition;

  /// Condition based on AMI deprecation time. See `deprecation_time_condition` below.
  final pulumi.Input<
    AllowedImagesSettingsImageCriterionDeprecationTimeCondition
  >?
  deprecationTimeCondition;

  /// Set of AMI name patterns to allow. Maximum of 50 names.
  final pulumi.Input<List<String>>? imageNames;

  /// Set of image providers to allow. Maximum of 200 providers. Valid values include `amazon`, `aws-marketplace`, `aws-backup-vault`, `none`, or a 12-digit AWS account ID.
  final pulumi.Input<List<String>>? imageProviders;

  /// Set of AWS Marketplace product codes to allow. Maximum of 50 product codes.
  final pulumi.Input<List<String>>? marketplaceProductCodes;

  /// Creates a new [AllowedImagesSettingsImageCriterion].
  /// [creationDateCondition] Condition based on AMI creation date. See `creation_date_condition` below.
  /// [deprecationTimeCondition] Condition based on AMI deprecation time. See `deprecation_time_condition` below.
  /// [imageNames] Set of AMI name patterns to allow. Maximum of 50 names.
  /// [imageProviders] Set of image providers to allow. Maximum of 200 providers. Valid values include `amazon`, `aws-marketplace`, `aws-backup-vault`, `none`, or a 12-digit AWS account ID.
  /// [marketplaceProductCodes] Set of AWS Marketplace product codes to allow. Maximum of 50 product codes.
  AllowedImagesSettingsImageCriterion({
    this.creationDateCondition,
    this.deprecationTimeCondition,
    this.imageNames,
    this.imageProviders,
    this.marketplaceProductCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationDateCondition':
          ?pulumi.Input.mapOptionalInputValue<
            AllowedImagesSettingsImageCriterionCreationDateCondition,
            Map<String, dynamic>
          >(creationDateCondition, (value) => value.toMap()),
      'deprecationTimeCondition':
          ?pulumi.Input.mapOptionalInputValue<
            AllowedImagesSettingsImageCriterionDeprecationTimeCondition,
            Map<String, dynamic>
          >(deprecationTimeCondition, (value) => value.toMap()),
      'imageNames': ?imageNames,
      'imageProviders': ?imageProviders,
      'marketplaceProductCodes': ?marketplaceProductCodes,
    };
  }

  factory AllowedImagesSettingsImageCriterion.fromMap(
    Map<String, dynamic> map,
  ) {
    return AllowedImagesSettingsImageCriterion(
      creationDateCondition: (() {
        final guardedValue = map['creationDateCondition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AllowedImagesSettingsImageCriterionCreationDateCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deprecationTimeCondition: (() {
        final guardedValue = map['deprecationTimeCondition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AllowedImagesSettingsImageCriterionDeprecationTimeCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      imageNames: (() {
        final guardedValue = map['imageNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      imageProviders: (() {
        final guardedValue = map['imageProviders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      marketplaceProductCodes: (() {
        final guardedValue = map['marketplaceProductCodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
