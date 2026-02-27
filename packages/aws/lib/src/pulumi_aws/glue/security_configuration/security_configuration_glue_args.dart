// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_configuration_encryption_configuration/security_configuration_encryption_configuration.dart';

/// The set of arguments for SecurityConfiguration.
class SecurityConfigurationGlueArgs {
  /// Configuration block containing encryption configuration. Detailed below.
  final pulumi.Input<SecurityConfigurationEncryptionConfiguration>
      encryptionConfiguration;

  /// Name of the security configuration.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  SecurityConfigurationGlueArgs({
    required this.encryptionConfiguration,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionConfiguration'] = pulumi.Input.mapInputValue<
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

  factory SecurityConfigurationGlueArgs.fromMap(Map<String, dynamic> map) {
    return SecurityConfigurationGlueArgs(
      encryptionConfiguration:
          pulumi.Input.asInput<SecurityConfigurationEncryptionConfiguration>(
              map['encryptionConfiguration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
