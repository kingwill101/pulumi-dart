import 'package:pulumi/pulumi.dart';
import '../link_link_configuration/link_link_configuration.dart';
import 'link_args2.dart';

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
class Link2 extends CustomResource {
  /// ARN of the link.
  late final Output<String> arn;

  /// Label that is assigned to this link.
  late final Output<String> label;

  /// Human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.
  late final Output<String> labelTemplate;

  /// Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `link_configuration` Block for details.
  late final Output<LinkLinkConfiguration?> linkConfiguration;

  /// ID string that AWS generated as part of the link ARN.
  late final Output<String> linkId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Types of data that the source account shares with the monitoring account.
  late final Output<List<String>> resourceTypes;

  /// ARN of the sink that is used for this link.
  late final Output<String> sinkArn;

  /// Identifier of the sink to use to create this link.
  ///
  /// The following arguments are optional:
  late final Output<String> sinkIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Link2(
    String name, {
    LinkArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:oam/link:Link',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
