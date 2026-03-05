import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the alicloud package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// The access key for API operations. You can retrieve this from the 'Security Management' section of the Alibaba Cloud console.
  late final pulumi.Output<String?> accessKey;
  /// The account ID for some service API operations. You can retrieve this from the 'Security Settings' section of the Alibaba Cloud console.
  late final pulumi.Output<String?> accountId;
  late final pulumi.Output<String?> accountType;
  late final pulumi.Output<String?> configurationSource;
  /// The URI of sidecar credentials service.
  late final pulumi.Output<String?> credentialsUri;
  /// The RAM Role Name attached on a ECS instance for API operations. You can retrieve this from the 'Access Control' section of the Alibaba Cloud console.
  late final pulumi.Output<String?> ecsRoleName;
  late final pulumi.Output<String?> fc;
  late final pulumi.Output<String?> logEndpoint;
  late final pulumi.Output<String?> mnsEndpoint;
  late final pulumi.Output<String?> otsInstanceName;
  /// The profile for API operations. If not set, the default profile created with `aliyun configure` will be used.
  late final pulumi.Output<String?> profile;
  late final pulumi.Output<String?> protocol;
  /// The region where Alibaba Cloud operations will take place. Examples are cn-beijing, cn-hangzhou, eu-central-1, etc.
  late final pulumi.Output<String?> region;
  /// The secret key for API operations. You can retrieve this from the 'Security Management' section of the Alibaba Cloud console.
  late final pulumi.Output<String?> secretKey;
  /// The security transport for the assume role invoking.
  late final pulumi.Output<String?> secureTransport;
  /// security token. A security token is only required if you are using Security Token Service.
  late final pulumi.Output<String?> securityToken;
  late final pulumi.Output<String?> securityTransport;
  /// The path to the shared credentials file. If not set this defaults to ~/.aliyun/config.json
  late final pulumi.Output<String?> sharedCredentialsFile;
  /// The source ip for the assume role invoking.
  late final pulumi.Output<String?> sourceIp;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessKey = registerOutput<String?>('accessKey');
    accountId = registerOutput<String?>('accountId');
    accountType = registerOutput<String?>('accountType');
    configurationSource = registerOutput<String?>('configurationSource');
    credentialsUri = registerOutput<String?>('credentialsUri');
    ecsRoleName = registerOutput<String?>('ecsRoleName');
    fc = registerOutput<String?>('fc');
    logEndpoint = registerOutput<String?>('logEndpoint');
    mnsEndpoint = registerOutput<String?>('mnsEndpoint');
    otsInstanceName = registerOutput<String?>('otsInstanceName');
    profile = registerOutput<String?>('profile');
    protocol = registerOutput<String?>('protocol');
    region = registerOutput<String?>('region');
    secretKey = registerOutput<String?>('secretKey');
    secureTransport = registerOutput<String?>('secureTransport');
    securityToken = registerOutput<String?>('securityToken');
    securityTransport = registerOutput<String?>('securityTransport');
    sharedCredentialsFile = registerOutput<String?>('sharedCredentialsFile');
    sourceIp = registerOutput<String?>('sourceIp');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:alicloud/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
