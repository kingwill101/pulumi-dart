// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_types_type.dart';

/// Result data returned by getResourceTypes.
class GetResourceTypesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Resource Type IDs.
  final List<String> ids;
  final String? outputFile;
  /// Product Code.
  final String product;
  /// A list of Resource Type Entries. Each element contains the following attributes:
  final List<GetResourceTypesType> types;

  /// Creates a new [GetResourceTypesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Resource Type IDs.
  /// [outputFile] Optional.
  /// [product] Product Code.
  /// [types] A list of Resource Type Entries. Each element contains the following attributes:
  const GetResourceTypesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.product,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'product': product,
      'types': pulumi.Input.encodeList<GetResourceTypesType, Map<String, dynamic>>(types, (value) => value.toMap()),
    };
  }

  factory GetResourceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      product: map['product'] as String,
      types: pulumi.Input.decodeList<GetResourceTypesType>(map['types']!, (value) => GetResourceTypesType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

