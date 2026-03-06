// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_types_type_handlers.dart';
import 'get_resource_types_type_info.dart';

class GetResourceTypesType {
  /// Create an operation private parameter collection. The attributes are not returned in the resource query operation, but the parameters are required in the creation operation.
  final pulumi.Input<List<String>> createOnlyProperties;
  /// Delete operation private parameter collection. The attribute is not returned in the resource query operation, but the parameter is required in the delete operation.
  final pulumi.Input<List<String>> deleteOnlyProperties;
  /// A collection of attributes that can be used as the filter parameter during the list operation.
  final pulumi.Input<List<String>> filterProperties;
  /// Query operation private parameter collection. The attribute is not returned in the resource query operation, but the input parameter is required in the query operation.
  final pulumi.Input<List<String>> getOnlyProperties;
  /// The collection of properties returned by the query.
  final pulumi.Input<List<String>> getResponseProperties;
  /// Supported resource operation information (including RAM permissions).
  final pulumi.Input<GetResourceTypesTypeHandlers> handlers;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// Basic information about the resource type.
  final pulumi.Input<List<GetResourceTypesTypeInfo>> infos;
  /// Enumerate the operation private parameter collection. The attributes are not returned in the resource query operation, but the parameters that need to be passed in the enumeration operation.
  final pulumi.Input<List<String>> listOnlyProperties;
  /// Enumerates the returned property collection.
  final pulumi.Input<List<String>> listResponseProperties;
  /// Resource ID
  final pulumi.Input<String> primaryIdentifier;
  /// Product Code.
  final pulumi.Input<String> product;
  /// Resource attribute definition, where key is the attribute name and value is the attribute details.
  final pulumi.Input<String> properties;
  /// A collection of public attributes, which are the basic attributes of the resource. Non-Operation private parameters.
  final pulumi.Input<List<String>> publicProperties;
  /// A set of read-only parameters. It is returned only in the list or get Operation. It is not used as an input parameter during creation and change.
  final pulumi.Input<List<String>> readOnlyProperties;
  /// Resource creation required parameter collection.
  final pulumi.Input<List<String>> requireds;
  /// The resource type.
  final pulumi.Input<String> resourceType;
  /// A collection of sensitive attributes, such as passwords.
  final pulumi.Input<List<String>> sensitiveInfoProperties;
  /// Update operation private parameter collection. The attributes are not returned in the resource query operation, but the parameters are required in the update operation.
  final pulumi.Input<List<String>> updateOnlyProperties;
  /// A collection of properties that can be modified.
  final pulumi.Input<List<String>> updateTypeProperties;

  /// Creates a new [GetResourceTypesType].
  /// [createOnlyProperties] Create an operation private parameter collection. The attributes are not returned in the resource query operation, but the parameters are required in the creation operation.
  /// [deleteOnlyProperties] Delete operation private parameter collection. The attribute is not returned in the resource query operation, but the parameter is required in the delete operation.
  /// [filterProperties] A collection of attributes that can be used as the filter parameter during the list operation.
  /// [getOnlyProperties] Query operation private parameter collection. The attribute is not returned in the resource query operation, but the input parameter is required in the query operation.
  /// [getResponseProperties] The collection of properties returned by the query.
  /// [handlers] Supported resource operation information (including RAM permissions).
  /// [id] The ID of the resource supplied above.
  /// [infos] Basic information about the resource type.
  /// [listOnlyProperties] Enumerate the operation private parameter collection. The attributes are not returned in the resource query operation, but the parameters that need to be passed in the enumeration operation.
  /// [listResponseProperties] Enumerates the returned property collection.
  /// [primaryIdentifier] Resource ID
  /// [product] Product Code.
  /// [properties] Resource attribute definition, where key is the attribute name and value is the attribute details.
  /// [publicProperties] A collection of public attributes, which are the basic attributes of the resource. Non-Operation private parameters.
  /// [readOnlyProperties] A set of read-only parameters. It is returned only in the list or get Operation. It is not used as an input parameter during creation and change.
  /// [requireds] Resource creation required parameter collection.
  /// [resourceType] The resource type.
  /// [sensitiveInfoProperties] A collection of sensitive attributes, such as passwords.
  /// [updateOnlyProperties] Update operation private parameter collection. The attributes are not returned in the resource query operation, but the parameters are required in the update operation.
  /// [updateTypeProperties] A collection of properties that can be modified.
  const GetResourceTypesType({
    required this.createOnlyProperties,
    required this.deleteOnlyProperties,
    required this.filterProperties,
    required this.getOnlyProperties,
    required this.getResponseProperties,
    required this.handlers,
    required this.id,
    required this.infos,
    required this.listOnlyProperties,
    required this.listResponseProperties,
    required this.primaryIdentifier,
    required this.product,
    required this.properties,
    required this.publicProperties,
    required this.readOnlyProperties,
    required this.requireds,
    required this.resourceType,
    required this.sensitiveInfoProperties,
    required this.updateOnlyProperties,
    required this.updateTypeProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOnlyProperties': createOnlyProperties,
      'deleteOnlyProperties': deleteOnlyProperties,
      'filterProperties': filterProperties,
      'getOnlyProperties': getOnlyProperties,
      'getResponseProperties': getResponseProperties,
      'handlers': pulumi.Input.mapInputValue<GetResourceTypesTypeHandlers, Map<String, dynamic>>(handlers, (value) => value.toMap()),
      'id': id,
      'infos': pulumi.Input.mapInputValue<List<GetResourceTypesTypeInfo>, List<Map<String, dynamic>>>(infos, (value) => pulumi.Input.encodeList<GetResourceTypesTypeInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listOnlyProperties': listOnlyProperties,
      'listResponseProperties': listResponseProperties,
      'primaryIdentifier': primaryIdentifier,
      'product': product,
      'properties': properties,
      'publicProperties': publicProperties,
      'readOnlyProperties': readOnlyProperties,
      'requireds': requireds,
      'resourceType': resourceType,
      'sensitiveInfoProperties': sensitiveInfoProperties,
      'updateOnlyProperties': updateOnlyProperties,
      'updateTypeProperties': updateTypeProperties,
    };
  }

  factory GetResourceTypesType.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesType(
      createOnlyProperties: pulumi.Input.fromValue((map['createOnlyProperties'] as List).cast<String>()),
      deleteOnlyProperties: pulumi.Input.fromValue((map['deleteOnlyProperties'] as List).cast<String>()),
      filterProperties: pulumi.Input.fromValue((map['filterProperties'] as List).cast<String>()),
      getOnlyProperties: pulumi.Input.fromValue((map['getOnlyProperties'] as List).cast<String>()),
      getResponseProperties: pulumi.Input.fromValue((map['getResponseProperties'] as List).cast<String>()),
      handlers: pulumi.Input.fromValue(GetResourceTypesTypeHandlers.fromMap((map['handlers']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      infos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetResourceTypesTypeInfo>(map['infos']!, (value) => GetResourceTypesTypeInfo.fromMap((value as Map).cast<String, dynamic>()))),
      listOnlyProperties: pulumi.Input.fromValue((map['listOnlyProperties'] as List).cast<String>()),
      listResponseProperties: pulumi.Input.fromValue((map['listResponseProperties'] as List).cast<String>()),
      primaryIdentifier: pulumi.Input.fromValue(map['primaryIdentifier'] as String),
      product: pulumi.Input.fromValue(map['product'] as String),
      properties: pulumi.Input.fromValue(map['properties'] as String),
      publicProperties: pulumi.Input.fromValue((map['publicProperties'] as List).cast<String>()),
      readOnlyProperties: pulumi.Input.fromValue((map['readOnlyProperties'] as List).cast<String>()),
      requireds: pulumi.Input.fromValue((map['requireds'] as List).cast<String>()),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      sensitiveInfoProperties: pulumi.Input.fromValue((map['sensitiveInfoProperties'] as List).cast<String>()),
      updateOnlyProperties: pulumi.Input.fromValue((map['updateOnlyProperties'] as List).cast<String>()),
      updateTypeProperties: pulumi.Input.fromValue((map['updateTypeProperties'] as List).cast<String>()),
    );
  }
}

