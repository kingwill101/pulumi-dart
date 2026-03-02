// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_get_sites_get_sites_args_doc}
/// Arguments for getSites.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_sites_get_sites_args_doc}
class GetSitesArgs {
  /// ID of the Global Network of the sites to retrieve.
  final pulumi.Input<String> globalNetworkId;
  /// Restricts the list to the sites with these tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSitesArgs].
  /// [globalNetworkId] ID of the Global Network of the sites to retrieve.
  /// [tags] Restricts the list to the sites with these tags.
  GetSitesArgs({
    required this.globalNetworkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': globalNetworkId,
      'tags': ?tags,
    };
  }

  factory GetSitesArgs.fromMap(Map<String, dynamic> map) {
    return GetSitesArgs(
      globalNetworkId: (map['globalNetworkId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

