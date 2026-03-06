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
  const GetLinksArgs({
    required this.globalNetworkId,
    this.providerName,
    this.siteId,
    this.tags,
    this.type,
  });

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
      globalNetworkId: pulumi.Input.fromValue(map['globalNetworkId'] as String),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

