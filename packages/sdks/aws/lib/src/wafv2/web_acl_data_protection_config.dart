// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_data_protection_config_data_protection.dart';

class WebAclDataProtectionConfig {
  /// A block for data protection configurations for specific web request field types. See `dataProtection` block for details.
  final pulumi.Input<List<WebAclDataProtectionConfigDataProtection>?>? dataProtections;

  /// Creates a new [WebAclDataProtectionConfig].
  /// [dataProtections] A block for data protection configurations for specific web request field types. See `dataProtection` block for details.
  const WebAclDataProtectionConfig({
    this.dataProtections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataProtections': ?pulumi.Input.mapOptionalInputValue<List<WebAclDataProtectionConfigDataProtection>, List<Map<String, dynamic>>>(dataProtections, (value) => pulumi.Input.encodeList<WebAclDataProtectionConfigDataProtection, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclDataProtectionConfig.fromMap(Map<String, dynamic> map) {
    return WebAclDataProtectionConfig(
      dataProtections: (() { final guardedValue = map['dataProtections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclDataProtectionConfigDataProtection>(guardedValue, (value) => WebAclDataProtectionConfigDataProtection.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
