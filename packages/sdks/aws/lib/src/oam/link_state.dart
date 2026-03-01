// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_link_configuration.dart';

/// Input properties used for looking up and filtering Link resources.
class LinkState {
  /// ARN of the link.
  final pulumi.Input<String>? arn;
  /// Label that is assigned to this link.
  final pulumi.Input<String>? label;
  /// Human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.
  final pulumi.Input<String>? labelTemplate;
  /// Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `link_configuration` Block for details.
  final pulumi.Input<LinkLinkConfiguration>? linkConfiguration;
  /// ID string that AWS generated as part of the link ARN.
  final pulumi.Input<String>? linkId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Types of data that the source account shares with the monitoring account.
  final pulumi.Input<List<String>>? resourceTypes;
  /// ARN of the sink that is used for this link.
  final pulumi.Input<String>? sinkArn;
  /// Identifier of the sink to use to create this link.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? sinkIdentifier;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LinkState].
  /// [arn] ARN of the link.
  /// [label] Label that is assigned to this link.
  /// [labelTemplate] Human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.
  /// [linkConfiguration] Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `link_configuration` Block for details.
  /// [linkId] ID string that AWS generated as part of the link ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTypes] Types of data that the source account shares with the monitoring account.
  /// [sinkArn] ARN of the sink that is used for this link.
  /// [sinkIdentifier] Identifier of the sink to use to create this link.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  LinkState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? label,
    pulumi.Output<String>? labelTemplate,
    pulumi.Output<LinkLinkConfiguration>? linkConfiguration,
    pulumi.Output<String>? linkId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? resourceTypes,
    pulumi.Output<String>? sinkArn,
    pulumi.Output<String>? sinkIdentifier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      label = pulumi.Input.asOptionalInput<String>(label),
      labelTemplate = pulumi.Input.asOptionalInput<String>(labelTemplate),
      linkConfiguration = pulumi.Input.asOptionalInput<LinkLinkConfiguration>(linkConfiguration),
      linkId = pulumi.Input.asOptionalInput<String>(linkId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceTypes = pulumi.Input.asOptionalInput<List<String>>(resourceTypes),
      sinkArn = pulumi.Input.asOptionalInput<String>(sinkArn),
      sinkIdentifier = pulumi.Input.asOptionalInput<String>(sinkIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'label': ?label,
      'labelTemplate': ?labelTemplate,
      'linkConfiguration': ?pulumi.Input.mapOptionalInputValue<LinkLinkConfiguration, Map<String, dynamic>>(linkConfiguration, (value) => value.toMap()),
      'linkId': ?linkId,
      'region': ?region,
      'resourceTypes': ?resourceTypes,
      'sinkArn': ?sinkArn,
      'sinkIdentifier': ?sinkIdentifier,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LinkState.fromMap(Map<String, dynamic> map) {
    return LinkState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      labelTemplate: map['labelTemplate'] == null ? null : pulumi.Output.create<String>(map['labelTemplate'] as String),
      linkConfiguration: map['linkConfiguration'] == null ? null : pulumi.Output.create<LinkLinkConfiguration>(LinkLinkConfiguration.fromMap((map['linkConfiguration'] as Map).cast<String, dynamic>())),
      linkId: map['linkId'] == null ? null : pulumi.Output.create<String>(map['linkId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceTypes: map['resourceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['resourceTypes'] as List).cast<String>()),
      sinkArn: map['sinkArn'] == null ? null : pulumi.Output.create<String>(map['sinkArn'] as String),
      sinkIdentifier: map['sinkIdentifier'] == null ? null : pulumi.Output.create<String>(map['sinkIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

