import 'package:pulumi/pulumi.dart' as pulumi;
import '../link_link_configuration/link_link_configuration.dart';
import 'link_oam_args.dart';

/// Resource for managing an AWS CloudWatch Observability Access Manager Link.
///
/// > **NOTE:** Creating an `aws.oam.Link` may sometimes fail if the `aws.oam.SinkPolicy` for the attached `aws.oam.Sink` is not created before the `aws.oam.Link`. To prevent this, declare an explicit dependency using a `depends_on` meta-argument.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Log Group Filtering
///
///
///
/// ### Metric Filtering
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Observability Access Manager Link using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:oam/link:Link example arn:aws:oam:us-west-2:123456789012:link/link-id
/// ```
class LinkOam extends pulumi.CustomResource {
  /// ARN of the link.
  late final pulumi.Output<String> arn;

  /// Label that is assigned to this link.
  late final pulumi.Output<String> label;

  /// Human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.
  late final pulumi.Output<String> labelTemplate;

  /// Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `link_configuration` Block for details.
  late final pulumi.Output<LinkLinkConfiguration?> linkConfiguration;

  /// ID string that AWS generated as part of the link ARN.
  late final pulumi.Output<String> linkId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Types of data that the source account shares with the monitoring account.
  late final pulumi.Output<List<String>> resourceTypes;

  /// ARN of the sink that is used for this link.
  late final pulumi.Output<String> sinkArn;

  /// Identifier of the sink to use to create this link.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> sinkIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  LinkOam(
    String name, {
    LinkOamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:oam/link:Link',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.label = registerOutput<String>('label');
    this.labelTemplate = registerOutput<String>('labelTemplate');
    this.linkConfiguration =
        registerOutput<LinkLinkConfiguration?>('linkConfiguration');
    this.linkId = registerOutput<String>('linkId');
    this.region = registerOutput<String>('region');
    this.resourceTypes = registerOutput<List<String>>('resourceTypes');
    this.sinkArn = registerOutput<String>('sinkArn');
    this.sinkIdentifier = registerOutput<String>('sinkIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
