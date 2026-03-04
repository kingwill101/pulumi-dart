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
    this.arn,
    this.bandwidth,
    this.description,
    this.globalNetworkId,
    this.providerName,
    this.siteId,
    this.tags,
    this.tagsAll,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bandwidth':
          ?pulumi.Input.mapOptionalInputValue<
            LinkBandwidth,
            Map<String, dynamic>
          >(bandwidth, (value) => value.toMap()),
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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bandwidth: (() {
        final guardedValue = map['bandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkBandwidth.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalNetworkId: (() {
        final guardedValue = map['globalNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerName: (() {
        final guardedValue = map['providerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      siteId: (() {
        final guardedValue = map['siteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
