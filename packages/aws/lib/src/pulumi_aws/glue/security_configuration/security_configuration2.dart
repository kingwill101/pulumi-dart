import 'package:pulumi/pulumi.dart';
import '../security_configuration_encryption_configuration/security_configuration_encryption_configuration.dart';
import 'security_configuration_args2.dart';

/// Manages a Glue Security Configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Security Configurations using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/securityConfiguration:SecurityConfiguration example example
/// ```
class SecurityConfiguration2 extends CustomResource {
  /// Configuration block containing encryption configuration. Detailed below.
  late final Output<SecurityConfigurationEncryptionConfiguration>
      encryptionConfiguration;

  /// Name of the security configuration.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  SecurityConfiguration2(
    String name, {
    SecurityConfigurationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/securityConfiguration:SecurityConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.encryptionConfiguration =
        registerOutput<SecurityConfigurationEncryptionConfiguration>(
            'encryptionConfiguration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
