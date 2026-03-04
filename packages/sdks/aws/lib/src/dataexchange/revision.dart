import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_args.dart';
import 'revision_state.dart';

/// Provides a resource to manage AWS Data Exchange Revisions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dataexchange.Revision("example", {dataSetId: exampleAwsDataexchangeDataSet.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dataexchange.Revision("example", data_set_id=example_aws_dataexchange_data_set["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataExchange.Revision("example", new()
///     {
///         DataSetId = exampleAwsDataexchangeDataSet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dataexchange"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataexchange.NewRevision(ctx, "example", &dataexchange.RevisionArgs{
/// 			DataSetId: pulumi.Any(exampleAwsDataexchangeDataSet.Id),
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
/// import com.pulumi.aws.dataexchange.Revision;
/// import com.pulumi.aws.dataexchange.RevisionArgs;
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
///         var example = new Revision("example", RevisionArgs.builder()
///             .dataSetId(exampleAwsDataexchangeDataSet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dataexchange:Revision
///     properties:
///       dataSetId: ${exampleAwsDataexchangeDataSet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DataExchange Revisions using their `data-set-id:revision-id`. For example:
///
/// ```sh
/// $ pulumi import aws:dataexchange/revision:Revision example 4fa784c7-ccb4-4dbf-ba4f-02198320daa1:4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class Revision extends pulumi.CustomResource {
  /// The Amazon Resource Name of this data set.
  late final pulumi.Output<String> arn;

  /// An optional comment about the revision.
  late final pulumi.Output<String?> comment;

  /// The dataset id.
  late final pulumi.Output<String> dataSetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Id of the revision.
  late final pulumi.Output<String> revisionId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Revision].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Revision]. {@macro pulumi_dataexchange_revision_revision_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Revision(
    String name, {
    RevisionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:dataexchange/revision:Revision',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    dataSetId = registerOutput<String>('dataSetId');
    region = registerOutput<String>('region');
    revisionId = registerOutput<String>('revisionId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Revision] resource's state with the given [name] and [id].
  static Revision get(
    String name,
    pulumi.Input<String> id, {
    RevisionState? state,
  }) {
    return Revision._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Revision._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:dataexchange/revision:Revision',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    dataSetId = registerOutput<String>('dataSetId');
    region = registerOutput<String>('region');
    revisionId = registerOutput<String>('revisionId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
