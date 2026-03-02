// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_server_certificates_get_server_certificates_args_doc}
/// Arguments for getServerCertificates.
/// {@endtemplate}
/// {@macro pulumi_slb_get_server_certificates_get_server_certificates_args_doc}
class GetServerCertificatesArgs {
  /// A list of server certificates IDs to filter results.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by server certificate name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Id of resource group which the slb server certificates belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetServerCertificatesArgs].
  /// [ids] A list of server certificates IDs to filter results.
  /// [nameRegex] A regex string to filter results by server certificate name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The Id of resource group which the slb server certificates belongs.
  /// [tags] A mapping of tags to assign to the resource.
  GetServerCertificatesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetServerCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetServerCertificatesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

