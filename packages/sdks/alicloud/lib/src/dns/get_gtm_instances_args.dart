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
  const GetGtmInstancesArgs({
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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

