import 'package:pulumi/pulumi.dart' as pulumi;
import '../host_timeouts/host_timeouts.dart';
import '../host_vpc_configuration/host_vpc_configuration.dart';
import 'host_args.dart';

/// Resource for managing an AWS CodeConnections Host.
///
/// > **NOTE:** The `aws.codeconnections.Host` resource is created in the state `PENDING`. Authentication with the host provider must be completed in the AWS Console. For more information visit [Set up a pending host](https://docs.aws.amazon.com/dtconsole/latest/userguide/connections-host-setup.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeConnections host.
///
///
/// Using `pulumi import`, import CodeConnections Host using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codeconnections/host:Host example-host arn:aws:codeconnections:us-west-1:0123456789:host/79d4d357-a2ee-41e4-b350-2fe39ae59448
/// ```
class Host extends pulumi.CustomResource {
  /// The CodeConnections Host ARN.
  late final pulumi.Output<String> arn;

  /// The name of the host to be created. The name must be unique in the calling AWS account.
  late final pulumi.Output<String> name;

  /// The endpoint of the infrastructure to be represented by the host after it is created.
  late final pulumi.Output<String> providerEndpoint;

  /// The name of the external provider where your third-party code repository is configured.
  late final pulumi.Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<HostTimeouts?> timeouts;

  /// The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  late final pulumi.Output<HostVpcConfiguration?> vpcConfiguration;

  Host(
    String name, {
    HostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeconnections/host:Host',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.providerEndpoint = registerOutput<String>('providerEndpoint');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<HostTimeouts?>('timeouts');
    this.vpcConfiguration =
        registerOutput<HostVpcConfiguration?>('vpcConfiguration');
  }
}
