import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_configuration_encryption_configuration/security_configuration_encryption_configuration.dart';
import 'security_configuration_glue_args.dart';

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
class SecurityConfigurationGlue extends pulumi.CustomResource {
  /// Configuration block containing encryption configuration. Detailed below.
  late final pulumi.Output<SecurityConfigurationEncryptionConfiguration>
      encryptionConfiguration;

  /// Name of the security configuration.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  SecurityConfigurationGlue(
    String name, {
    SecurityConfigurationGlueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/securityConfiguration:SecurityConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.encryptionConfiguration =
        registerOutput<SecurityConfigurationEncryptionConfiguration>(
            'encryptionConfiguration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
