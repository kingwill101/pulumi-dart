// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_get_links_get_links_args_doc}
/// Arguments for getLinks.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_links_get_links_args_doc}
class GetLinksArgs {
  /// ID of the Global Network of the links to retrieve.
  final pulumi.Input<String> globalNetworkId;
  /// Link provider to retrieve.
  final pulumi.Input<String>? providerName;
  /// ID of the site of the links to retrieve.
  final pulumi.Input<String>? siteId;
  /// Restricts the list to the links with these tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Link type to retrieve.
  final pulumi.Input<String>? type;

  /// Creates a new [GetLinksArgs].
  /// [globalNetworkId] ID of the Global Network of the links to retrieve.
  /// [providerName] Link provider to retrieve.
  /// [siteId] ID of the site of the links to retrieve.
  /// [tags] Restricts the list to the links with these tags.
  /// [type] Link type to retrieve.
  GetLinksArgs({
    required String globalNetworkId,
    String? providerName,
    String? siteId,
    Map<String, String>? tags,
    String? type,
  }) :
      globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
      providerName = pulumi.Input.asOptionalInput<String>(providerName),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': globalNetworkId,
      'providerName': ?providerName,
      'siteId': ?siteId,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetLinksArgs.fromMap(Map<String, dynamic> map) {
    return GetLinksArgs(
      globalNetworkId: map['globalNetworkId'] as String,
      providerName: map['providerName'] == null ? null : map['providerName'] as String,
      siteId: map['siteId'] == null ? null : map['siteId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

