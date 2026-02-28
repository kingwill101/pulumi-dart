// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_data_protection_config_data_protection.dart';

class WebAclDataProtectionConfig {
  /// A block for data protection configurations for specific web request field types. See `data_protection` block for details.
  final List<WebAclDataProtectionConfigDataProtection>? dataProtections;

  /// Creates a new [WebAclDataProtectionConfig].
  /// [dataProtections] A block for data protection configurations for specific web request field types. See `data_protection` block for details.
  WebAclDataProtectionConfig({
    this.dataProtections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataProtectionsValue = dataProtections;
    if (dataProtectionsValue != null) {
      map['dataProtections'] = pulumi.Input.encodeList<
          WebAclDataProtectionConfigDataProtection,
          Map<String, dynamic>>(dataProtectionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclDataProtectionConfig.fromMap(Map<String, dynamic> map) {
    return WebAclDataProtectionConfig(
      dataProtections: map['dataProtections'] == null
          ? null
          : pulumi.Input.decodeList<WebAclDataProtectionConfigDataProtection>(
              map['dataProtections'],
              (value) => WebAclDataProtectionConfigDataProtection.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
