// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'query_parameter_type_struct_types_item_response.dart';

class QueryParameterTypeResponse {
  /// [Optional] The type of the array's elements, if this is an array.
  final QueryParameterTypeResponse arrayType;

  /// [Optional] The types of the fields of this struct, in order, if this is a struct.
  final List<QueryParameterTypeStructTypesItemResponse> structTypes;

  /// [Required] The top level type of this field.
  final String type;

  QueryParameterTypeResponse({
    required this.arrayType,
    required this.structTypes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arrayType'] = arrayType.toMap();
    map['structTypes'] = Input.encodeList<
        QueryParameterTypeStructTypesItemResponse,
        Map<String, dynamic>>(structTypes, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory QueryParameterTypeResponse.fromMap(Map<String, dynamic> map) {
    return QueryParameterTypeResponse(
      arrayType: QueryParameterTypeResponse.fromMap(
          (map['arrayType'] as Map).cast<String, dynamic>()),
      structTypes: Input.decodeList<QueryParameterTypeStructTypesItemResponse>(
          map['structTypes'],
          (value) => QueryParameterTypeStructTypesItemResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
