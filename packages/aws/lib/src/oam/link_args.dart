// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_link_configuration.dart';

/// {@template pulumi_oam_link_link_args_doc}
/// The set of arguments for Link.
/// {@endtemplate}
/// {@macro pulumi_oam_link_link_args_doc}
class LinkArgs {
  /// Human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.
  final pulumi.Input<String> labelTemplate;
  /// Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `link_configuration` Block for details.
  final pulumi.Input<LinkLinkConfiguration>? linkConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Types of data that the source account shares with the monitoring account.
  final pulumi.Input<List<String>> resourceTypes;
  /// Identifier of the sink to use to create this link.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> sinkIdentifier;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LinkArgs].
  /// [labelTemplate] Human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.
  /// [linkConfiguration] Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `link_configuration` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTypes] Types of data that the source account shares with the monitoring account.
  /// [sinkIdentifier] Identifier of the sink to use to create this link.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LinkArgs({
    required String labelTemplate,
    LinkLinkConfiguration? linkConfiguration,
    String? region,
    required List<String> resourceTypes,
    required String sinkIdentifier,
    Map<String, String>? tags,
  }) :
      labelTemplate = pulumi.Input.asInput<String>(labelTemplate),
      linkConfiguration = pulumi.Input.asOptionalInput<LinkLinkConfiguration>(linkConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceTypes = pulumi.Input.asInput<List<String>>(resourceTypes),
      sinkIdentifier = pulumi.Input.asInput<String>(sinkIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelTemplate': labelTemplate,
      'linkConfiguration': ?pulumi.Input.mapOptionalInputValue<LinkLinkConfiguration, Map<String, dynamic>>(linkConfiguration, (value) => value.toMap()),
      'region': ?region,
      'resourceTypes': resourceTypes,
      'sinkIdentifier': sinkIdentifier,
      'tags': ?tags,
    };
  }

  factory LinkArgs.fromMap(Map<String, dynamic> map) {
    return LinkArgs(
      labelTemplate: map['labelTemplate'] as String,
      linkConfiguration: map['linkConfiguration'] == null ? null : LinkLinkConfiguration.fromMap((map['linkConfiguration'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
      sinkIdentifier: map['sinkIdentifier'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

