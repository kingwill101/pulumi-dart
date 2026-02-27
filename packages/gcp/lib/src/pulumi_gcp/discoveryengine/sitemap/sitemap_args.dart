// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Sitemap.
class SitemapArgs {
  /// The unique id of the data store.
  final pulumi.Input<String> dataStoreId;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Public URI for the sitemap, e.g. "www.example.com/sitemap.xml".
  final pulumi.Input<String>? uri;

  SitemapArgs({
    required this.dataStoreId,
    required this.location,
    this.project,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataStoreId'] = dataStoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory SitemapArgs.fromMap(Map<String, dynamic> map) {
    return SitemapArgs(
      dataStoreId: pulumi.Input.asInput<String>(map['dataStoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      uri: pulumi.Input.asOptionalInput<String>(map['uri']),
    );
  }
}
