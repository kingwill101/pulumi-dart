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
  const LinkState({
    this.arn,
    this.label,
    this.labelTemplate,
    this.linkConfiguration,
    this.linkId,
    this.region,
    this.resourceTypes,
    this.sinkArn,
    this.sinkIdentifier,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelTemplate: (() { final guardedValue = map['labelTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkConfiguration: (() { final guardedValue = map['linkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkLinkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkId: (() { final guardedValue = map['linkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sinkArn: (() { final guardedValue = map['sinkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sinkIdentifier: (() { final guardedValue = map['sinkIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

