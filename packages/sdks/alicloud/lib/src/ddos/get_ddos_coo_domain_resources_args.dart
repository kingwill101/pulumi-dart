// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ddos_get_ddos_coo_domain_resources_get_ddos_coo_domain_resources_args_doc}
/// Arguments for getDdosCooDomainResources.
/// {@endtemplate}
/// {@macro pulumi_ddos_get_ddos_coo_domain_resources_get_ddos_coo_domain_resources_args_doc}
class GetDdosCooDomainResourcesArgs {
  /// A list of Domain Resource IDs.
  final pulumi.Input<List<String>>? ids;
  /// A ID list of Ddoscoo instance.
  final pulumi.Input<List<String>>? instanceIds;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Match the pattern.
  final pulumi.Input<String>? queryDomainPattern;

  /// Creates a new [GetDdosCooDomainResourcesArgs].
  /// [ids] A list of Domain Resource IDs.
  /// [instanceIds] A ID list of Ddoscoo instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [queryDomainPattern] Match the pattern.
  GetDdosCooDomainResourcesArgs({
    this.ids,
    this.instanceIds,
    this.outputFile,
    this.queryDomainPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceIds': ?instanceIds,
      'outputFile': ?outputFile,
      'queryDomainPattern': ?queryDomainPattern,
    };
  }

  factory GetDdosCooDomainResourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetDdosCooDomainResourcesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceIds: map['instanceIds'] == null ? null : ((map['instanceIds'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      queryDomainPattern: map['queryDomainPattern'] == null ? null : (map['queryDomainPattern'] as String).input(),
    );
  }
}

