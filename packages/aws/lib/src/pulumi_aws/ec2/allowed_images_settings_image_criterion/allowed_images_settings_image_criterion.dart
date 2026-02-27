// ignore_for_file: unused_element, unnecessary_cast

import '../allowed_images_settings_image_criterion_creation_date_condition/allowed_images_settings_image_criterion_creation_date_condition.dart';
import '../allowed_images_settings_image_criterion_deprecation_time_condition/allowed_images_settings_image_criterion_deprecation_time_condition.dart';

class AllowedImagesSettingsImageCriterion {
  /// Condition based on AMI creation date. See `creation_date_condition` below.
  final AllowedImagesSettingsImageCriterionCreationDateCondition?
      creationDateCondition;

  /// Condition based on AMI deprecation time. See `deprecation_time_condition` below.
  final AllowedImagesSettingsImageCriterionDeprecationTimeCondition?
      deprecationTimeCondition;

  /// Set of AMI name patterns to allow. Maximum of 50 names.
  final List<String>? imageNames;

  /// Set of image providers to allow. Maximum of 200 providers. Valid values include `amazon`, `aws-marketplace`, `aws-backup-vault`, `none`, or a 12-digit AWS account ID.
  final List<String>? imageProviders;

  /// Set of AWS Marketplace product codes to allow. Maximum of 50 product codes.
  final List<String>? marketplaceProductCodes;

  AllowedImagesSettingsImageCriterion({
    this.creationDateCondition,
    this.deprecationTimeCondition,
    this.imageNames,
    this.imageProviders,
    this.marketplaceProductCodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final creationDateConditionValue = creationDateCondition;
    if (creationDateConditionValue != null) {
      map['creationDateCondition'] = creationDateConditionValue.toMap();
    }
    final deprecationTimeConditionValue = deprecationTimeCondition;
    if (deprecationTimeConditionValue != null) {
      map['deprecationTimeCondition'] = deprecationTimeConditionValue.toMap();
    }
    final imageNamesValue = imageNames;
    if (imageNamesValue != null) {
      map['imageNames'] = imageNamesValue;
    }
    final imageProvidersValue = imageProviders;
    if (imageProvidersValue != null) {
      map['imageProviders'] = imageProvidersValue;
    }
    final marketplaceProductCodesValue = marketplaceProductCodes;
    if (marketplaceProductCodesValue != null) {
      map['marketplaceProductCodes'] = marketplaceProductCodesValue;
    }
    return map;
  }

  factory AllowedImagesSettingsImageCriterion.fromMap(
      Map<String, dynamic> map) {
    return AllowedImagesSettingsImageCriterion(
      creationDateCondition: map['creationDateCondition'] == null
          ? null
          : AllowedImagesSettingsImageCriterionCreationDateCondition.fromMap(
              (map['creationDateCondition'] as Map).cast<String, dynamic>()),
      deprecationTimeCondition: map['deprecationTimeCondition'] == null
          ? null
          : AllowedImagesSettingsImageCriterionDeprecationTimeCondition.fromMap(
              (map['deprecationTimeCondition'] as Map).cast<String, dynamic>()),
      imageNames: map['imageNames'] == null
          ? null
          : (map['imageNames'] as List).cast<String>(),
      imageProviders: map['imageProviders'] == null
          ? null
          : (map['imageProviders'] as List).cast<String>(),
      marketplaceProductCodes: map['marketplaceProductCodes'] == null
          ? null
          : (map['marketplaceProductCodes'] as List).cast<String>(),
    );
  }
}
