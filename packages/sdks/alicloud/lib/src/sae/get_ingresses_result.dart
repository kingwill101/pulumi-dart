// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ingresses_ingress.dart';

/// Result data returned by getIngresses.
class GetIngressesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetIngressesIngress> ingresses;
  final String namespaceId;
  final String? outputFile;

  /// Creates a new [GetIngressesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [ingresses] Required.
  /// [namespaceId] Required.
  /// [outputFile] Optional.
  GetIngressesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.ingresses,
    required this.namespaceId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'ingresses': pulumi.Input.encodeList<GetIngressesIngress, Map<String, dynamic>>(ingresses, (value) => value.toMap()),
      'namespaceId': namespaceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetIngressesResult.fromMap(Map<String, dynamic> map) {
    return GetIngressesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ingresses: pulumi.Input.decodeList<GetIngressesIngress>(map['ingresses'], (value) => GetIngressesIngress.fromMap((value as Map).cast<String, dynamic>())),
      namespaceId: map['namespaceId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

