// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_link_link_configuration.dart';

/// Result data returned by getLink.
class GetLinkResult {
  /// ARN of the link.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Label that is assigned to this link.
  final String? label;
  /// Human-readable name used to identify this source account when you are viewing data from it in the monitoring account.
  final String? labelTemplate;
  /// Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `linkConfiguration` Block for details.
  final List<GetLinkLinkConfiguration>? linkConfigurations;
  /// ID string that AWS generated as part of the link ARN.
  final String? linkId;
  final String? linkIdentifier;
  final String? region;
  /// Types of data that the source account shares with the monitoring account.
  final List<String>? resourceTypes;
  /// ARN of the sink that is used for this link.
  final String? sinkArn;
  final Map<String, String>? tags;

  /// Creates a new [GetLinkResult].
  /// [arn] ARN of the link.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [label] Label that is assigned to this link.
  /// [labelTemplate] Human-readable name used to identify this source account when you are viewing data from it in the monitoring account.
  /// [linkConfigurations] Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `linkConfiguration` Block for details.
  /// [linkId] ID string that AWS generated as part of the link ARN.
  /// [linkIdentifier] Optional.
  /// [region] Optional.
  /// [resourceTypes] Types of data that the source account shares with the monitoring account.
  /// [sinkArn] ARN of the sink that is used for this link.
  /// [tags] Optional.
  const GetLinkResult({
    this.arn,
    this.id,
    this.label,
    this.labelTemplate,
    this.linkConfigurations,
    this.linkId,
    this.linkIdentifier,
    this.region,
    this.resourceTypes,
    this.sinkArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'label': ?label,
      'labelTemplate': ?labelTemplate,
      'linkConfigurations': ?(() { final guardedValue = linkConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinkLinkConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'linkId': ?linkId,
      'linkIdentifier': ?linkIdentifier,
      'region': ?region,
      'resourceTypes': ?resourceTypes,
      'sinkArn': ?sinkArn,
      'tags': ?tags,
    };
  }

  factory GetLinkResult.fromMap(Map<String, dynamic> map) {
    return GetLinkResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labelTemplate: (() { final guardedValue = map['labelTemplate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkConfigurations: (() { final guardedValue = map['linkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinkLinkConfiguration>(guardedValue, (value) => GetLinkLinkConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      linkId: (() { final guardedValue = map['linkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkIdentifier: (() { final guardedValue = map['linkIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sinkArn: (() { final guardedValue = map['sinkArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
