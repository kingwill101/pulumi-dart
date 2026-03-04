// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_configuration_encryption_configuration.dart';

/// {@template pulumi_glue_security_configuration_security_configuration_args_doc}
/// The set of arguments for SecurityConfiguration.
/// {@endtemplate}
/// {@macro pulumi_glue_security_configuration_security_configuration_args_doc}
class SecurityConfigurationArgs {
  /// Configuration block containing encryption configuration. Detailed below.
  final pulumi.Input<SecurityConfigurationEncryptionConfiguration>
  encryptionConfiguration;

  /// Name of the security configuration.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [SecurityConfigurationArgs].
  /// [encryptionConfiguration] Configuration block containing encryption configuration. Detailed below.
  /// [name] Name of the security configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  SecurityConfigurationArgs({
    required this.encryptionConfiguration,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfiguration':
          pulumi.Input.mapInputValue<
            SecurityConfigurationEncryptionConfiguration,
            Map<String, dynamic>
          >(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
    };
  }

  factory SecurityConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return SecurityConfigurationArgs(
      encryptionConfiguration: pulumi.Input.fromValue(
        SecurityConfigurationEncryptionConfiguration.fromMap(
          (map['encryptionConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
