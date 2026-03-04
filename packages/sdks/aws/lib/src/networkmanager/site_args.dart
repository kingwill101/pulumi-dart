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
    this.description,
    required this.globalNetworkId,
    this.location,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'globalNetworkId': globalNetworkId,
      'location':
          ?pulumi.Input.mapOptionalInputValue<
            SiteLocation,
            Map<String, dynamic>
          >(location, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SiteArgs.fromMap(Map<String, dynamic> map) {
    return SiteArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalNetworkId: pulumi.Input.fromValue(map['globalNetworkId'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
