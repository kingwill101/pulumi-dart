// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_rsession_app_settings_custom_image.dart';
import 'domain_default_user_settings_rsession_app_settings_default_resource_spec.dart';

class DomainDefaultUserSettingsRSessionAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a RSession app. see `custom_image` Block below.
  final pulumi.Input<List<DomainDefaultUserSettingsRSessionAppSettingsCustomImage>>? customImages;
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block above.
  final pulumi.Input<DomainDefaultUserSettingsRSessionAppSettingsDefaultResourceSpec>? defaultResourceSpec;

  /// Creates a new [DomainDefaultUserSettingsRSessionAppSettings].
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a RSession app. see `custom_image` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block above.
  DomainDefaultUserSettingsRSessionAppSettings({
    this.customImages,
    this.defaultResourceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImages': ?pulumi.Input.mapOptionalInputValue<List<DomainDefaultUserSettingsRSessionAppSettingsCustomImage>, List<Map<String, dynamic>>>(customImages, (value) => pulumi.Input.encodeList<DomainDefaultUserSettingsRSessionAppSettingsCustomImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsRSessionAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
    };
  }

  factory DomainDefaultUserSettingsRSessionAppSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsRSessionAppSettings(
      customImages: map['customImages'] == null ? null : ((pulumi.Input.decodeList<DomainDefaultUserSettingsRSessionAppSettingsCustomImage>(map['customImages']!, (value) => DomainDefaultUserSettingsRSessionAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      defaultResourceSpec: map['defaultResourceSpec'] == null ? null : ((DomainDefaultUserSettingsRSessionAppSettingsDefaultResourceSpec.fromMap((map['defaultResourceSpec']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

