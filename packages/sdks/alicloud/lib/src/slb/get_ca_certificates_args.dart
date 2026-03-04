// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_ca_certificates_get_ca_certificates_args_doc}
/// Arguments for getCaCertificates.
/// {@endtemplate}
/// {@macro pulumi_slb_get_ca_certificates_get_ca_certificates_args_doc}
class GetCaCertificatesArgs {
  /// A list of ca certificates IDs to filter results.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by ca certificate name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The Id of resource group which ca certificates belongs.
  final pulumi.Input<String>? resourceGroupId;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetCaCertificatesArgs].
  /// [ids] A list of ca certificates IDs to filter results.
  /// [nameRegex] A regex string to filter results by ca certificate name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The Id of resource group which ca certificates belongs.
  /// [tags] A mapping of tags to assign to the resource.
  GetCaCertificatesArgs({
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

  factory GetCaCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetCaCertificatesArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
