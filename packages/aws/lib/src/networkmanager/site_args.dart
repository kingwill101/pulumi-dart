// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_location.dart';

/// {@template pulumi_networkmanager_site_site_args_doc}
/// The set of arguments for Site.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_site_site_args_doc}
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

  /// Creates a new [SiteArgs].
  /// [description] Description of the Site.
  /// [globalNetworkId] ID of the Global Network to create the site in.
  /// [location] Site location. See below.
  /// [tags] Key-value tags for the Site. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  SiteArgs({
    String? description,
    required String globalNetworkId,
    SiteLocation? location,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
        location = pulumi.Input.asOptionalInput<SiteLocation>(location),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      globalNetworkId: map['globalNetworkId'] as String,
      location: map['location'] == null
          ? null
          : SiteLocation.fromMap(
              (map['location'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
