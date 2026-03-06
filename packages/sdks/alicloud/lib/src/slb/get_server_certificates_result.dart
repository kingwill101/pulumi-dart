// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_certificates_certificate.dart';

/// Result data returned by getServerCertificates.
class GetServerCertificatesResult {
  /// A list of SLB server certificates. Each element contains the following attributes:
  final List<GetServerCertificatesCertificate> certificates;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of SLB server certificates IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of SLB server certificates names.
  final List<String> names;
  final String? outputFile;
  /// The Id of resource group which the slb server certificates belongs.
  final String? resourceGroupId;
  /// (Available in v1.66.0+) A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetServerCertificatesResult].
  /// [certificates] A list of SLB server certificates. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of SLB server certificates IDs.
  /// [nameRegex] Optional.
  /// [names] A list of SLB server certificates names.
  /// [outputFile] Optional.
  /// [resourceGroupId] The Id of resource group which the slb server certificates belongs.
  /// [tags] (Available in v1.66.0+) A mapping of tags to assign to the resource.
  const GetServerCertificatesResult({
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
      'certificates': pulumi.Input.encodeList<GetServerCertificatesCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetServerCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetServerCertificatesResult(
      certificates: pulumi.Input.decodeList<GetServerCertificatesCertificate>(map['certificates']!, (value) => GetServerCertificatesCertificate.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

