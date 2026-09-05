// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_configuration_encryption_configuration.dart';

/// Input properties used for looking up and filtering SecurityConfiguration resources.
class SecurityConfigurationState {
  /// Configuration block containing encryption configuration. Detailed below.
  final pulumi.Input<SecurityConfigurationEncryptionConfiguration?>? encryptionConfiguration;
  /// Name of the security configuration.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [SecurityConfigurationState].
  /// [encryptionConfiguration] Configuration block containing encryption configuration. Detailed below.
  /// [name] Name of the security configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const SecurityConfigurationState({
    this.encryptionConfiguration,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<SecurityConfigurationEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
    };
  }

  factory SecurityConfigurationState.fromMap(Map<String, dynamic> map) {
    return SecurityConfigurationState(
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityConfigurationEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
