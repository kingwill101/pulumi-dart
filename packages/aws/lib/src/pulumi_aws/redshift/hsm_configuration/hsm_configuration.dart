import 'package:pulumi/pulumi.dart' as pulumi;
import 'hsm_configuration_args.dart';

/// Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift HSM Client Certificates using `hsm_configuration_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/hsmConfiguration:HsmConfiguration example example
/// ```
class HsmConfiguration extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Hsm Client Certificate.
  late final pulumi.Output<String> arn;

  /// A text description of the HSM configuration to be created.
  late final pulumi.Output<String> description;

  /// The identifier to be assigned to the new Amazon Redshift HSM configuration.
  late final pulumi.Output<String> hsmConfigurationIdentifier;

  /// The IP address that the Amazon Redshift cluster must use to access the HSM.
  late final pulumi.Output<String> hsmIpAddress;

  /// The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.
  late final pulumi.Output<String> hsmPartitionName;

  /// The password required to access the HSM partition.
  late final pulumi.Output<String> hsmPartitionPassword;

  /// The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.
  late final pulumi.Output<String> hsmServerPublicCertificate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  HsmConfiguration(
    String name, {
    HsmConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/hsmConfiguration:HsmConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.hsmConfigurationIdentifier =
        registerOutput<String>('hsmConfigurationIdentifier');
    this.hsmIpAddress = registerOutput<String>('hsmIpAddress');
    this.hsmPartitionName = registerOutput<String>('hsmPartitionName');
    this.hsmPartitionPassword = registerOutput<String>('hsmPartitionPassword');
    this.hsmServerPublicCertificate =
        registerOutput<String>('hsmServerPublicCertificate');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
