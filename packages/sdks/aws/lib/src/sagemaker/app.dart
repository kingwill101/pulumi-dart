import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_args.dart';
import 'app_resource_spec.dart';
import 'app_state.dart';

/// Provides a SageMaker AI App resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.App("example", {
///     domainId: exampleAwsSagemakerDomain.id,
///     userProfileName: exampleAwsSagemakerUserProfile.userProfileName,
///     appName: "example",
///     appType: "JupyterServer",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.App("example",
///     domain_id=example_aws_sagemaker_domain["id"],
///     user_profile_name=example_aws_sagemaker_user_profile["userProfileName"],
///     app_name="example",
///     app_type="JupyterServer")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.App("example", new()
///     {
///         DomainId = exampleAwsSagemakerDomain.Id,
///         UserProfileName = exampleAwsSagemakerUserProfile.UserProfileName,
///         AppName = "example",
///         AppType = "JupyterServer",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewApp(ctx, "example", &sagemaker.AppArgs{
/// 			DomainId:        pulumi.Any(exampleAwsSagemakerDomain.Id),
/// 			UserProfileName: pulumi.Any(exampleAwsSagemakerUserProfile.UserProfileName),
/// 			AppName:         pulumi.String("example"),
/// 			AppType:         pulumi.String("JupyterServer"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.App;
/// import com.pulumi.aws.sagemaker.AppArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new App("example", AppArgs.builder()
///             .domainId(exampleAwsSagemakerDomain.id())
///             .userProfileName(exampleAwsSagemakerUserProfile.userProfileName())
///             .appName("example")
///             .appType("JupyterServer")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:App
///     properties:
///       domainId: ${exampleAwsSagemakerDomain.id}
///       userProfileName: ${exampleAwsSagemakerUserProfile.userProfileName}
///       appName: example
///       appType: JupyterServer
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Apps using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/app:App example arn:aws:sagemaker:us-west-2:012345678912:app/domain-id/user-profile-name/app-type/app-name
/// ```
class App extends pulumi.CustomResource {
  /// The name of the app.
  late final pulumi.Output<String> appName;

  /// The type of app. Valid values are `JupyterServer`, `KernelGateway`, `RStudioServerPro`, `RSessionGateway`, `TensorBoard`, `CodeEditor`, `JupyterLab`, `DetailedProfiler`, and `Canvas`.
  late final pulumi.Output<String> appType;

  /// The Amazon Resource Name (ARN) of the app.
  late final pulumi.Output<String> arn;

  /// The domain ID.
  late final pulumi.Output<String> domainId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance.See Resource Spec below.
  late final pulumi.Output<AppResourceSpec> resourceSpec;

  /// The name of the space. At least one of `user_profile_name` or `space_name` required.
  late final pulumi.Output<String?> spaceName;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The user profile name. At least one of `user_profile_name` or `space_name` required.
  late final pulumi.Output<String?> userProfileName;

  /// Creates a new [App].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [App]. {@macro pulumi_sagemaker_app_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  App(String name, {AppArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:sagemaker/app:App',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    appName = registerOutput<String>('appName');
    appType = registerOutput<String>('appType');
    arn = registerOutput<String>('arn');
    domainId = registerOutput<String>('domainId');
    region = registerOutput<String>('region');
    resourceSpec = registerOutput<AppResourceSpec>(
      'resourceSpec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AppResourceSpec.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spaceName = registerOutput<String?>('spaceName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userProfileName = registerOutput<String?>('userProfileName');
  }

  /// Gets an existing [App] resource's state with the given [name] and [id].
  static App get(String name, pulumi.Input<String> id, {AppState? state}) {
    return App._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  App._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/app:App',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appName = registerOutput<String>('appName');
    appType = registerOutput<String>('appType');
    arn = registerOutput<String>('arn');
    domainId = registerOutput<String>('domainId');
    region = registerOutput<String>('region');
    resourceSpec = registerOutput<AppResourceSpec>(
      'resourceSpec',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AppResourceSpec.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    spaceName = registerOutput<String?>('spaceName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userProfileName = registerOutput<String?>('userProfileName');
  }
}
