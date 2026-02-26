// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_data_protection_config_data_protection/web_acl_data_protection_config_data_protection.dart';

class WebAclDataProtectionConfig {
  /// A block for data protection configurations for specific web request field types. See <span pulumi-lang-nodejs="`dataProtection`" pulumi-lang-dotnet="`DataProtection`" pulumi-lang-go="`dataProtection`" pulumi-lang-python="`data_protection`" pulumi-lang-yaml="`dataProtection`" pulumi-lang-java="`dataProtection`">`data_protection`</span> block for details.
  final List<WebAclDataProtectionConfigDataProtection>? dataProtections;

  WebAclDataProtectionConfig({
    this.dataProtections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataProtectionsValue = dataProtections;
    if (dataProtectionsValue != null) {
      map['dataProtections'] = Input.encodeList<
          WebAclDataProtectionConfigDataProtection,
          Map<String, dynamic>>(dataProtectionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclDataProtectionConfig.fromMap(Map<String, dynamic> map) {
    return WebAclDataProtectionConfig(
      dataProtections: map['dataProtections'] == null
          ? null
          : Input.decodeList<WebAclDataProtectionConfigDataProtection>(
              map['dataProtections'],
              (value) => WebAclDataProtectionConfigDataProtection.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
