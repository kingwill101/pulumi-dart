import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_args.dart';

/// Provides a resource to manage AWS Data Exchange Revisions.
///
/// ## Example Usage
///
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
    this.arn = registerOutput<String>('arn');
    this.comment = registerOutput<String?>('comment');
    this.dataSetId = registerOutput<String>('dataSetId');
    this.region = registerOutput<String>('region');
    this.revisionId = registerOutput<String>('revisionId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
