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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? resourceGroupId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'lang': ?lang,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory GetGtmInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetGtmInstancesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
    );
  }
}

