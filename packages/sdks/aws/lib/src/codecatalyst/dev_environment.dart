import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_environment_args.dart';
import 'dev_environment_ides.dart';
import 'dev_environment_persistent_storage.dart';
import 'dev_environment_repository.dart';
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
///     persistentStorage: {
///         size: 16,
///     },
///     ides: {
///         name: "PyCharm",
///         runtime: "public.ecr.aws/jetbrains/py",
///     },
///     repositories: [{
///         repositoryName: "pulumi-provider-aws",
///         branchName: "main",
///     }],
///     alias: "devenv",
///     spaceName: "myspace",
///     projectName: "myproject",
///     instanceType: "dev.standard1.small",
///     inactivityTimeoutMinutes: 40,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.codecatalyst.DevEnvironment("test",
///     persistent_storage={
///         "size": 16,
///     },
///     ides={
///         "name": "PyCharm",
///         "runtime": "public.ecr.aws/jetbrains/py",
///     },
///     repositories=[{
///         "repository_name": "pulumi-provider-aws",
///         "branch_name": "main",
///     }],
///     alias="devenv",
///     space_name="myspace",
///     project_name="myproject",
///     instance_type="dev.standard1.small",
///     inactivity_timeout_minutes=40)
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
///         PersistentStorage = new Aws.CodeCatalyst.Inputs.DevEnvironmentPersistentStorageArgs
///         {
///             Size = 16,
///         },
///         Ides = new Aws.CodeCatalyst.Inputs.DevEnvironmentIdesArgs
///         {
///             Name = "PyCharm",
///             Runtime = "public.ecr.aws/jetbrains/py",
///         },
///         Repositories = new[]
///         {
///             new Aws.CodeCatalyst.Inputs.DevEnvironmentRepositoryArgs
///             {
///                 RepositoryName = "pulumi-provider-aws",
///                 BranchName = "main",
///             },
///         },
///         Alias = "devenv",
///         SpaceName = "myspace",
///         ProjectName = "myproject",
///         InstanceType = "dev.standard1.small",
///         InactivityTimeoutMinutes = 40,
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
/// 			PersistentStorage: &codecatalyst.DevEnvironmentPersistentStorageArgs{
/// 				Size: pulumi.Int(16),
/// 			},
/// 			Ides: &codecatalyst.DevEnvironmentIdesArgs{
/// 				Name:    pulumi.String("PyCharm"),
/// 				Runtime: pulumi.String("public.ecr.aws/jetbrains/py"),
/// 			},
/// 			Repositories: codecatalyst.DevEnvironmentRepositoryArray{
/// 				&codecatalyst.DevEnvironmentRepositoryArgs{
/// 					RepositoryName: pulumi.String("pulumi-provider-aws"),
/// 					BranchName:     pulumi.String("main"),
/// 				},
/// 			},
/// 			Alias:                    pulumi.String("devenv"),
/// 			SpaceName:                pulumi.String("myspace"),
/// 			ProjectName:              pulumi.String("myproject"),
/// 			InstanceType:             pulumi.String("dev.standard1.small"),
/// 			InactivityTimeoutMinutes: pulumi.Int(40),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_codecatalyst_devenvironment" "test" {
///   persistent_storage = {
///     size = 16
///   }
///   ides = {
///     name    = "PyCharm"
///     runtime = "public.ecr.aws/jetbrains/py"
///   }
///   repositories {
///     repository_name = "pulumi-provider-aws"
///     branch_name     = "main"
///   }
///   alias                      = "devenv"
///   space_name                 = "myspace"
///   project_name               = "myproject"
///   instance_type              = "dev.standard1.small"
///   inactivity_timeout_minutes = 40
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .persistentStorage(DevEnvironmentPersistentStorageArgs.builder()
///                 .size(16)
///                 .build())
///             .ides(DevEnvironmentIdesArgs.builder()
///                 .name("PyCharm")
///                 .runtime("public.ecr.aws/jetbrains/py")
///                 .build())
///             .repositories(DevEnvironmentRepositoryArgs.builder()
///                 .repositoryName("pulumi-provider-aws")
///                 .branchName("main")
///                 .build())
///             .alias("devenv")
///             .spaceName("myspace")
///             .projectName("myproject")
///             .instanceType("dev.standard1.small")
///             .inactivityTimeoutMinutes(40)
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
///       persistentStorage:
///         size: 16
///       ides:
///         name: PyCharm
///         runtime: public.ecr.aws/jetbrains/py
///       repositories:
///         - repositoryName: pulumi-provider-aws
///           branchName: main
///       alias: devenv
///       spaceName: myspace
///       projectName: myproject
///       instanceType: dev.standard1.small
///       inactivityTimeoutMinutes: 40
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
  late final pulumi.Output<List<DevEnvironmentRepository>?> repositories;
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    alias = registerOutput<String?>('alias');
    ides = registerOutput<DevEnvironmentIdes>('ides', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevEnvironmentIdes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inactivityTimeoutMinutes = registerOutput<int?>('inactivityTimeoutMinutes');
    instanceType = registerOutput<String>('instanceType');
    persistentStorage = registerOutput<DevEnvironmentPersistentStorage>('persistentStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevEnvironmentPersistentStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    projectName = registerOutput<String>('projectName');
    region = registerOutput<String>('region');
    repositories = registerOutput<List<DevEnvironmentRepository>?>('repositories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DevEnvironmentRepository>(guardedValue, (value) => DevEnvironmentRepository.fromMap((value as Map).cast<String, dynamic>())); });
    spaceName = registerOutput<String>('spaceName');
  }

  /// Gets an existing [DevEnvironment] resource's state with the given [name] and [id].
  static DevEnvironment get(
    String name,
    pulumi.Input<String> id, {
    DevEnvironmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DevEnvironment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    ides = registerOutput<DevEnvironmentIdes>('ides', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevEnvironmentIdes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inactivityTimeoutMinutes = registerOutput<int?>('inactivityTimeoutMinutes');
    instanceType = registerOutput<String>('instanceType');
    persistentStorage = registerOutput<DevEnvironmentPersistentStorage>('persistentStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevEnvironmentPersistentStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    projectName = registerOutput<String>('projectName');
    region = registerOutput<String>('region');
    repositories = registerOutput<List<DevEnvironmentRepository>?>('repositories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DevEnvironmentRepository>(guardedValue, (value) => DevEnvironmentRepository.fromMap((value as Map).cast<String, dynamic>())); });
    spaceName = registerOutput<String>('spaceName');
  }

  /// Creates a typed reference to an existing [DevEnvironment] resource.
  DevEnvironment.reference(String urn)
    : super(
        'aws:codecatalyst/devEnvironment:DevEnvironment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alias = registerOutput<String?>('alias');
    ides = registerOutput<DevEnvironmentIdes>('ides', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevEnvironmentIdes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inactivityTimeoutMinutes = registerOutput<int?>('inactivityTimeoutMinutes');
    instanceType = registerOutput<String>('instanceType');
    persistentStorage = registerOutput<DevEnvironmentPersistentStorage>('persistentStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevEnvironmentPersistentStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    projectName = registerOutput<String>('projectName');
    region = registerOutput<String>('region');
    repositories = registerOutput<List<DevEnvironmentRepository>?>('repositories', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DevEnvironmentRepository>(guardedValue, (value) => DevEnvironmentRepository.fromMap((value as Map).cast<String, dynamic>())); });
    spaceName = registerOutput<String>('spaceName');
  }
}
