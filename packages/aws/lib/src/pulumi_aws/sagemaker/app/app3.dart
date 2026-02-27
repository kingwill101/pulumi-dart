import 'package:pulumi/pulumi.dart';
import '../app_resource_spec/app_resource_spec.dart';
import 'app_args3.dart';

/// Provides a SageMaker AI App resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Apps using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/app:App example arn:aws:sagemaker:us-west-2:012345678912:app/domain-id/user-profile-name/app-type/app-name
/// ```
class App3 extends CustomResource {
  /// The name of the app.
  late final Output<String> appName;

  /// The type of app. Valid values are `JupyterServer`, `KernelGateway`, `RStudioServerPro`, `RSessionGateway`, `TensorBoard`, `CodeEditor`, `JupyterLab`, `DetailedProfiler`, and `Canvas`.
  late final Output<String> appType;

  /// The Amazon Resource Name (ARN) of the app.
  late final Output<String> arn;

  /// The domain ID.
  late final Output<String> domainId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.See Resource Spec below.
  late final Output<AppResourceSpec> resourceSpec;

  /// The name of the space. At least one of `user_profile_name` or `space_name` required.
  late final Output<String?> spaceName;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The user profile name. At least one of `user_profile_name` or `space_name` required.
  late final Output<String?> userProfileName;

  App3(
    String name, {
    AppArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/app:App',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appName = registerOutput<String>('appName');
    this.appType = registerOutput<String>('appType');
    this.arn = registerOutput<String>('arn');
    this.domainId = registerOutput<String>('domainId');
    this.region = registerOutput<String>('region');
    this.resourceSpec = registerOutput<AppResourceSpec>('resourceSpec');
    this.spaceName = registerOutput<String?>('spaceName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userProfileName = registerOutput<String?>('userProfileName');
  }
}
