import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_failure_reason.dart';
import 'project_state.dart';
import 'project_timeouts.dart';

/// Resource for managing an AWS DataZone Project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.datazone.Project("test", {
///     domainId: testAwsDatazoneDomain.id,
///     glossaryTerms: ["2N8w6XJCwZf"],
///     name: "name",
///     description: "desc",
///     skipDeletionCheck: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.datazone.Project("test",
///     domain_id=test_aws_datazone_domain["id"],
///     glossary_terms=["2N8w6XJCwZf"],
///     name="name",
///     description="desc",
///     skip_deletion_check=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.DataZone.Project("test", new()
///     {
///         DomainId = testAwsDatazoneDomain.Id,
///         GlossaryTerms = new[]
///         {
///             "2N8w6XJCwZf",
///         },
///         Name = "name",
///         Description = "desc",
///         SkipDeletionCheck = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datazone.NewProject(ctx, "test", &datazone.ProjectArgs{
/// 			DomainId: testAwsDatazoneDomain.Id,
/// 			GlossaryTerms: pulumi.StringArray{
/// 				pulumi.String("2N8w6XJCwZf"),
/// 			},
/// 			Name:              pulumi.String("name"),
/// 			Description:       pulumi.String("desc"),
/// 			SkipDeletionCheck: pulumi.Bool(true),
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
/// import com.pulumi.aws.datazone.Project;
/// import com.pulumi.aws.datazone.ProjectArgs;
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
///         var test = new Project("test", ProjectArgs.builder()
///             .domainId(testAwsDatazoneDomain.id())
///             .glossaryTerms("2N8w6XJCwZf")
///             .name("name")
///             .description("desc")
///             .skipDeletionCheck(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:datazone:Project
///     properties:
///       domainId: ${testAwsDatazoneDomain.id}
///       glossaryTerms:
///         - 2N8w6XJCwZf
///       name: name
///       description: desc
///       skipDeletionCheck: true
/// ```
///
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.datazone.Project("test", {
///     domainIdentifier: testAwsDatazoneDomain.id,
///     name: "name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.datazone.Project("test",
///     domain_identifier=test_aws_datazone_domain["id"],
///     name="name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.DataZone.Project("test", new()
///     {
///         DomainIdentifier = testAwsDatazoneDomain.Id,
///         Name = "name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datazone.NewProject(ctx, "test", &datazone.ProjectArgs{
/// 			DomainIdentifier: pulumi.Any(testAwsDatazoneDomain.Id),
/// 			Name:             pulumi.String("name"),
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
/// import com.pulumi.aws.datazone.Project;
/// import com.pulumi.aws.datazone.ProjectArgs;
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
///         var test = new Project("test", ProjectArgs.builder()
///             .domainIdentifier(testAwsDatazoneDomain.id())
///             .name("name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:datazone:Project
///     properties:
///       domainIdentifier: ${testAwsDatazoneDomain.id}
///       name: name
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Project using a colon-delimited string combining `domain_id` and `id`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/project:Project example domain-1234:project-1234
/// ```
class Project extends pulumi.CustomResource {
  /// Timestamp of when the project was made.
  late final pulumi.Output<String> createdAt;
  /// Creator of the project.
  late final pulumi.Output<String> createdBy;
  /// Description of project.
  late final pulumi.Output<String?> description;
  /// Identifier of domain which the project is part of. Must follow the regex of `^dzd[-_][a-zA-Z0-9_-]{1,36}$`.
  late final pulumi.Output<String> domainIdentifier;
  /// List of error messages if operation cannot be completed.
  late final pulumi.Output<List<ProjectFailureReason>> failureReasons;
  /// List of glossary terms that can be used in the project. The list cannot be empty or include over 20 values. Each value must follow the regex of `[a-zA-Z0-9_-]{1,36}$`.
  late final pulumi.Output<List<String>?> glossaryTerms;
  /// Timestamp of when the project was last updated.
  late final pulumi.Output<String> lastUpdatedAt;
  /// Name of the project. Must follow the regex of `^[\w -]+$`. and have a length of at most 64.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Enum that conveys state of project. Can be `ACTIVE`, `DELETING`, or `DELETE_FAILED`.
  late final pulumi.Output<String> projectStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Optional flag to delete all child entities within the project.
  late final pulumi.Output<bool?> skipDeletionCheck;
  late final pulumi.Output<ProjectTimeouts?> timeouts;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_datazone_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.description = registerOutput<String?>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.failureReasons = registerOutput<List<ProjectFailureReason>>('failureReasons');
    this.glossaryTerms = registerOutput<List<String>?>('glossaryTerms');
    this.lastUpdatedAt = registerOutput<String>('lastUpdatedAt');
    this.name = registerOutput<String>('name');
    this.projectStatus = registerOutput<String>('projectStatus');
    this.region = registerOutput<String>('region');
    this.skipDeletionCheck = registerOutput<bool?>('skipDeletionCheck');
    this.timeouts = registerOutput<ProjectTimeouts?>('timeouts');
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/project:Project',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.description = registerOutput<String?>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.failureReasons = registerOutput<List<ProjectFailureReason>>('failureReasons');
    this.glossaryTerms = registerOutput<List<String>?>('glossaryTerms');
    this.lastUpdatedAt = registerOutput<String>('lastUpdatedAt');
    this.name = registerOutput<String>('name');
    this.projectStatus = registerOutput<String>('projectStatus');
    this.region = registerOutput<String>('region');
    this.skipDeletionCheck = registerOutput<bool?>('skipDeletionCheck');
    this.timeouts = registerOutput<ProjectTimeouts?>('timeouts');
  }
}
