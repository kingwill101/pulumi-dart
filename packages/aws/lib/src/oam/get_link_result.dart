// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_link_link_configuration.dart';

/// Result data returned by getLink.
class GetLinkResult {
  /// ARN of the link.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Label that is assigned to this link.
  final String label;

  /// Human-readable name used to identify this source account when you are viewing data from it in the monitoring account.
  final String labelTemplate;

  /// Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `link_configuration` Block for details.
  final List<GetLinkLinkConfiguration> linkConfigurations;

  /// ID string that AWS generated as part of the link ARN.
  final String linkId;
  final String linkIdentifier;
  final String region;

  /// Types of data that the source account shares with the monitoring account.
  final List<String> resourceTypes;

  /// ARN of the sink that is used for this link.
  final String sinkArn;
  final Map<String, String> tags;

  /// Creates a new [GetLinkResult].
  /// [arn] ARN of the link.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [label] Label that is assigned to this link.
  /// [labelTemplate] Human-readable name used to identify this source account when you are viewing data from it in the monitoring account.
  /// [linkConfigurations] Configuration for creating filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account. See `link_configuration` Block for details.
  /// [linkId] ID string that AWS generated as part of the link ARN.
  /// [linkIdentifier] Required.
  /// [region] Required.
  /// [resourceTypes] Types of data that the source account shares with the monitoring account.
  /// [sinkArn] ARN of the sink that is used for this link.
  /// [tags] Required.
  GetLinkResult({
    required this.arn,
    required this.id,
    required this.label,
    required this.labelTemplate,
    required this.linkConfigurations,
    required this.linkId,
    required this.linkIdentifier,
    required this.region,
    required this.resourceTypes,
    required this.sinkArn,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'label': label,
      'labelTemplate': labelTemplate,
      'linkConfigurations':
          pulumi.Input.encodeList<
            GetLinkLinkConfiguration,
            Map<String, dynamic>
          >(linkConfigurations, (value) => value.toMap()),
      'linkId': linkId,
      'linkIdentifier': linkIdentifier,
      'region': region,
      'resourceTypes': resourceTypes,
      'sinkArn': sinkArn,
      'tags': tags,
    };
  }

  factory GetLinkResult.fromMap(Map<String, dynamic> map) {
    return GetLinkResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      label: map['label'] as String,
      labelTemplate: map['labelTemplate'] as String,
      linkConfigurations: pulumi.Input.decodeList<GetLinkLinkConfiguration>(
        map['linkConfigurations'],
        (value) => GetLinkLinkConfiguration.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      linkId: map['linkId'] as String,
      linkIdentifier: map['linkIdentifier'] as String,
      region: map['region'] as String,
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
      sinkArn: map['sinkArn'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
