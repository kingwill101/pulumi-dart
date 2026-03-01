// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_versions_product_version.dart';
import 'get_product_versions_version.dart';

/// Result data returned by getProductVersions.
class GetProductVersionsResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Product Version IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Product Versions.
  final List<String> names;
  final String? outputFile;
  final String productId;
  /// A list of Product Version Entries. Each element contains the following attributes:
  final List<GetProductVersionsProductVersion> productVersions;
  final List<GetProductVersionsVersion> versions;

  /// Creates a new [GetProductVersionsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Product Version IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Product Versions.
  /// [outputFile] Optional.
  /// [productId] Required.
  /// [productVersions] A list of Product Version Entries. Each element contains the following attributes:
  /// [versions] Required.
  GetProductVersionsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.productId,
    required this.productVersions,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'productId': productId,
      'productVersions': pulumi.Input.encodeList<GetProductVersionsProductVersion, Map<String, dynamic>>(productVersions, (value) => value.toMap()),
      'versions': pulumi.Input.encodeList<GetProductVersionsVersion, Map<String, dynamic>>(versions, (value) => value.toMap()),
    };
  }

  factory GetProductVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetProductVersionsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      productId: map['productId'] as String,
      productVersions: pulumi.Input.decodeList<GetProductVersionsProductVersion>(map['productVersions'], (value) => GetProductVersionsProductVersion.fromMap((value as Map).cast<String, dynamic>())),
      versions: pulumi.Input.decodeList<GetProductVersionsVersion>(map['versions'], (value) => GetProductVersionsVersion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

