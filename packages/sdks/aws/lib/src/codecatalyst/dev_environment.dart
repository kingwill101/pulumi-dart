import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_environment_args.dart';
import 'dev_environment_ides.dart';
import 'dev_environment_persistent_storage.dart';
import 'dev_environment_state.dart';

/// Resource for managing an AWS CodeCatalyst Dev Environment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.codecatalyst.DevEnvironment("test", {
///     alias: "devenv",
///     spaceName: "myspace",
///     projectName: "myproject",
///     instanceType: "dev.standard1.small",
///     persistentStorage: {
///         size: 16,
///     },
///     ides: {
///         name: "PyCharm",
///         runtime: "public.ecr.aws/jetbrains/py",
///     },
///     inactivityTimeoutMinutes: 40,
///     repositories: [{
///         repositoryName: "pulumi-provider-aws",
///         branchName: "main",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.codecatalyst.DevEnvironment("test",
///     alias="devenv",
///     space_name="myspace",
///     project_name="myproject",
///     instance_type="dev.standard1.small",
///     persistent_storage={
///         "size": 16,
///     },
///     ides={
///         "name": "PyCharm",
///         "runtime": "public.ecr.aws/jetbrains/py",
///     },
///     inactivity_timeout_minutes=40,
///     repositories=[{
///         "repository_name": "pulumi-provider-aws",
///         "branch_name": "main",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CodeCatalyst.DevEnvironment("test", new()
///     {
///         Alias = "devenv",
///         SpaceName = "myspace",
///         ProjectName = "myproject",
///         InstanceType = "dev.standard1.small",
///         PersistentStorage = new Aws.CodeCatalyst.Inputs.DevEnvironmentPersistentStorageArgs
///         {
///             Size = 16,
///         },
///         Ides = new Aws.CodeCatalyst.Inputs.DevEnvironmentIdesArgs
///         {
///             Name = "PyCharm",
///             Runtime = "public.ecr.aws/jetbrains/py",
///         },
///         InactivityTimeoutMinutes = 40,
///         Repositories = new[]
///         {
///             new Aws.CodeCatalyst.Inputs.DevEnvironmentRepositoryArgs
///             {
///                 RepositoryName = "pulumi-provider-aws",
///                 BranchName = "main",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecatalyst"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codecatalyst.NewDevEnvironment(ctx, "test", &codecatalyst.DevEnvironmentArgs{
/// 			Alias:        pulumi.String("devenv"),
/// 			SpaceName:    pulumi.String("myspace"),
/// 			ProjectName:  pulumi.String("myproject"),
/// 			InstanceType: pulumi.String("dev.standard1.small"),
/// 			PersistentStorage: &codecatalyst.DevEnvironmentPersistentStorageArgs{
/// 				Size: pulumi.Int(16),
/// 			},
/// 			Ides: &codecatalyst.DevEnvironmentIdesArgs{
/// 				Name:    pulumi.String("PyCharm"),
/// 				Runtime: pulumi.String("public.ecr.aws/jetbrains/py"),
/// 			},
/// 			InactivityTimeoutMinutes: pulumi.Int(40),
/// 			Repositories: codecatalyst.DevEnvironmentRepositoryArray{
/// 				&codecatalyst.DevEnvironmentRepositoryArgs{
/// 					RepositoryName: pulumi.String("pulumi-provider-aws"),
/// 					BranchName:     pulumi.String("main"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.codecatalyst.DevEnvironment;
/// import com.pulumi.aws.codecatalyst.DevEnvironmentArgs;
/// import com.pulumi.aws.codecatalyst.inputs.DevEnvironmentPersistentStorageArgs;
/// import com.pulumi.aws.codecatalyst.inputs.DevEnvironmentIdesArgs;
/// import com.pulumi.aws.codecatalyst.inputs.DevEnvironmentRepositoryArgs;
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
///         var test = new DevEnvironment("test", DevEnvironmentArgs.builder()
///             .alias("devenv")
///             .spaceName("myspace")
///             .projectName("myproject")
///             .instanceType("dev.standard1.small")
///             .persistentStorage(DevEnvironmentPersistentStorageArgs.builder()
///                 .size(16)
///                 .build())
///             .ides(DevEnvironmentIdesArgs.builder()
///                 .name("PyCharm")
///                 .runtime("public.ecr.aws/jetbrains/py")
///                 .build())
///             .inactivityTimeoutMinutes(40)
///             .repositories(DevEnvironmentRepositoryArgs.builder()
///                 .repositoryName("pulumi-provider-aws")
///                 .branchName("main")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:codecatalyst:DevEnvironment
///     properties:
///       alias: devenv
///       spaceName: myspace
///       projectName: myproject
///       instanceType: dev.standard1.small
///       persistentStorage:
///         size: 16
///       ides:
///         name: PyCharm
///         runtime: public.ecr.aws/jetbrains/py
///       inactivityTimeoutMinutes: 40
///       repositories:
///         - repositoryName: pulumi-provider-aws
///           branchName: main
/// ```
class DevEnvironment extends pulumi.CustomResource {
  late final pulumi.Output<String?> alias;

  /// Information about the integrated development environment (IDE) configured for a Dev Environment.
  late final pulumi.Output<DevEnvironmentIdes> ides;

  /// The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.
  late final pulumi.Output<int?> inactivityTimeoutMinutes;

  /// The Amazon EC2 instace type to use for the Dev Environment. Valid values include dev.standard1.small,dev.standard1.medium,dev.standard1.large,dev.standard1.xlarge
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> instanceType;

  /// Information about the amount of storage allocated to the Dev Environment.
  late final pulumi.Output<DevEnvironmentPersistentStorage> persistentStorage;

  /// The name of the project in the space.
  late final pulumi.Output<String> projectName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The source repository that contains the branch to clone into the Dev Environment.
  late final pulumi.Output<List<Map<String, dynamic>>?> repositories;

  /// The name of the space.
  late final pulumi.Output<String> spaceName;

  /// Creates a new [DevEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DevEnvironment]. {@macro pulumi_codecatalyst_dev_environment_dev_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DevEnvironment(
    String name, {
    DevEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:codecatalyst/devEnvironment:DevEnvironment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alias = registerOutput<String?>('alias');
    ides = registerOutput<DevEnvironmentIdes>('ides');
    inactivityTimeoutMinutes = registerOutput<int?>('inactivityTimeoutMinutes');
    instanceType = registerOutput<String>('instanceType');
    persistentStorage = registerOutput<DevEnvironmentPersistentStorage>(
      'persistentStorage',
    );
    projectName = registerOutput<String>('projectName');
    region = registerOutput<String>('region');
    repositories = registerOutput<List<Map<String, dynamic>>?>('repositories');
    spaceName = registerOutput<String>('spaceName');
  }

  /// Gets an existing [DevEnvironment] resource's state with the given [name] and [id].
  static DevEnvironment get(
    String name,
    pulumi.Input<String> id, {
    DevEnvironmentState? state,
  }) {
    return DevEnvironment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DevEnvironment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:codecatalyst/devEnvironment:DevEnvironment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alias = registerOutput<String?>('alias');
    ides = registerOutput<DevEnvironmentIdes>('ides');
    inactivityTimeoutMinutes = registerOutput<int?>('inactivityTimeoutMinutes');
    instanceType = registerOutput<String>('instanceType');
    persistentStorage = registerOutput<DevEnvironmentPersistentStorage>(
      'persistentStorage',
    );
    projectName = registerOutput<String>('projectName');
    region = registerOutput<String>('region');
    repositories = registerOutput<List<Map<String, dynamic>>?>('repositories');
    spaceName = registerOutput<String>('spaceName');
  }
}
