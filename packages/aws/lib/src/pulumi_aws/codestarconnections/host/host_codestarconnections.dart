import 'package:pulumi/pulumi.dart' as pulumi;
import '../host_vpc_configuration/host_vpc_configuration_codestarconnections.dart';
import 'host_codestarconnections_args.dart';

/// Provides a CodeStar Host.
///
/// > **NOTE:** The `aws.codestarconnections.Host` resource is created in the state `PENDING`. Authentication with the host provider must be completed in the AWS Console. For more information visit [Set up a pending host](https://docs.aws.amazon.com/dtconsole/latest/userguide/connections-host-setup.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeStar connections host.
///
///
/// Using `pulumi import`, import CodeStar Host using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codestarconnections/host:Host example-host arn:aws:codestar-connections:us-west-1:0123456789:host/79d4d357-a2ee-41e4-b350-2fe39ae59448
/// ```
class HostCodestarconnections extends pulumi.CustomResource {
  /// The CodeStar Host ARN.
  late final pulumi.Output<String> arn;

  /// The name of the host to be created. The name must be unique in the calling AWS account.
  late final pulumi.Output<String> name;

  /// The endpoint of the infrastructure to be represented by the host after it is created.
  late final pulumi.Output<String> providerEndpoint;

  /// The name of the external provider where your third-party code repository is configured.
  late final pulumi.Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The CodeStar Host status. Possible values are `PENDING`, `AVAILABLE`, `VPC_CONFIG_DELETING`, `VPC_CONFIG_INITIALIZING`, and `VPC_CONFIG_FAILED_INITIALIZATION`.
  late final pulumi.Output<String> status;

  /// The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  late final pulumi.Output<HostVpcConfigurationCodestarconnections?>
      vpcConfiguration;

  HostCodestarconnections(
    String name, {
    HostCodestarconnectionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codestarconnections/host:Host',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.providerEndpoint = registerOutput<String>('providerEndpoint');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.vpcConfiguration =
        registerOutput<HostVpcConfigurationCodestarconnections?>(
            'vpcConfiguration');
  }
}
