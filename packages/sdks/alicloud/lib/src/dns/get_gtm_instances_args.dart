// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_gtm_instances_get_gtm_instances_args_doc}
/// Arguments for getGtmInstances.
/// {@endtemplate}
/// {@macro pulumi_dns_get_gtm_instances_get_gtm_instances_args_doc}
class GetGtmInstancesArgs {
  /// A list of Gtm Instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// The lang.
  final pulumi.Input<String>? lang;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [GetGtmInstancesArgs].
  /// [ids] A list of Gtm Instance IDs.
  /// [lang] The lang.
  /// [resourceGroupId] The ID of the resource group.
  GetGtmInstancesArgs({
    this.ids,
    this.lang,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'lang': ?lang,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory GetGtmInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetGtmInstancesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
    );
  }
}

