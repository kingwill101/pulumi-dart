// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../site_location/site_location.dart';

/// The set of arguments for Site.
class SiteArgs {
  /// Description of the Site.
  final pulumi.Input<String>? description;

  /// ID of the Global Network to create the site in.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> globalNetworkId;

  /// Site location. See below.
  final pulumi.Input<SiteLocation>? location;

  /// Key-value tags for the Site. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  SiteArgs({
    this.description,
    required this.globalNetworkId,
    this.location,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['globalNetworkId'] = globalNetworkId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = pulumi.Input.mapOptionalInputValue<SiteLocation,
          Map<String, dynamic>>(locationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory SiteArgs.fromMap(Map<String, dynamic> map) {
    return SiteArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      globalNetworkId: pulumi.Input.asInput<String>(map['globalNetworkId']),
      location: pulumi.Input.asOptionalInput<SiteLocation>(map['location']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
