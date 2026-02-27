// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_link_link_configuration/get_link_link_configuration.dart';

/// Result data returned by getLink.
class GetLinkResult2 {
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

  GetLinkResult2({
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['label'] = label;
    map['labelTemplate'] = labelTemplate;
    map['linkConfigurations'] =
        Input.encodeList<GetLinkLinkConfiguration, Map<String, dynamic>>(
            linkConfigurations, (value) => value.toMap());
    map['linkId'] = linkId;
    map['linkIdentifier'] = linkIdentifier;
    map['region'] = region;
    map['resourceTypes'] = resourceTypes;
    map['sinkArn'] = sinkArn;
    map['tags'] = tags;
    return map;
  }

  factory GetLinkResult2.fromMap(Map<String, dynamic> map) {
    return GetLinkResult2(
      arn: map['arn'] as String,
      id: map['id'] as String,
      label: map['label'] as String,
      labelTemplate: map['labelTemplate'] as String,
      linkConfigurations: Input.decodeList<GetLinkLinkConfiguration>(
          map['linkConfigurations'],
          (value) => GetLinkLinkConfiguration.fromMap(
              (value as Map).cast<String, dynamic>())),
      linkId: map['linkId'] as String,
      linkIdentifier: map['linkIdentifier'] as String,
      region: map['region'] as String,
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
      sinkArn: map['sinkArn'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
