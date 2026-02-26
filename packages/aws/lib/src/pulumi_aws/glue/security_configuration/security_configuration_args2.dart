// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../security_configuration_encryption_configuration/security_configuration_encryption_configuration.dart';

/// The set of arguments for SecurityConfiguration.
class SecurityConfigurationArgs2 {
  /// Configuration block containing encryption configuration. Detailed below.
  final Input<SecurityConfigurationEncryptionConfiguration>
      encryptionConfiguration;

  /// Name of the security configuration.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  SecurityConfigurationArgs2({
    required this.encryptionConfiguration,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionConfiguration'] = Input.mapInputValue<
            SecurityConfigurationEncryptionConfiguration, Map<String, dynamic>>(
        encryptionConfiguration, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory SecurityConfigurationArgs2.fromMap(Map<String, dynamic> map) {
    return SecurityConfigurationArgs2(
      encryptionConfiguration:
          Input.asInput<SecurityConfigurationEncryptionConfiguration>(
              map['encryptionConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
