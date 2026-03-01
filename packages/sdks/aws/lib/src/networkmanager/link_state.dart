// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_bandwidth.dart';

/// Input properties used for looking up and filtering Link resources.
class LinkState {
  /// Link ARN.
  final pulumi.Input<String>? arn;
  /// Upload speed and download speed in Mbps. See below.
  final pulumi.Input<LinkBandwidth>? bandwidth;
  /// Description of the link.
  final pulumi.Input<String>? description;
  /// ID of the global network.
  final pulumi.Input<String>? globalNetworkId;
  /// Provider of the link.
  final pulumi.Input<String>? providerName;
  /// ID of the site.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? siteId;
  /// Key-value tags for the link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Type of the link.
  final pulumi.Input<String>? type;

  /// Creates a new [LinkState].
  /// [arn] Link ARN.
  /// [bandwidth] Upload speed and download speed in Mbps. See below.
  /// [description] Description of the link.
  /// [globalNetworkId] ID of the global network.
  /// [providerName] Provider of the link.
  /// [siteId] ID of the site.
  /// [tags] Key-value tags for the link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Type of the link.
  LinkState({
    pulumi.Output<String>? arn,
    pulumi.Output<LinkBandwidth>? bandwidth,
    pulumi.Output<String>? description,
    pulumi.Output<String>? globalNetworkId,
    pulumi.Output<String>? providerName,
    pulumi.Output<String>? siteId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bandwidth = pulumi.Input.asOptionalInput<LinkBandwidth>(bandwidth),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalNetworkId = pulumi.Input.asOptionalInput<String>(globalNetworkId),
      providerName = pulumi.Input.asOptionalInput<String>(providerName),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bandwidth': ?pulumi.Input.mapOptionalInputValue<LinkBandwidth, Map<String, dynamic>>(bandwidth, (value) => value.toMap()),
      'description': ?description,
      'globalNetworkId': ?globalNetworkId,
      'providerName': ?providerName,
      'siteId': ?siteId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory LinkState.fromMap(Map<String, dynamic> map) {
    return LinkState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<LinkBandwidth>(LinkBandwidth.fromMap((map['bandwidth'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      globalNetworkId: map['globalNetworkId'] == null ? null : pulumi.Output.create<String>(map['globalNetworkId'] as String),
      providerName: map['providerName'] == null ? null : pulumi.Output.create<String>(map['providerName'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

