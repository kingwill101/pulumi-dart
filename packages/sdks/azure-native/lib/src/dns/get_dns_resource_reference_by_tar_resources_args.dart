// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_dns_get_dns_resource_reference_by_tar_resources_args_doc}
/// Arguments for getDnsResourceReferenceByTarResources.
/// {@endtemplate}
/// {@macro pulumi_dns_get_dns_resource_reference_by_tar_resources_args_doc}
class GetDnsResourceReferenceByTarResourcesArgs {
  /// A list of references to azure resources for which referencing dns records need to be queried.
  final pulumi.Input<List<SubResource>>? targetResources;

  /// Creates a new [GetDnsResourceReferenceByTarResourcesArgs].
  /// [targetResources] A list of references to azure resources for which referencing dns records need to be queried.
  const GetDnsResourceReferenceByTarResourcesArgs({
    this.targetResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetResources': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(targetResources, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDnsResourceReferenceByTarResourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsResourceReferenceByTarResourcesArgs(
      targetResources: (() { final guardedValue = map['targetResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

