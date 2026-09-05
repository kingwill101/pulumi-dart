import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_database_args.dart';
import 'kx_database_state.dart';

/// Resource for managing an AWS FinSpace Kx Database.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
///     description: "Example KMS Key",
///     deletionWindowInDays: 7,
/// });
/// const exampleKxEnvironment = new aws.finspace.KxEnvironment("example", {
///     name: "my-tf-kx-environment",
///     kmsKeyId: example.arn,
/// });
/// const exampleKxDatabase = new aws.finspace.KxDatabase("example", {
///     environmentId: exampleKxEnvironment.id,
///     name: "my-tf-kx-database",
///     description: "Example database description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
///     description="Example KMS Key",
///     deletion_window_in_days=7)
/// example_kx_environment = aws.finspace.KxEnvironment("example",
///     name="my-tf-kx-environment",
///     kms_key_id=example.arn)
/// example_kx_database = aws.finspace.KxDatabase("example",
///     environment_id=example_kx_environment.id,
///     name="my-tf-kx-database",
///     description="Example database description")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "Example KMS Key",
///         DeletionWindowInDays = 7,
///     });
///
///     var exampleKxEnvironment = new Aws.FinSpace.KxEnvironment("example", new()
///     {
///         Name = "my-tf-kx-environment",
///         KmsKeyId = example.Arn,
///     });
///
///     var exampleKxDatabase = new Aws.FinSpace.KxDatabase("example", new()
///     {
///         EnvironmentId = exampleKxEnvironment.Id,
///         Name = "my-tf-kx-database",
///         Description = "Example database description",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/finspace"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("Example KMS Key"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKxEnvironment, err := finspace.NewKxEnvironment(ctx, "example", &finspace.KxEnvironmentArgs{
/// 			Name:     pulumi.String("my-tf-kx-environment"),
/// 			KmsKeyId: example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = finspace.NewKxDatabase(ctx, "example", &finspace.KxDatabaseArgs{
/// 			EnvironmentId: exampleKxEnvironment.ID().ToIDOutput().ToStringOutput(),
/// 			Name:          pulumi.String("my-tf-kx-database"),
/// 			Description:   pulumi.String("Example database description"),
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
/// resource "aws_kms_key" "example" {
///   description             = "Example KMS Key"
///   deletion_window_in_days = 7
/// }
/// resource "aws_finspace_kxenvironment" "example" {
///   name       = "my-tf-kx-environment"
///   kms_key_id = aws_kms_key.example.arn
/// }
/// resource "aws_finspace_kxdatabase" "example" {
///   environment_id = aws_finspace_kxenvironment.example.id
///   name           = "my-tf-kx-database"
///   description    = "Example database description"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.finspace.KxEnvironment;
/// import com.pulumi.aws.finspace.KxEnvironmentArgs;
/// import com.pulumi.aws.finspace.KxDatabase;
/// import com.pulumi.aws.finspace.KxDatabaseArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("Example KMS Key")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleKxEnvironment = new KxEnvironment("exampleKxEnvironment", KxEnvironmentArgs.builder()
///             .name("my-tf-kx-environment")
///             .kmsKeyId(example.arn())
///             .build());
///
///         var exampleKxDatabase = new KxDatabase("exampleKxDatabase", KxDatabaseArgs.builder()
///             .environmentId(exampleKxEnvironment.id())
///             .name("my-tf-kx-database")
///             .description("Example database description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: Example KMS Key
///       deletionWindowInDays: 7
///   exampleKxEnvironment:
///     type: aws:finspace:KxEnvironment
///     name: example
///     properties:
///       name: my-tf-kx-environment
///       kmsKeyId: ${example.arn}
///   exampleKxDatabase:
///     type: aws:finspace:KxDatabase
///     name: example
///     properties:
///       environmentId: ${exampleKxEnvironment.id}
///       name: my-tf-kx-database
///       description: Example database description
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Database using the `id` (environment ID and database name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxDatabase:KxDatabase example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-database
/// ```
class KxDatabase extends pulumi.CustomResource {
  /// ARN identifier of the KX database.
  late final pulumi.Output<String> arn;
  /// Timestamp at which the databse is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> createdTimestamp;
  /// Description of the KX database.
  late final pulumi.Output<String?> description;
  /// Unique identifier for the KX environment.
  late final pulumi.Output<String> environmentId;
  /// Last timestamp at which the database was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> lastModifiedTimestamp;
  /// Name of the KX database.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [KxDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KxDatabase]. {@macro pulumi_finspace_kx_database_kx_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KxDatabase(
    String name, {
    KxDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxDatabase:KxDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    description = registerOutput<String?>('description');
    environmentId = registerOutput<String>('environmentId');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [KxDatabase] resource's state with the given [name] and [id].
  static KxDatabase get(
    String name,
    pulumi.Input<String> id, {
    KxDatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return KxDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  KxDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxDatabase:KxDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    description = registerOutput<String?>('description');
    environmentId = registerOutput<String>('environmentId');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [KxDatabase] resource.
  KxDatabase.reference(String urn)
    : super(
        'aws:finspace/kxDatabase:KxDatabase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    description = registerOutput<String?>('description');
    environmentId = registerOutput<String>('environmentId');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
