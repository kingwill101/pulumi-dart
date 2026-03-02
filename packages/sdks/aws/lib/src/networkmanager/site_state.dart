// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_location.dart';

/// Input properties used for looking up and filtering Site resources.
class SiteState {
  /// Site ARN.
  final pulumi.Input<String>? arn;
  /// Description of the Site.
  final pulumi.Input<String>? description;
  /// ID of the Global Network to create the site in.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? globalNetworkId;
  /// Site location. See below.
  final pulumi.Input<SiteLocation>? location;
  /// Key-value tags for the Site. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SiteState].
  /// [arn] Site ARN.
  /// [description] Description of the Site.
  /// [globalNetworkId] ID of the Global Network to create the site in.
  /// [location] Site location. See below.
  /// [tags] Key-value tags for the Site. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  SiteState({
    this.arn,
    this.description,
    this.globalNetworkId,
    this.location,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'globalNetworkId': ?globalNetworkId,
      'location': ?pulumi.Input.mapOptionalInputValue<SiteLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SiteState.fromMap(Map<String, dynamic> map) {
    return SiteState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      globalNetworkId: map['globalNetworkId'] == null ? null : (map['globalNetworkId'] as String).input(),
      location: map['location'] == null ? null : (SiteLocation.fromMap((map['location'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

