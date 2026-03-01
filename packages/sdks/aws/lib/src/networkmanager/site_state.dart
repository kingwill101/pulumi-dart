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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? globalNetworkId,
    pulumi.Output<SiteLocation>? location,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalNetworkId = pulumi.Input.asOptionalInput<String>(globalNetworkId),
      location = pulumi.Input.asOptionalInput<SiteLocation>(location),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      globalNetworkId: map['globalNetworkId'] == null ? null : pulumi.Output.create<String>(map['globalNetworkId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<SiteLocation>(SiteLocation.fromMap((map['location'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

