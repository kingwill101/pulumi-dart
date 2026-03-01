// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ca_certificates_certificate.dart';

/// Result data returned by getCaCertificates.
class GetCaCertificatesResult {
  /// A list of SLB ca certificates. Each element contains the following attributes:
  final List<GetCaCertificatesCertificate> certificates;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of SLB ca certificates IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of SLB ca certificates names.
  final List<String> names;
  final String? outputFile;
  /// The resource group Id of CA certificate.
  final String? resourceGroupId;
  /// (Available in v1.66.0+) A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetCaCertificatesResult].
  /// [certificates] A list of SLB ca certificates. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of SLB ca certificates IDs.
  /// [nameRegex] Optional.
  /// [names] A list of SLB ca certificates names.
  /// [outputFile] Optional.
  /// [resourceGroupId] The resource group Id of CA certificate.
  /// [tags] (Available in v1.66.0+) A mapping of tags to assign to the resource.
  GetCaCertificatesResult({
    required this.certificates,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.encodeList<GetCaCertificatesCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetCaCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetCaCertificatesResult(
      certificates: pulumi.Input.decodeList<GetCaCertificatesCertificate>(map['certificates'], (value) => GetCaCertificatesCertificate.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

