// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_configuration_encryption_configuration.dart';

/// Input properties used for looking up and filtering SecurityConfiguration resources.
class SecurityConfigurationState {
  /// Configuration block containing encryption configuration. Detailed below.
  final pulumi.Input<SecurityConfigurationEncryptionConfiguration>? encryptionConfiguration;
  /// Name of the security configuration.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [SecurityConfigurationState].
  /// [encryptionConfiguration] Configuration block containing encryption configuration. Detailed below.
  /// [name] Name of the security configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  SecurityConfigurationState({
    pulumi.Output<SecurityConfigurationEncryptionConfiguration>? encryptionConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      encryptionConfiguration = pulumi.Input.asOptionalInput<SecurityConfigurationEncryptionConfiguration>(encryptionConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<SecurityConfigurationEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
    };
  }

  factory SecurityConfigurationState.fromMap(Map<String, dynamic> map) {
    return SecurityConfigurationState(
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<SecurityConfigurationEncryptionConfiguration>(SecurityConfigurationEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

