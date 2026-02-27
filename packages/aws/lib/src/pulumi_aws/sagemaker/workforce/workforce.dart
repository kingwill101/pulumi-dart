import 'package:pulumi/pulumi.dart' as pulumi;
import '../workforce_cognito_config/workforce_cognito_config.dart';
import '../workforce_oidc_config/workforce_oidc_config.dart';
import '../workforce_source_ip_config/workforce_source_ip_config.dart';
import '../workforce_workforce_vpc_config/workforce_workforce_vpc_config.dart';
import 'workforce_args.dart';

/// Provides a SageMaker AI Workforce resource.
///
/// ## Example Usage
///
/// ### Cognito Usage
///
///
///
/// ### Oidc Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Workforces using the `workforce_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/workforce:Workforce example example
/// ```
class Workforce extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Workforce.
  late final pulumi.Output<String> arn;

  /// Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with `oidc_config`. see Cognito Config details below.
  late final pulumi.Output<WorkforceCognitoConfig?> cognitoConfig;

  /// Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with `cognito_config`. see OIDC Config details below.
  late final pulumi.Output<WorkforceOidcConfig?> oidcConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below.
  late final pulumi.Output<WorkforceSourceIpConfig> sourceIpConfig;

  /// The subdomain for your OIDC Identity Provider.
  late final pulumi.Output<String> subdomain;

  /// The name of the Workforce (must be unique).
  late final pulumi.Output<String> workforceName;

  /// configure a workforce using VPC. see Workforce VPC Config details below.
  late final pulumi.Output<WorkforceWorkforceVpcConfig?> workforceVpcConfig;

  Workforce(
    String name, {
    WorkforceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/workforce:Workforce',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cognitoConfig =
        registerOutput<WorkforceCognitoConfig?>('cognitoConfig');
    this.oidcConfig = registerOutput<WorkforceOidcConfig?>('oidcConfig');
    this.region = registerOutput<String>('region');
    this.sourceIpConfig =
        registerOutput<WorkforceSourceIpConfig>('sourceIpConfig');
    this.subdomain = registerOutput<String>('subdomain');
    this.workforceName = registerOutput<String>('workforceName');
    this.workforceVpcConfig =
        registerOutput<WorkforceWorkforceVpcConfig?>('workforceVpcConfig');
  }
}
