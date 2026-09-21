import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_args.dart';
import 'archive_retention.dart';
import 'archive_retention_actual.dart';
import 'archive_state.dart';

/// Manages an AWS SES Mail Manager Archive.
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
/// const example = new aws.mailmanager.Archive("example", {name: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mailmanager.Archive("example", name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MailManager.Archive("example", new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mailmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mailmanager.NewArchive(ctx, "example", &mailmanager.ArchiveArgs{
/// 			Name: pulumi.String("example"),
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
/// resource "aws_mailmanager_archive" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mailmanager.Archive;
/// import com.pulumi.aws.mailmanager.ArchiveArgs;
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
///         var example = new Archive("example", ArchiveArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mailmanager:Archive
///     properties:
///       name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Identifier of the archive.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an SES Mail Manager Archive using its identifier. For example:
///
/// ```sh
/// $ pulumi import aws:mailmanager/archive:Archive example archive-id-12345678
/// ```
class Archive extends pulumi.CustomResource {
  /// ARN of the archive.
  late final pulumi.Output<String> arn;
  /// Timestamp of when the archive was created.
  late final pulumi.Output<String> createdTimestamp;
  /// ARN of the KMS key used to encrypt the archive.
  late final pulumi.Output<String?> kmsKeyArn;
  /// Timestamp of when the archive was updated.
  late final pulumi.Output<String> lastUpdatedTimestamp;
  /// Name of the archive.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Retention policy for the archive. See `retention` Block.
  late final pulumi.Output<ArchiveRetention?> retention;
  /// Effective retention policy for the archive, including the default (`SIX_MONTHS`) when no `retention` block is configured. See `retentionActual` Block below.
  late final pulumi.Output<List<ArchiveRetentionActual>> retentionActuals;
  /// Current state of the archive. Always set to `ACTIVE` and will only be set to `PENDING_DELETION` when the archive is deleted.
  late final pulumi.Output<String> state;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Archive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Archive]. {@macro pulumi_mailmanager_archive_archive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Archive(
    String name, {
    ArchiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mailmanager/archive:Archive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    retention = registerOutput<ArchiveRetention?>('retention', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ArchiveRetention.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retentionActuals = registerOutput<List<ArchiveRetentionActual>>('retentionActuals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArchiveRetentionActual>(guardedValue, (value) => ArchiveRetentionActual.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Archive] resource's state with the given [name] and [id].
  static Archive get(
    String name,
    pulumi.Input<String> id, {
    ArchiveState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Archive._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Archive._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mailmanager/archive:Archive',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    retention = registerOutput<ArchiveRetention?>('retention', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ArchiveRetention.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retentionActuals = registerOutput<List<ArchiveRetentionActual>>('retentionActuals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArchiveRetentionActual>(guardedValue, (value) => ArchiveRetentionActual.fromMap((value as Map).cast<String, dynamic>())); });
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Archive] resource.
  Archive.reference(String urn)
    : super(
        'aws:mailmanager/archive:Archive',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    retention = registerOutput<ArchiveRetention?>('retention', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ArchiveRetention.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retentionActuals = registerOutput<List<ArchiveRetentionActual>>('retentionActuals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArchiveRetentionActual>(guardedValue, (value) => ArchiveRetentionActual.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
